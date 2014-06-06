//
//  Shapes20.m
//  C4Examples
//
//  Created by Slant on 2014-06-05.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Shapes20.h"

@implementation Shapes20

-(void)setup {
    //create and array of points to use for lines
    CGPoint linePoints[2] = {CGPointZero,CGPointMake(self.canvas.width,0.0f)};
    
    //figure out the total number of lines to draw
    CGFloat totalLineCount = self.canvas.height / 6.0f; //default lineWidth (5.0f) + 1.0f gap between each line
    
    //figure out displacement of strokeStart and strokeEnd
    CGFloat strokeDisplacement = 0.5f / totalLineCount;
    
    for(int i = 0; i < totalLineCount; i++) {
        linePoints[0].y = i*6.0f + 2.5f;
        linePoints[1].y = linePoints[0].y;
        
        //create a new line
        C4Shape *newLine = [C4Shape line:linePoints];
        
        //determine the current displacement of the ends of the line
        CGFloat currentDisplacement = strokeDisplacement*(i+1);
        newLine.strokeStart = 0.5 - currentDisplacement;
        newLine.strokeEnd = 0.5f + currentDisplacement;
        
        //... and add it to the canvas
        [self.canvas addControl:newLine];
    }
}

@end
