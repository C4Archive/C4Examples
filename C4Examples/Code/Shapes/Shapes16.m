//
//  Shape16.m
//  C4Examples
//
//  Created by Slant on 2014-06-04.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Shapes16.h"

@implementation Shapes16 {
    C4Shape *circle;
    CGFloat patternWidth;
}

-(void)setup {
    [self createCircle];
    [self run:^{ [self animate]; } afterDelay:0.5f];
}

-(void)animate {
    //duration = 3 minutes (60s * 3 = 180);
    circle.animationDuration = 180.0f;
    circle.animationOptions = AUTOREVERSE;
    
    //set the final dash phase to the entire width of the pattern
    circle.lineDashPhase = patternWidth;
}

-(void)createCircle {
    //create the circle and center it
    circle = [C4Shape ellipse:CGRectMake(0, 0, 200, 200)];
    circle.center = self.canvas.center;
    
    //create a dash pattern
    //this pattern is [1,2,3,..,628];
    CGFloat dashPattern[628];
    int i;
    for(i = 0; i < 628; i++) {
        dashPattern[i] = i+1;
        patternWidth += i;
    }
    
    //thicken the line and set its dash pattern
    circle.lineWidth = 80.0f;
    circle.fillColor = [UIColor clearColor];
    [circle setDashPattern:dashPattern pointCount:1260];
    
    //add the line to the canvas
    [self.canvas addControl:circle];
}

@end
