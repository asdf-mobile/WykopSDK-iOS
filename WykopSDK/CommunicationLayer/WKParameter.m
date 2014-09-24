//
//  WKParameter.m
//  WykopSDK
//
//  Created by Szymon Kuczur on 20.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKParameter.h"

@interface WKParameter ()

@property (copy, nonatomic, readwrite) NSString *name;
@property (strong, nonatomic, readwrite) id value;

@property (assign, nonatomic, readwrite) WKParameterType type;

@end

@implementation WKParameter

#pragma mark - Object Creation

+ (WKParameter*)parameterWithName:(NSString*)name stringValue:(NSString*)value
{
    WKParameter *parameter = [[WKParameter alloc] init];
    parameter.name = name;
    parameter.value = value;
    parameter.type = WKParameterTypeURL;
    
    return parameter;
}

+ (WKParameter*)POSTparameterWithName:(NSString*)name stringValue:(NSString*)value
{
    WKParameter *parameter = [WKParameter parameterWithName:name
                                                stringValue:value];
    parameter.type = WKParameterTypePOST;
    return parameter;
}

@end
