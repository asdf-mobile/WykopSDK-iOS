//
//  WKRequest.m
//  WykopSDK
//
//  Created by Szymon Kuczur on 20.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKRequest.h"

#import <CommonCrypto/CommonDigest.h>

#import "WKWykop.h"

@interface WKRequest ()

@property (copy, nonatomic, readwrite) NSString *resourceId;
@property (copy, nonatomic, readwrite) NSString *method;

@property (strong, nonatomic) NSArray *parameters;

@end

NSString * const WKRequestAPIURL = @"http://a.wykop.pl/";

NSString * const WKRequestAplicationKeyParameterName = @"appkey";
NSString * const WKRequestRequestSigningHeader = @"apisign";

@implementation WKRequest

#pragma mark - Initialization

- (instancetype)initWithResourceId:(NSString*)resourceId method:(NSString*)method
{
    self = [super init];
    if (self) {
        self.resourceId = resourceId;
        self.method = method;
    }
    return self;
}

#pragma mark - Parameters

- (void)setParameters:(NSArray*)parameters;
{
    _parameters = [parameters copy];
}

#pragma mark - Signing

- (NSString*)signString
{
    NSMutableString *signString = [NSMutableString string];
    // Sign should look like this:
    // md5(SECRET + URL + ALPHABETICAL_POST_PARAMETERS_VALUE)

    // Secret
    [signString appendString:[WKWykop sharedInstance].secret];
    
    // URL
    [signString appendString:[self requestURL].absoluteString];
    
    // POST VALUES
    NSPredicate *postParametersPredicate = [NSPredicate predicateWithFormat:@"type = %i",WKParameterTypePOST];
    NSArray *postParameters = [self.parameters filteredArrayUsingPredicate:postParametersPredicate];
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"value" ascending:YES];
    postParameters = [postParameters sortedArrayUsingDescriptors:@[sortDescriptor]];
    
    for (WKParameter *parameter in postParameters) {
        if (![parameter.value isKindOfClass:[NSString class]]) continue;
        [signString appendFormat:@"%@,",parameter.value];
    }
    // remove last comma
    if ([postParameters count]) {
        [signString deleteCharactersInRange:NSMakeRange([signString length]-1, 1)];
    }
    
    return signString;
}

- (NSString*)sign
{
    const char *ptr = [[self signString] UTF8String];

    unsigned char md5Buffer[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(ptr, (CC_LONG)strlen(ptr), md5Buffer);
    
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x",md5Buffer[i]];
    
    return output;
}

#pragma mark - Generating URL

- (NSURL*)requestURL
{
    NSMutableString *urlString = [NSMutableString string];
    
    [urlString appendString:WKRequestAPIURL];
    [urlString appendString:self.resourceId];
    if (self.method) {
        [urlString appendFormat:@"/%@",self.method];
    }
    
    NSPredicate *urlParametersPredicate = [NSPredicate predicateWithFormat:@"type = %i",WKParameterTypeURL];
    NSArray *urlParameters = [self.parameters filteredArrayUsingPredicate:urlParametersPredicate];
    for (WKParameter *parameter in urlParameters) {
        if (![parameter.value isKindOfClass:[NSString class]]) continue;
        if (!parameter.name || [parameter.name isEqualToString:@""]) {
            [urlString appendFormat:@"/%@",parameter.value];
        } else {
            [urlString appendFormat:@"/%@/%@",parameter.name, parameter.value];
        }
        
    }
    
    [urlString appendFormat:@"/%@,%@",WKRequestAplicationKeyParameterName,[WKWykop sharedInstance].apiKey];
    
#pragma message "Check for logged in user and append after imlementing WKUser object"
    NSURL *url = [NSURL URLWithString:urlString];
    return url;
}

#pragma mark - Running Request

- (void)performAsynchronouslyOnCompletion:(WKRequestCompletionBlock)onCompletion
{
    NSURLSessionConfiguration *sessionConfig =
    [NSURLSessionConfiguration defaultSessionConfiguration];
    
    [sessionConfig setHTTPAdditionalHeaders:@{WKRequestRequestSigningHeader: [self sign]}];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfig];
    NSLog(@"WykopSDK sending request to: %@",[self requestURL].absoluteString);
    
    [[session dataTaskWithURL:[self requestURL]
            completionHandler:^(NSData *data,
                                NSURLResponse *response,
                                NSError *error) {
                if (error) {
                    onCompletion(nil,error);
                    return;
                }
                NSError *jsonError = nil;
                id result = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
                if (jsonError) {
                    onCompletion(nil, jsonError);
                }
                onCompletion(result, nil);
            }] resume];
}

@end
