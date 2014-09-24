//
//  WKRequestSpecs.m
//  WykopSDK
//
//  Created by Szymon Kuczur on 20.09.2014.
//  Copyright (c) 2014 asdf-mobile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Kiwi.h"

#import "WKRequest.h"

SPEC_BEGIN(WykopRequest);

NSString * const WKRequestTestResourceId = @"resourceId";
NSString * const WKRequestTestMethod = @"method";

describe(@"WKRequest", ^{
    
    it(@"should have saved resource", ^{
        WKRequest *request = [[WKRequest alloc] initWithResourceId:WKRequestTestResourceId
                                                            method:WKRequestTestMethod];
        [[theValue([request.resourceId isEqualToString:WKRequestTestResourceId]) should] equal:@YES];
    });
    
    it(@"should have saved method", ^{
        WKRequest *request = [[WKRequest alloc] initWithResourceId:WKRequestTestResourceId
                                                            method:WKRequestTestMethod];
        [[theValue([request.method isEqualToString:WKRequestTestMethod]) should] equal:@YES];
    });
});

SPEC_END
