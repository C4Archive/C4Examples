//
//  Labels02.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Labels02.h"

@implementation Labels02

-(void)setup {
    //create a custom font
    C4Font *customFont = [C4Font fontWithName:@"DINAlternate-Bold" size:50.0f];
    
    //creates a label with the custom font
    C4Label *label = [C4Label labelWithText:@"Hello C4" font:customFont];
    label.center = self.canvas.center;
    [self.canvas addControl:label];
}

@end
