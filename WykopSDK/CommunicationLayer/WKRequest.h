//
//  WKRequest.h
//  WykopSDK
//
//  Created by Szymon Kuczur on 20.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "WKParameter.h"

typedef void (^WKRequestCompletionBlock)(id result, NSError *error);

@interface WKRequest : NSObject

@property (copy, nonatomic, readonly) NSString *resourceId;
@property (copy, nonatomic, readonly) NSString *method;

- (instancetype)initWithResourceId:(NSString*)resourceId method:(NSString*)method;

- (void)setParameters:(NSArray*)parameters;

- (void)performAsynchronouslyOnCompletion:(WKRequestCompletionBlock)onCompletion;

@end
