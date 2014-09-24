//
//  WKLink.h
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKObject.h"

@class WKUser;

@interface WKLink : WKObject

@property (assign, nonatomic, readonly) NSInteger linkId;
@property (copy, nonatomic, readonly) NSString *title;
@property (copy, nonatomic, readonly) NSString *description;
@property (copy, nonatomic, readonly) NSString *tags;
@property (copy, nonatomic, readonly) NSURL *url;
@property (copy, nonatomic, readonly) NSURL *source_url;
@property (assign, nonatomic, readonly) NSInteger voteCount;
@property (assign, nonatomic, readonly) NSInteger commentCount;
@property (assign, nonatomic, readonly) NSInteger reportedCount;
@property (copy, nonatomic, readonly) NSDate *date;
@property (strong, nonatomic, readonly) WKUser *author;
@property (copy, nonatomic, readonly) NSURL *previewImageURL;
@property (strong, nonatomic, readonly) NSArray *userLists;
@property (assign, nonatomic, readonly) BOOL hasAdultContent;
//status?
@property (assign, nonatomic, readonly) BOOL canVote;
@property (assign, nonatomic, readonly) BOOL hasOwnContent;
//needs some lovin
@property (copy, nonatomic, readonly) NSString *userVote;
@property (assign, nonatomic, readonly) BOOL isObserved;
@property (assign, nonatomic, readonly) BOOL isFavourite;

@end
