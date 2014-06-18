//
//  Advanced02.m
//  C4Examples
//
//  Created by travis on 2014-06-18.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Advanced02.h"

@implementation Advanced02 {
    C4Shape *line;
}

-(void)setup {
    CGPoint linePoints[2] = {self.canvas.center, CGPointMake(0, 0)};
    line = [C4Shape line:linePoints];
    [self.canvas addControl:line];
}

-(void)panned:(CGPoint)location translation:(CGPoint)translation velocity:(CGPoint)velocity {
    line.pointB = location;
}

@end