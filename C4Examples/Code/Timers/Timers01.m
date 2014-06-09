//
//  Timers01.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Timers01.h"

@implementation Timers01 {
    C4Shape *shape;
    C4Timer *timer;
}

-(void)setup {
    //create the shape
    shape = [C4Shape ellipse:CGRectMake(0, 0, 100, 100)];
    shape.center = self.canvas.center;
    [self.canvas addControl:shape];
    shape.animationDuration = 0.2f;
    
    //automatic timers start immediately
    //create a timer that triggers a random animation every 1/4 second
    timer = [C4Timer automaticTimerWithInterval:0.25f target:self method:@"randomizeShape" repeats:YES];
}

-(void)randomizeShape {
    CGFloat diameter = [C4Math randomInt:(int)(self.canvas.width*.9f)];
    [shape ellipse:CGRectMake(0, 0, diameter, diameter)];
    CGFloat thickness = [C4Math randomInt:100];
    if(thickness > diameter) thickness = diameter;
    shape.lineWidth = thickness;
    shape.center = self.canvas.center;
}

@end
