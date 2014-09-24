//
//  WKComment.m
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKComment.h"

@implementation WKComment

//id	identyfikator komentarza	int
//date	data komentarza	date
//author	autor komentarza	string
//author_avatar	avatar autora	uri
//author_avatar_med	avatar autora (średni rozmiar)	uri
//author_avatar_lo	avatar autora (mały rozmiar)	uri
//author_group	grupa autora	int
//vote_count	liczba głosów	int
//body	treść	string
//parent_id	identyfikator komentarza nadrzędnego	int
//status	Status komentarza (own/new/readed)	string
//embed	obrazek lub film dołączony do obiektu	embed
//link	link do którego dodany jest komentarz (występuje tylko w metodzie profile/comments)	Link

#pragma mark - Initialization

- (instancetype)initWithJSONDictionary:(NSDictionary*)dictionary
{
    self = [super initWithJSONDictionary:dictionary];
    if (self) {
        
    }
    return self;
}


@end
