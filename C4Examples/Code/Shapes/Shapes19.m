//
//  Shapes19.m
//  C4Examples
//
//  Created by Slant on 2014-06-05.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Shapes19.h"

@implementation Shapes19

-(void)setup {
    //create and array of points to use for lines
    CGPoint linePoints[2] = {CGPointMake(2, 75),CGPointMake(self.canvas.width-2, 75)};
    
    //create the first line, at the default width
    C4Shape *line = [C4Shape line:linePoints];
    [self.canvas addControl:line];
    
    //shift the line points
    linePoints[0].y *= 2;
    linePoints[1].y *= 2;
    
    //loop until the screen is full
    for(int i = 0; linePoints[0].y < self.canvas.height; i++) {
        
        //define the current line with, exponentially growing
        CGFloat currentLineWidth = 2.0f + [C4Math pow:1.15f raisedTo:i];
        
        //shift the line points based on the current line width (with a little gap)
        linePoints[0].y += currentLineWidth+1.0f;
        linePoints[1].y += currentLineWidth+1.0f;
        
        //create a new line and add it to the canvas
        C4Shape *newLine = [C4Shape line:linePoints];
        newLine.lineWidth = currentLineWidth;
        [self.canvas addControl:newLine];
    }
}

@end
