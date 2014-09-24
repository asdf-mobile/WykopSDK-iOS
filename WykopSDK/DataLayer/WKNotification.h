//
//  WKNotification.h
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKObject.h"

@class WKUser;
@class WKLink;

@interface WKNotification : WKObject

@property (strong, nonatomic, readonly) WKUser *author;
@property (copy, nonatomic, readonly) NSDate *date;
@property (copy, nonatomic, readonly) NSString *body;
//needs luvin
@property (copy, nonatomic, readonly) NSDate *type;
@property (strong, nonatomic, readonly) NSArray *entry; //probably should be entry object
@property (strong, nonatomic, readonly) WKLink *link;
@property (strong, nonatomic, readonly) NSArray *comment; //probably comment object
@property (assign, nonatomic, readonly) BOOL isNew;
@property (copy, nonatomic, readonly) NSURL *url;

@end
