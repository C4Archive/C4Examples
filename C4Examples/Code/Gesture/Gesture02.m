//
//  Gesture02.m
//  C4Examples
//
//  Created by travis on 2014-06-18.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Gesture02.h"

@implementation Gesture02

///When you need the point at which the canvas was tapped...
-(void)tapped:(CGPoint)location {
    CGFloat value = location.y / self.canvas.height; //use the location to determine the color
    self.canvas.backgroundColor = [UIColor colorWithWhite:value alpha:1];
}

@end
