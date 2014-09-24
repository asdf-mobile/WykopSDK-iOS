//
//  WKDig.h
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKObject.h"

@class WKUser;

@interface WKDig : WKObject

@property (assign, nonatomic, readonly) NSInteger reason;
@property (assign, nonatomic, readonly) WKUser *user;

@end
