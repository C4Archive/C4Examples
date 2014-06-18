//
//  Gesture09.m
//  C4Examples
//
//  Created by travis on 2014-06-18.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Gesture09.h"

@implementation Gesture09

-(void)longPressStarted {
    self.canvas.backgroundColor = [self randomColor];
}

-(void)longPressEnded {
    self.canvas.backgroundColor = [UIColor whiteColor];
}

-(UIColor *)randomColor {
    return [UIColor colorWithRed:[C4Math randomInt:100]/100.0f
                           green:[C4Math randomInt:100]/100.0f
                            blue:[C4Math randomInt:100]/100.0f
                           alpha:1.0f];
}

@end
