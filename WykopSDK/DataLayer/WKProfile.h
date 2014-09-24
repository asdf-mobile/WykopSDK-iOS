//
//  WKProfile.h
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKObject.h"

@class WKUser;

@interface WKProfile : WKObject

@property (strong, nonatomic, readonly) WKUser *user;
@property (copy, nonatomic, readonly) NSString *email;
@property (copy, nonatomic, readonly) NSString *public_email;
@property (copy, nonatomic, readonly) NSString *name;
@property (copy, nonatomic, readonly) NSURL *www;
@property (copy, nonatomic, readonly) NSString *jabber;
@property (assign, nonatomic, readonly) NSInteger gg;
@property (copy, nonatomic, readonly) NSString *city;
@property (copy, nonatomic, readonly) NSString *about;
@property (assign, nonatomic, readonly) NSInteger addedLinksCount;
@property (assign, nonatomic, readonly) NSInteger publishedLinksCount;
@property (assign, nonatomic, readonly) NSInteger commentCount;
@property (assign, nonatomic, readonly) NSInteger rankingPosition;
@property (assign, nonatomic, readonly) NSInteger followersCount;
@property (assign, nonatomic, readonly) NSInteger followingCount;
@property (assign, nonatomic, readonly) NSInteger entriesCount;
@property (assign, nonatomic, readonly) NSInteger entriesCommentsCount;
@property (assign, nonatomic, readonly) NSInteger diggsCount;
@property (assign, nonatomic, readonly) NSInteger buriesCount;
@property (assign, nonatomic, readonly) NSInteger relatedLinksCount;
@property (assign, nonatomic, readonly) NSInteger groupsCount;
@property (assign, nonatomic, readonly) BOOL isObserved;

@end
