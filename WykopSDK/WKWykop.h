//
//  WKWykop.h
//  WykopSDK
//
//  Created by Szymon Kuczur on 20.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WKWykop : NSObject

@property (copy, nonatomic) NSString *apiKey;
@property (copy, nonatomic) NSString *secret;

+ (WKWykop*)sharedInstance;

@end
