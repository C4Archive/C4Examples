//
//  Labels10.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Labels10.h"

@implementation Labels10

-(void)setup {
    //set up the label
    C4Font *font = [C4Font fontWithName:@"DINAlternate-Bold" size:50];
    C4Label *label = [C4Label labelWithText:@"textShadow" font:font];
    label.center = self.canvas.center;
    
    //change the color of the text's shadow color
    label.textShadowColor = C4BLUE;
    
    //change the size of the text's shadow offset (default is {0,0})
    label.textShadowOffset = CGSizeMake(2, 2);
    
    [self.canvas addControl:label];
}

@end
