//
//  Gesture04.m
//  C4Examples
//
//  Created by travis on 2014-06-18.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Gesture04.h"

@implementation Gesture04

//When you want to know some of the characteristics of the pan gesture...
-(void)panned:(CGPoint)location translation:(CGPoint)translation velocity:(CGPoint)velocity {
    CGFloat r = location.x / self.canvas.width;
    CGFloat g = location.y / self.canvas.height;
    self.canvas.backgroundColor = [UIColor colorWithRed:r green:g blue:0 alpha:1];
}

@end
