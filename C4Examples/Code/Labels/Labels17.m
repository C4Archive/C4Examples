//
//  Labels17.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Labels17.h"

@implementation Labels17 {
    C4Label *label;
}

-(void)setup {
    //create a custom font
    C4Font *customFont = [C4Font fontWithName:@"DINAlternate-Bold" size:50.0f];
    label = [C4Label labelWithText:@"Hello There C4" font:customFont];
    
    label.backgroundColor = C4BLUE;
    label.center = self.canvas.center;
    [self.canvas addControl:label];
}

-(void)tapped {
    //if you set this first, the font size will change to fit the original width
    label.adjustsFontSizeToFitWidth = YES;
    
    //change the text
    label.text = @"This text is a bit longer, but the font is smaller.";
}

@end
