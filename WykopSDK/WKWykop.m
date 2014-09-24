//
//  WKWykop.m
//  WykopSDK
//
//  Created by Szymon Kuczur on 20.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import "WKWykop.h"

@implementation WKWykop

#pragma mark - Singelton Pattern

+ (WKWykop*)sharedInstance
{
    static WKWykop *sharedInstnce;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstnce = [[WKWykop alloc] init];
    });
    
    return sharedInstnce;
}

@end
