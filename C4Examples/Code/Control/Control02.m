//
//  Control02.m
//  C4Examples
//
//  Created by travis on 2014-06-11.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control02.h"

@implementation Control02

-(void)setup {
    C4Shape *circle = [C4Shape ellipse:CGRectMake(0, 0, 200, 200)];
    circle.lineWidth = 0;
    circle.center = self.canvas.center;
    circle.backgroundColor = C4RED;
    [self.canvas addControl:circle];
}

@end