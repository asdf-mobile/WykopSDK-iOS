//
//  WKEmbed.h
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKObject.h"

@interface WKEmbed : WKObject

@property (copy, nonatomic, readonly) NSString *type;
@property (copy, nonatomic, readonly) NSURL *previewURL;
@property (copy, nonatomic, readonly) NSURL *url;
@property (copy, nonatomic, readonly) NSString *source;
@property (assign, nonatomic, readonly) BOOL hasAdultContent;

@end
