//
//  Advanced03.m
//  C4Examples
//
//  Created by travis on 2014-06-18.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Advanced03.h"

@implementation Advanced03 {
    NSMutableArray *shapes;
}

-(void)setup {
    shapes = [@[] mutableCopy];
    
    for(int i = 0; i < 40; i++) {
        C4Shape *s = [C4Shape rect:CGRectMake(0, 0, self.canvas.width * .6, self.canvas.height / 40.0f)];
        s.fillColor = [UIColor colorWithWhite:0.0f alpha:i/40.0f];
        s.strokeColor = [UIColor clearColor];
        s.anchorPoint = CGPointMake(0.5f,8.0f+i);
        CGPoint p = self.canvas.center;
        p.y += self.canvas.height/2;
        s.center = p;
        [shapes addObject:s];
    }
    [self.canvas addObjects:shapes];
    [self run:^{
        for(int i = 0; i < [shapes count]; i++) {
            C4Shape *s = shapes[i];
            s.animationDuration = i*.01f + 1.0f;
            [self animateObject:s];
        }
    } afterDelay:0.1f];
}

-(void)animateObject:(C4Shape *)shape {
    shape.animationDuration *= 0.98f;
    shape.rotation += TWO_PI;
    [self run:^{
        [self animateObject:shape];
    } afterDelay:shape.animationDuration+ 0.2f];
}

@end
