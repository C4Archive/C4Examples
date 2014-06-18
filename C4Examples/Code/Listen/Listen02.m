//
//  Listen02.m
//  C4Examples
//
//  Created by travis on 2014-06-18.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Listen02.h"

@implementation Listen02 {
    C4Shape *s1, *s2;
}

-(void)setup {
    [self createShapes];
    //tell s1 to run its own tapped: method when it recognizes a tap gesture
    //tapped: is a convenience method in C4Control that allows you to see how to work with taps
    [s1 onTap:^(CGPoint location) {
        [s1 tapped:location];
    }];
    
    //tell s2 to do the same thing
    [s2 onTap:^(CGPoint location) {
        [s2 tapped:location];
    }];
    
    //the canvas listens specifically to each object
    //when it hears a tap from one of them, it changes the other's color
    [self listenFor:@"tapped" fromObject:s1 andRun:^(NSNotification *n) {
        s2.fillColor = [self randomColor];
    }];
    
    [self listenFor:@"tapped" fromObject:s2 andRun:^(NSNotification *n) {
        s1.fillColor = [self randomColor];
    }];
}

-(void)createShapes {
    CGRect shapeFrame = CGRectMake(0, 0, 100, 100);
    s1 = [C4Shape ellipse:shapeFrame];
    s2 = [C4Shape ellipse:shapeFrame];
    CGPoint centerPoint = self.canvas.center;
    centerPoint.y -= 75;
    s1.center = centerPoint;
    centerPoint.y += 150;
    s2.center = centerPoint;
    [self.canvas addObjects:@[s1, s2]];
}

-(UIColor *)randomColor {
    return [UIColor colorWithRed:[C4Math randomInt:100]/100.0f
                           green:[C4Math randomInt:100]/100.0f
                            blue:[C4Math randomInt:100]/100.0f
                           alpha:1.0f];
}

@end
