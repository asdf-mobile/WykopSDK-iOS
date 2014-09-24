//
//  WKParameter.h
//  WykopSDK
//
//  Created by Szymon Kuczur on 20.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, WKParameterType)
{
    WKParameterTypeURL,
    WKParameterTypePOST,
};

@interface WKParameter : NSObject

@property (copy, nonatomic, readonly) NSString *name;
@property (strong, nonatomic, readonly) id value;

@property (assign, nonatomic, readonly) WKParameterType type;

+ (WKParameter*)parameterWithName:(NSString*)name stringValue:(NSString*)value;
+ (WKParameter*)POSTparameterWithName:(NSString*)name stringValue:(NSString*)value;

@end
