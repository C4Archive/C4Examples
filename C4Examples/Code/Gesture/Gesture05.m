//
//  Gesture05.m
//  C4Examples
//
//  Created by travis on 2014-06-18.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Gesture05.h"

@implementation Gesture05

//The canvas automatically recognizes longPress gestures and triggers the longPressStarted method (after 0.25s by default)
-(void)longPressStarted {
    self.canvas.backgroundColor = [self randomColor];
}

-(UIColor *)randomColor {
    return [UIColor colorWithRed:[C4Math randomInt:100]/100.0f
                           green:[C4Math randomInt:100]/100.0f
                            blue:[C4Math randomInt:100]/100.0f
                           alpha:1.0f];
}

@end
