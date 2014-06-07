//
//  Shapes15.m
//  C4Examples
//
//  Created by Slant on 2014-06-04.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Shapes15.h"

@implementation Shapes15 {
    C4Shape *line;
    CGFloat patternWidth;
}

-(void)setup {
    //create the end points for a line
    CGPoint endPoints[2] = {CGPointZero,CGPointMake(self.canvas.width, 0)};
    
    //create the line and center it
    line = [C4Shape line:endPoints];
    line.center = self.canvas.center;
    
    //create a dash pattern
    CGFloat dashPattern[1536];
    for(int i = 0; i < 1536; i++) {
        dashPattern[i] = i;
        patternWidth += i;
    }
    
    //thicken the line and set its dash pattern
    line.lineWidth = 100.0f;
    [line setDashPattern:dashPattern pointCount:1536];
    
    //add the line to the canvas
    [self.canvas addControl:line];
    
    //animate it after a short delay
    [self run:^{
        [self animate];
    } afterDelay:.5];
}

-(void)animate {
    //duration = 5 minutes (60s * 5 = 300);
    line.animationDuration = 300.0f;
    line.animationOptions = AUTOREVERSE | REPEAT;
    line.strokeColor = C4RED;
    
    //set the final dash phase to the entire width of the pattern
    line.lineDashPhase = patternWidth;
}

@end
