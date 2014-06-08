//
//  Labels03.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Labels03.h"

@implementation Labels03

-(void)setup {
    //create a custom font
    C4Font *customFont = [C4Font fontWithName:@"DINAlternate-Bold" size:50.0f];
    
    C4Label *label = [C4Label labelWithText:@"Hello C4" font:customFont frame:CGRectMake(0,0,200,200)];
    label.backgroundColor = C4BLUE;
    label.center = self.canvas.center;
    [self.canvas addControl:label];
}

@end
