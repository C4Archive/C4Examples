//
//  Gesture01.m
//  C4Examples
//
//  Created by travis on 2014-06-18.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Gesture01.h"

@implementation Gesture01

//The canvas automatically recognizes tap gestures and triggers the tapped method
-(void)tapped {
    self.canvas.backgroundColor = [self randomColor];
}

-(UIColor *)randomColor {
    return [UIColor colorWithRed:[C4Math randomInt:100]/100.0f
                           green:[C4Math randomInt:100]/100.0f
                            blue:[C4Math randomInt:100]/100.0f
                           alpha:1.0f];
}

@end
