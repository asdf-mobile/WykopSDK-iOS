//
//  WKProfile.m
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKProfile.h"

@implementation WKProfile

//login	login użytkownika	string
//email	zakodowany adres email rejestracji konta	string
//public_email	publiczny adres email	string
//name	imię i nazwisko	string
//www	strona domowa	uri
//jabber	komunikator jabber	string
//gg	numer gadu gadu	int
//city	miasto	string
//about	pole o użytkowniku	string
//author_group	grupa użytkownika	int
//links_added	ilość linków dodanych	int
//links_published	ilość linków opublikowanych	int
//comments	ilość komentarzy	int
//rank	pozycja w rankingu	int
//followers	ilość użytkowników obserwujących	int
//following	ilość użytkowników obserwowanych	int
//entries	ilość wpisów	int
//entries_comments	ilość komentarzy do wpisów	int
//diggs	ilość linków wykopanych	int
//buries	ilość linków zakopanych	int
//related_links	ilość linków powiązanych	int
//groups	ilość grup których użytkownik jest członkiem	int
//avatar	avatar	uri
//avatar_lo	avatar (mały rozmiar)	uri
//avatar_med	avatar (średni rozmiar)	uri
//avatar_big	avatar (duży rozmiar)	uri
//is_observed	czy aktualny użytkownik obserwuje tego użytkownika	bool

#pragma mark - Initialization

- (instancetype)initWithJSONDictionary:(NSDictionary*)dictionary
{
    self = [super initWithJSONDictionary:dictionary];
    if (self) {
        
    }
    return self;
}

@end
