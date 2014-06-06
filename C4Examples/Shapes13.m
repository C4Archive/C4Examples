//
//  Shapes13.m
//  C4Examples
//
//  Created by Slant on 2014-06-04.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Shapes13.h"

@implementation Shapes13

-(void)setup {
    //create end points
    CGPoint pts[2] = {CGPointZero,CGPointMake(self.canvas.width, 0)};
    
    //create the first line
    C4Shape *line1 = [C4Shape line:pts];
    line1.lineWidth = 50.0f;
    line1.center = CGPointMake(self.canvas.center.x, self.canvas.center.y - line1.lineWidth);
    
    C4Shape *line2 = [C4Shape line:pts];
    line2.lineWidth = 50.0f;
    line2.center = CGPointMake(self.canvas.center.x, self.canvas.center.y + line2.lineWidth);
    
    //create a c-array dash pattern and set this for line1
    CGFloat pattern[2] = {5,10};
    [line1 setDashPattern:pattern pointCount:2];
    
    //create an NSArray of numbers and set this as the dash pattern for line2
    NSArray *patternArray = @[@(25),@(5)];
    line2.lineDashPattern = patternArray;
    
    //add the lines to the canvas
    [self.canvas addObjects:@[line1,line2]];
}
@end