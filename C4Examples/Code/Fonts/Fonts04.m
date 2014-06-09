//
//  Fonts04.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Fonts04.h"

@implementation Fonts04

-(void)setup {
    //will print to the console ALL the family names of availble fonts
    NSArray *familyNames = [C4Font familyNames];
    
    for(NSString *s in familyNames) {
        C4Log(s);
    }
}

@end
