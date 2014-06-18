//
//  Gesture10.m
//  C4Examples
//
//  Created by travis on 2014-06-18.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Gesture10.h"

@implementation Gesture10

//unlike tap, long press, and pan, by default, swiping is NOT enabled
-(void)setup {
    [self.canvas onSwipeUp:^(CGPoint location) {
        self.canvas.backgroundColor = C4BLUE;
    }];
    [self.canvas onSwipeDown:^(CGPoint location) {
        self.canvas.backgroundColor = C4RED;
    }];
    [self.canvas onSwipeLeft:^(CGPoint location) {
        self.canvas.backgroundColor = [UIColor whiteColor];
    }];
    [self.canvas onSwipeRight:^(CGPoint location) {
        self.canvas.backgroundColor = C4GREY;
    }];
}

@end
