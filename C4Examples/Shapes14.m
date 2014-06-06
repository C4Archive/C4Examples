//
//  Shapes14.m
//  C4Examples
//
//  Created by Slant on 2014-06-04.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Shapes14.h"

@implementation Shapes14 {
    C4Shape *line1, *line2;
    CGFloat pattern[25];
}

-(void)setup {
    [self createLines];
    [self createPattern];
    
    [line1 setDashPattern:pattern pointCount:25];
    [line2 setDashPattern:pattern pointCount:25];
    line2.lineDashPhase = line2.width * .75;
}

-(void)createLines {
    //create end points
    CGPoint pts[2] = {CGPointZero,CGPointMake(self.canvas.width, 0)};
    
    //create the first line
    line1 = [C4Shape line:pts];
    line1.lineWidth = 50.0f;
    line1.center = CGPointMake(self.canvas.center.x, self.canvas.center.y - line1.lineWidth);
    
    line2 = [C4Shape line:pts];
    line2.lineWidth = 50.0f;
    line2.center = CGPointMake(self.canvas.center.x, self.canvas.center.y + line2.lineWidth);
    
    [self.canvas addObjects:@[line1,line2]];
}

-(void)createPattern {
    for (int i = 0; i < 25; i++) {
        pattern[i] = i+1;
    }
}

-(void)panned:(CGPoint)location translation:(CGPoint)translation velocity:(CGPoint)velocity {
    line2.lineDashPhase = location.x;
}

@end