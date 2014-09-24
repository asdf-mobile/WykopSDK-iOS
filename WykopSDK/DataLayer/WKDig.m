//
//  WKDig.m
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKDig.h"

@implementation WKDig

//reason	identyfikator powodu zakopu	int
//author	autor	string
//author_avatar	avatar autora	uri
//author_avatar_med	avatar autora (średni rozmiar)	uri
//author_avatar_lo	avatar autora (mały rozmiar)	uri
//author_group	grupa autora	int

#pragma mark - Initialization

- (instancetype)initWithJSONDictionary:(NSDictionary*)dictionary
{
    self = [super initWithJSONDictionary:dictionary];
    if (self) {
        
    }
    return self;
}

@end
