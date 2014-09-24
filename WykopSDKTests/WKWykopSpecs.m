//
//  WKWykopSpecs.m
//  WykopSDK
//
//  Created by Szymon Kuczur on 20.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Kiwi.h"

#import "WKWykop.h"

SPEC_BEGIN(Wykop);

describe(@"WKWykop", ^{
    
    it(@"should return shared instance", ^{
        WKWykop *wykop = [WKWykop sharedInstance];
        [[wykop shouldNot] equal:nil];
    });
    
    it(@"should always return the same instance", ^{
        WKWykop *wykop1 = [WKWykop sharedInstance];
        WKWykop *wykop2 = [WKWykop sharedInstance];
        [[theValue([wykop1 isEqual:wykop2]) should] equal:@YES];
    });
    
});

SPEC_END