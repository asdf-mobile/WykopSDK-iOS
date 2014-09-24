//
//  WKConversation.m
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKConversation.h"

@implementation WKConversation

//last_update	Data ostatniej wiadomości	date
//author_avatar	Avatar autora	uri
//author_avatar_med	Avatar autora (średni rozmiar)	uri
//author_avatar_lo	Avatar autora (mały rozmiar)	uri
//author_group	Grupa autora	int
//author_sex	Płeć autora	string
//status	Status wiadomości	string (new, read)

#pragma mark - Initialization

- (instancetype)initWithJSONDictionary:(NSDictionary*)dictionary
{
    self = [super initWithJSONDictionary:dictionary];
    if (self) {
        
    }
    return self;
}

@end
