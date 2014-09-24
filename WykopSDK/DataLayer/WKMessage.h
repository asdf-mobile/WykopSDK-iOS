//
//  WKMessage.h
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKObject.h"

@class WKUser;

@interface WKMessage : WKObject

@property (strong, nonatomic, readonly) WKUser *user;
@property (copy, nonatomic, readonly) NSDate *date;
@property (copy, nonatomic, readonly) NSString *body;
@property (copy, nonatomic, readonly) NSString *status;
@property (copy, nonatomic, readonly) NSString *direction;

@end
