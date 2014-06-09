//
//  Timers02.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Timers02.h"

@implementation Timers02 {
    C4Shape *s;
    C4Timer *t;
}

-(void)setup {
    //create a shape to animate
    s = [C4Shape ellipse:CGRectMake(0, 0, 200, 200)];
    s.center = self.canvas.center;
    s.animationDuration = 0.25f;
    [self.canvas addControl:s];
    
    //create an automatic timer which will start firing immediately
    t = [C4Timer automaticTimerWithInterval:0.25 target:self method:@"animate" repeats:YES];
}

//the animation that the timer triggers
-(void)animate {
    CGFloat diameter = [C4Math randomInt:200]+100;
    [s ellipse:CGRectMake(0, 0, diameter, diameter)];
    s.center = self.canvas.center;
}

//toggles the timers
-(void)tapped {
    if(t.isValid) [t stop];
    else [t start];
}

@end
