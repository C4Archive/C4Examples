//
//  Colors07.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Colors07.h"

@implementation Colors07

-(void)setup {
    //create the pattern images
    C4Image *patternPyramid = [C4Image imageNamed:@"pyramid"];
    C4Image *patternLines = [C4Image imageNamed:@"lines"];
    
    //create the shapes
    C4Shape *s1, *s2;
    s1 = [C4Shape rect:CGRectMake(0, 0, self.canvas.width / 3, self.canvas.width / 3)];
    s2 = [C4Shape ellipse:s1.frame];
    
    //set their line widths to be quite thick
    s1.lineWidth = s2.lineWidth = 50.0f;
    
    //set their fill colors with pattern images
    s1.fillColor = [UIColor colorWithPatternImage:patternPyramid.UIImage];
    s2.fillColor = [UIColor colorWithPatternImage:patternLines.UIImage];
    
    //set their stroke colors with pattern images
    s1.strokeColor = [UIColor colorWithPatternImage:patternLines.UIImage];
    s2.strokeColor = [UIColor colorWithPatternImage:patternPyramid.UIImage];
    
    //position them
    s1.center = CGPointMake(self.canvas.center.x, self.canvas.height / 3);
    s2.center = CGPointMake(self.canvas.center.x, self.canvas.height * 2 / 3);
    
    //add them to the canvas
    [self.canvas addObjects:@[s1,s2]];
}

@end
