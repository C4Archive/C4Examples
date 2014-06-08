//
//  Labels04.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Labels04.h"

@implementation Labels04 {
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
    //you can change the text on the fly
    //but it might truncate!
    label.text = @"This text is a bit longer.";
}

@end
