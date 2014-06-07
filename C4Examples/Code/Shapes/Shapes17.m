//
//  Shapes17.m
//  C4Examples
//
//  Created by Slant on 2014-06-05.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Shapes17.h"

@implementation Shapes17 {
    C4Shape *star;
}

-(void)setup {
    [self createStar];
    //animate it after a short delay
    [self run:^{[self animate];} afterDelay:0.1f];
}

-(void)animate {
    star.animationDuration = 10.0f;
    star.animationOptions = AUTOREVERSE | REPEAT;
    star.strokeColor = C4RED;
    
    star.lineDashPhase = 500;
}

-(void)createStar {
    //change the dash pattern
    CGFloat dashPattern[2] = {5,5};
    
    //create a font for the text shape
    C4Font *f = [C4Font fontWithName:@"DINAlternate-Bold" size:720];
    
    //create the text shape and center it
    star = [C4Shape shapeFromString:@"*" withFont:f];
    star.center = self.canvas.center;
    
    //style the text shape and set its dash pattern
    star.fillColor = [UIColor clearColor];
    [star setDashPattern:dashPattern pointCount:2];
    
    //add the text shape to the canvas
    [self.canvas addControl:star];
}

@end
