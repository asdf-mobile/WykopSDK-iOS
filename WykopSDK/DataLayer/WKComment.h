//
//  WKComment.h
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKObject.h"

@class WKUser;
@class WKEmbed;
@class WKLink;

@interface WKComment : WKObject

@property (assign, nonatomic, readonly) NSInteger commentId;
@property (copy, nonatomic, readonly) NSDate *date;
@property (assign, nonatomic, readonly) WKUser *author;
@property (assign, nonatomic, readonly) NSInteger voteCount;
@property (copy, nonatomic, readonly) NSString *body;
@property (assign, nonatomic, readonly) NSInteger parentCommentId;
//Needs some love!
@property (copy, nonatomic, readonly) NSString *status;
@property (strong, nonatomic, readonly) WKEmbed *embed;
@property (strong, nonatomic, readonly) WKLink *link;

@end
