//
//  Control09.m
//  C4Examples
//
//  Created by travis on 2014-06-11.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control09.h"

@implementation Control09

-(void)setup {
    C4Shape *s = [C4Shape ellipse:CGRectMake(0, 0, 240, 240)];
    s.lineWidth = 50;
    s.center = self.canvas.center;
    s.masksToBounds = YES;
    [self.canvas addControl:s];
}

@end
