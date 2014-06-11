//
//  Control12.m
//  C4Examples
//
//  Created by travis on 2014-06-11.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control12.h"

@implementation Control12

-(void)remove:(C4Shape *)shape {
    [shape removeFromSuperview];
    [self run:^{
        [self.canvas addControl:shape];
    } afterDelay:1.0];
}

-(void)setup {
    NSMutableArray *shapes = [@[] mutableCopy];
    for (int i = 0; i < 4; i++) {
        C4Shape *s = [C4Shape rect:CGRectMake(0, 0, 100, 100)];
        CGPoint centerPoint = self.canvas.center;
        switch (i) {
            case 0:
                centerPoint.x -= 75;
                centerPoint.y -= 75;
                break;
            case 1:
                centerPoint.x += 75;
                centerPoint.y -= 75;
                break;
            case 2:
                centerPoint.x -= 75;
                centerPoint.y += 75;
                break;
            case 3:
                centerPoint.x += 75;
                centerPoint.y += 75;
                break;
        }
        s.center = centerPoint;
        
        [s onTap:^(CGPoint location) {
            [self remove:s]; //when a shape is tapped, the canvas will respond
        }];
        [shapes addObject:s];
    }
    
    [self.canvas addObjects:shapes];
}

@end