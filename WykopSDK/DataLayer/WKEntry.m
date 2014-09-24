//
//  WKEntry.m
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKEntry.h"

@implementation WKEntry

//id	Identyfikator wpisu	int
//author	Autor wpisu	string
//author_avatar	Avatar autora	uri
//author_avatar_med	Avatar autora (średni rozmiar)	uri
//author_avatar_lo	Avatar autora (mały rozmiar)	uri
//author_group	Grupa autora	uri
//date	Data dodania wpisu	date
//body	Treść wpisu	string
//url	Adres wpisu	uri
//receiver	Odbiorca	string
//receiver_avatar	Avatar odbiorcy	uri
//receiver_avatar_med	Avatar odbiorcy (średni rozmiar)	uri
//receiver_avatar_lo	Avatar odbiorcy (mały rozmiar)	uri
//receiver_group	Grupa odbiorcy	int
//comments	Tablica komentarzy do wpisu	entrycomment
//vote_count	liczba głosów	int
//user_vote	głos oddany przez użytkownika	int
//voters	tablica głosujących użytkowników	tablica obiektów typu dig
//user_favorite	true, jeśli użytkownik dodał wpis do ulubionych	bool
//embed	obrazek lub film dołączony do obiektu	embed

#pragma mark - Initialization

- (instancetype)initWithJSONDictionary:(NSDictionary*)dictionary
{
    self = [super initWithJSONDictionary:dictionary];
    if (self) {
        
    }
    return self;
}

@end
