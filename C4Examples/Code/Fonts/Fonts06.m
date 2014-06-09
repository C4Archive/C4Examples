//
//  Fonts06.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Fonts06.h"

@implementation Fonts06

-(void)setup {
    //will print to the console ALL the family names of availble fonts
    NSArray *familyNames = [C4Font familyNames];
    
    for(NSString *familyName in familyNames) {
        NSArray *fontNames = [C4Font fontNamesForFamilyName:familyName];
        for (NSString *s in fontNames) {
            C4Log(s);
        }
    }
}

@end
