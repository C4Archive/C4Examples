//
//  Interface05.m
//  C4Examples
//
//  Created by travis on 2014-06-17.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Interface05.h"

@implementation Interface05

-(void)setup {
    C4Slider *slider = [C4Slider slider:CGRectMake(0, 0, 300, 44)];
    slider.center = self.canvas.center;
    [self.canvas addControl:slider];
}

@end
