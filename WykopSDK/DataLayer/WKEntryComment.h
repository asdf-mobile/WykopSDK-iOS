//
//  WKEntryComment.h
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKObject.h"

@class WKUser;
@class WKEntry;
@class WKEmbed;

@interface WKEntryComment : WKObject

@property (assign, nonatomic, readonly) NSInteger commentId;
@property (assign, nonatomic, readonly) WKUser *author;
@property (copy, nonatomic, readonly) NSDate *date;
@property (copy, nonatomic, readonly) NSString *body;
@property (assign, nonatomic, readonly) NSInteger voteCount;
@property (assign, nonatomic, readonly) NSInteger userVote;
@property (strong, nonatomic, readonly) NSOrderedSet *voters;
@property (strong, nonatomic, readonly) WKEmbed *embed;
@property (strong, nonatomic, readonly) WKEntry *link;

@end
