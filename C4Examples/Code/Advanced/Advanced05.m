//
//  Advanced05.m
//  C4Examples
//
//  Created by travis on 2014-06-18.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Advanced05.h"

@implementation Advanced05 {
    C4Shape *circle;
}

-(void)setup {
    circle = [C4Shape ellipse:CGRectMake(0, 0, 50, 50)];
    circle.center = self.canvas.center;
    [self.canvas addControl:circle];
    [self newPlace];
}

-(void)newPlace {
    CGFloat time = ([C4Math randomInt:150]/100.0f) + 0.5f;
    circle.animationDuration = time;
    circle.center = CGPointMake([C4Math randomInt:self.canvas.width/2] + self.canvas.width/4,
                                [C4Math randomInt:self.canvas.height/2] + self.canvas.height/4);
    [self run:^{
        [self newPlace];
    } afterDelay:time];
}

@end