//
//  WKRelatedLink.h
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKObject.h"

@class WKLink;
@class WKUser;

@interface WKRelatedLink : WKObject

@property (assign, nonatomic, readonly) NSInteger linkId;
@property (copy, nonatomic, readonly) NSURL *url;
@property (copy, nonatomic, readonly) NSString *title;
@property (assign, nonatomic, readonly) BOOL hasAdultContent;
@property (assign, nonatomic, readonly) NSInteger voteCount;
@property (assign, nonatomic, readonly) NSInteger entryCount;
@property (assign, nonatomic, readonly) NSInteger userVote;
@property (strong, nonatomic, readonly) WKUser *author;
@property (strong, nonatomic, readonly) WKLink *link;


@end
