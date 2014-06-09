
//
//  Timers03.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Timers03.h"

@implementation Timers03 {
    C4Shape *rect;
    C4Timer *firstTimer, *secondTimer;
}

-(void)setup {
    //create a shape and add it to the screen
    rect = [C4Shape rect:CGRectMake(0,0,240,240)];
    rect.center = self.canvas.center;
    rect.lineWidth = 60.0f;
    rect.lineJoin = JOINROUND;
    rect.animationDuration = 0.5f;
    [self.canvas addControl:rect];
    
    //create an ID object used to distinguish the timers
    NSNumber *timerID;
    
    //create the first time which will fire automatically
    //this timer will execute ever 2 seconds
    timerID = [NSNumber numberWithInt:0];
    firstTimer = [C4Timer automaticTimerWithInterval:2.0f
                                              target:self
                                              method:@"randomizeShape:"
                                            userInfo:timerID
                                             repeats:YES];
    
    //create a second timer which will fire 1 second after it's created
    //this offsets its start time from the firs timer by 1 second
    //this timer will execute ever 2 seconds
    timerID = [NSNumber numberWithInt:1];
    secondTimer = [C4Timer timerWithFireDate:[NSDate dateWithTimeIntervalSinceNow:1.0f]
                                    interval:2.0f
                                      target:self
                                      method:@"randomizeShape:"
                                    userInfo:timerID
                                     repeats:YES];
}

-(void)randomizeShape:(NSTimer *)timer {
    //figure out the current timer's id
    int currentTimer = [(NSNumber *)timer.userInfo intValue];
    
    //change fill or stroke accordingly
    if(currentTimer == 0) rect.fillColor = [self randomColor];
    else rect.strokeColor = [self randomColor];
}

-(UIColor *)randomColor {
    return [UIColor colorWithRed:RGBToFloat([C4Math randomInt:255])
                           green:RGBToFloat([C4Math randomInt:255])
                            blue:RGBToFloat([C4Math randomInt:255])
                           alpha:1.0f];
}

@end