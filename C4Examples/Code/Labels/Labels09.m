//
//  Labels09.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Labels09.h"

@implementation Labels09

-(void)setup {
    //set up the label
    C4Font *font = [C4Font fontWithName:@"DINAlternate-Bold" size:50];
    C4Label *label = [C4Label labelWithText:@"textColor" font:font];
    label.center = self.canvas.center;
    
    //change the color of the text
    label.textColor = C4BLUE;
    
    [self.canvas addControl:label];
}

@end
