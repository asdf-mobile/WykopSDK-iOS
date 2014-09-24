//
//  WKUser.h
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKObject.h"

@interface WKUser : WKObject

@property (copy, nonatomic, readonly) NSString *username;
@property (copy, nonatomic, readonly) NSURL *avatarURL;
@property (copy, nonatomic, readonly) NSURL *mediumAvatarURL;
@property (copy, nonatomic, readonly) NSURL *smallAvatarURL;
@property (copy, nonatomic, readonly) NSURL *userGroup;
@property (copy, nonatomic, readonly) NSString *userSex;

@end
