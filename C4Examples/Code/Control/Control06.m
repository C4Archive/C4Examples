//
//  Control06.m
//  C4Examples
//
//  Created by travis on 2014-06-11.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control06.h"

@implementation Control06

-(void)setup {
    C4Shape *circle = [C4Shape ellipse:CGRectMake(0, 0, 200, 200)];
    circle.lineWidth = 0;
    circle.center = self.canvas.center;
    circle.backgroundColor = C4RED;
    circle.cornerRadius = 25.0f;
    [self.canvas addControl:circle];
}

@end
