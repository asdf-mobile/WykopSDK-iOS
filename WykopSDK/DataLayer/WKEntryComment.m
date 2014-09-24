//
//  WKEntryComment.m
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKEntryComment.h"

@implementation WKEntryComment

//id	Identyfikator komentarza	int
//author	Autor komentarza	string
//author_avatar	Avatar autora	uri
//author_avatar_med	Avatar autora (średni rozmiar)	uri
//author_avatar_lo	Avatar autora (mały rozmiar)	uri
//author_group	Grupa autora	int
//date	Data dodania komentarza	date
//body	Treść komentarza	string
//vote_count	liczba głosów	int
//user_vote	głos oddany przez użytkownika	int
//voters	tablica głosujących użytkowników	tablica obiektów typu dig
//embed	obrazek lub film dołączony do obiektu	embed
//entry	wpis do którego dodany jest komentarz (występuje tylko w metodzie profile/entriescomments)	Entry

#pragma mark - Initialization

- (instancetype)initWithJSONDictionary:(NSDictionary*)dictionary
{
    self = [super initWithJSONDictionary:dictionary];
    if (self) {
        
    }
    return self;
}

@end
