//
//  Shapes09.m
//  C4Examples
//
//  Created by Slant on 2014-06-04.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Shapes09.h"

@implementation Shapes09 {
    C4Shape *line1, *line2, *line3;
}

-(void)setup {
    //create a set of default points for all the lines
    CGPoint linePoints[2];
    linePoints[0] = CGPointMake(self.canvas.center.x-100, self.canvas.center.y);
    linePoints[1] = CGPointMake(self.canvas.center.x+100, self.canvas.center.y);
    
    //create each line and style it, if necessary
    line1 = [C4Shape line:linePoints];
    
    line2 = [C4Shape line:linePoints];
    line2.strokeColor = C4RED;
    
    line3 = [C4Shape line:linePoints];
    line3.strokeColor = C4GREY;
    
    //add all the lines to the canvas
    [self.canvas addObjects:@[line3, line2, line1]];
    
    //animate them after a short delay
    [self run:^{ [self animate]; } afterDelay:0.5f];
}

-(void)animate {
    //animate the line2 with a repeating 1 second animation
    line2.animationDuration = 1.0f;
    line2.animationOptions = AUTOREVERSE | REPEAT;
    line2.pointA = CGPointMake(line2.pointA.x, line2.pointA.y + 200);
    
    //animate the line3 with a repeating 1 second animation
    line3.animationDuration = 1.0f;
    line3.animationOptions = AUTOREVERSE | REPEAT;
    line3.pointB = CGPointMake(line2.pointB.x, line2.pointB.y - 200);
}
@end