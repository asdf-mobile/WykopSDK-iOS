//
//  WKRelatedLink.m
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKRelatedLink.h"

@implementation WKRelatedLink

//id	identyfikator linku	int
//url	adres URL linku	uri
//title	tytuł linku	string
//plus18	link dla dorosłych	bool
//vote_count	ilość głosów	int
//entry_count	ilość wejść z linka (dla linków trackback)	int
//user_vote	głos zalogowanego użytkownika (+1 / -1 / null jeśli brak głosu)	int
//author	login dodającego	string
//author_avatar	avatar autora	uri
//author_avatar_med	avatar autora (średni rozmiar)	uri
//author_avatar_lo	avatar autora (mały rozmiar)	uri
//author_group	grupa autora	int
//link	link do którego dodany jest link powiązany (występuje tylko w metodzie profile/related)	Link

#pragma mark - Initialization

- (instancetype)initWithJSONDictionary:(NSDictionary*)dictionary
{
    self = [super initWithJSONDictionary:dictionary];
    if (self) {
        
    }
    return self;
}


@end
