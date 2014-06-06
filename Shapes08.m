//
//  Shapes08.m
//  C4Examples
//
//  Created by Slant on 2014-06-04.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Shapes08.h"

@implementation Shapes08

-(void)setup {
    //create and position the shape with default colors
    C4Shape *circle = [C4Shape ellipse:CGRectMake(0, 0, 200, 200)];
    circle.center = self.canvas.center;
    
    //change the line width
    circle.lineWidth = 100.0f;
    
    //add the shapes to the canvas
    [self.canvas addControl:circle];
}

@end
