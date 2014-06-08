//
//  Labels07.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Labels07.h"

@implementation Labels07 {
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
    //set the label width
    //this will truncate text if it's too big
    label.width = 200.0f;
}

@end