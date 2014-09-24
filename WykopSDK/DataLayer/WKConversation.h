//
//  WKConversation.h
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKObject.h"

@class WKUser;

@interface WKConversation : WKObject

@property (copy, nonatomic, readonly) NSDate *lastUpdate;
@property (strong, nonatomic, readonly) WKUser *author;
@property (copy, nonatomic, readonly) NSString *status;

@end
