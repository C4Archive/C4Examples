//
//  Labels14.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Labels14.h"

@implementation Labels14

-(void)setup {
    //create a custom font
    C4Font *customFont = [C4Font fontWithName:@"DINAlternate-Bold" size:50.0f];
    C4Label *label = [C4Label labelWithText:@"Hello There C4" font:customFont];
    
    //set the label height and width
    label.width = 160.0f;
    label.height = 200.0f;
    
    //allow the label to have a specific number of lines
    label.numberOfLines = 3;
    
    label.backgroundColor = C4BLUE;
    label.center = self.canvas.center;
    [self.canvas addControl:label];
}

@end