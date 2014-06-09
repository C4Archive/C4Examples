//
//  Fonts01.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Fonts01.h"

@implementation Fonts01

-(void)setup {
    //create an initial font and a label
    C4Font *font = [C4Font fontWithName:@"DINAlternate-Bold" size:30.0f];
    C4Label *label = [C4Label labelWithText:@"initial font" font:font];
    label.center = CGPointMake(self.canvas.center.x, self.canvas.height / 3.0f);
    
    //use the initial font to create a new font with a bigger size
    C4Font *fontLarge = [font fontWithSize:60.0f];
    C4Label *labelLarge = [C4Label labelWithText:@"larger font" font:fontLarge];
    labelLarge.center = CGPointMake(self.canvas.center.x, self.canvas.height * 2.0f / 3.0f);
    
    //add the labels to the canvas
    [self.canvas addObjects:@[label,labelLarge]];
}

@end
