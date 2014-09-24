//
//  WKEntry.h
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKObject.h"

@class WKEmbed;

@interface WKEntry : WKObject

@property (assign, nonatomic, readonly) NSInteger entryId;
@property (strong, nonatomic, readonly) WKObject *user;
@property (copy, nonatomic, readonly) NSDate *date;
@property (copy, nonatomic, readonly) NSURL *url;
@property (strong, nonatomic, readonly) WKObject *receiver;
@property (strong, nonatomic, readonly) NSOrderedSet *comments;
@property (assign, nonatomic, readonly) NSInteger voteCount;
@property (assign, nonatomic, readonly) NSInteger userVote;
@property (strong, nonatomic, readonly) NSOrderedSet *voters;
@property (assign, nonatomic, readonly) BOOL userFavorite;
@property (strong, nonatomic, readonly) WKEmbed *embed;

@end
