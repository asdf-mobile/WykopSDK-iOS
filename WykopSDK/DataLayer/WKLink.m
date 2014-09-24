//
//  WKLink.m
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKLink.h"

@implementation WKLink

//id	identyfikator linka	int
//title	tytuł linka	string
//description	opis	string
//tags	tagi	string
//url	adres url w serwisie wykop.pl	uri
//source_url	adres źródłowy	uri
//vote_count	liczba głosów	int
//comment_count	liczba komentarzy	int
//report_count	liczba zakopów	int
//date	data dodania	date
//author	login dodającego	string
//author_avatar	avatar autora	uri
//author_avatar_med	avatar autora (średni rozmiar)	uri
//author_avatar_lo	avatar autora (mały rozmiar)	uri
//author_group	grupa autora	int
//preview	miniatura	uri
//user_lists	listy ulubionych na których znajduje się link	int[]
//plus18	link dla dorosłych	bool
//status
//can_vote	czy uzytkownik może głosować	bool
//has_own_content	czy link ma treść	bool
//category	domena grupy	string
//Poniżesz pola zostaną wypełnione jeśli do pytania o link lub listę linków zostanie dołożony userkey
//user_vote	dig jeśli użytkownik wykopał ten link, lub bury, jeśli zakopał	string
//user_observe	true, jeśli użytkownik obserwuje ten link	bool
//user_favorite	true, jeśli użytkownik dodał link do ulubionych	bool

#pragma mark - Initialization

- (instancetype)initWithJSONDictionary:(NSDictionary*)dictionary
{
    self = [super initWithJSONDictionary:dictionary];
    if (self) {
        
    }
    return self;
}

@end
