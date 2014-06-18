//
//  Gesture07.m
//  C4Examples
//
//  Created by travis on 2014-06-18.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Gesture07.h"

@implementation Gesture07

//The canvas automatically recognizes longPress gestures and triggers the longPressEnded method when the gesture is released
-(void)longPressEnded {
    self.canvas.backgroundColor = [self randomColor];
}

-(UIColor *)randomColor {
    return [UIColor colorWithRed:[C4Math randomInt:100]/100.0f
                           green:[C4Math randomInt:100]/100.0f
                            blue:[C4Math randomInt:100]/100.0f
                           alpha:1.0f];
}
@end
