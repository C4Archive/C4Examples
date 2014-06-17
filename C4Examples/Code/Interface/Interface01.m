//
//  Interface01.m
//  C4Examples
//
//  Created by travis on 2014-06-17.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Interface01.h"

@implementation Interface01

-(void)setup {
    C4Button *button = [C4Button buttonWithType:ROUNDEDRECT];
    // You can also use these other types: DETAILDISCLOSURE, INFOLIGHT, INFODARK, CONTACTADD
    button.center = self.canvas.center;
    [self.canvas addControl:button];
}

@end
