//
//  WKNotification.m
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKNotification.h"

@implementation WKNotification

//author	Autor komentarza	string
//author_avatar	Avatar autora	uri
//author_avatar_med	Avatar autora (średni rozmiar)	uri
//author_avatar_lo	Avatar autora (mały rozmiar)	uri
//author_group	Grupa autora	int
//date	Data dodania powiadomienia	date
//body	Treść powiadomienia	string
//type	Typ powiadomienia	string
//entry	Informacja o wpisie	array
//link	Informacja o linku	link
//comment	Informacja o komentarzu	array
//new	Czy przeczytane	bool
//url	URL do powiązanej akcji (np. konwersacji z prywatnych wiadomości czy odpowiedzi na zgłoszenie)	uri

#pragma mark - Initialization

- (instancetype)initWithJSONDictionary:(NSDictionary*)dictionary
{
    self = [super initWithJSONDictionary:dictionary];
    if (self) {
        
    }
    return self;
}


@end
