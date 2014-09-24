//
//  WKEmbed.m
//  WykopSDK
//
//  Created by Szymon Kuczur on 24.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKEmbed.h"

@implementation WKEmbed

//type	image lub video	string
//preview	miniatura obrazka lub filmu	uri
//url	obrazek w pełnym rozmiarze lub filmu	uri
//source	źródło w postaci nazwy pliku lub adresu źródłowego	string/uri
//plus18	treść dla dorosłych	bool

#pragma mark - Initialization

- (instancetype)initWithJSONDictionary:(NSDictionary*)dictionary
{
    self = [super initWithJSONDictionary:dictionary];
    if (self) {
        
    }
    return self;
}

@end
