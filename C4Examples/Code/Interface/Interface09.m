//
//  Interface09.m
//  C4Examples
//
//  Created by travis on 2014-06-17.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Interface09.h"

@implementation Interface09

-(void)setup {
    C4Switch *aSwitch = [C4Switch switch];
    aSwitch.center = self.canvas.center;
    [self.canvas addControl:aSwitch];
}

@end
