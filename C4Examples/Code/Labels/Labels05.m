//
//  Labels05.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Labels05.h"

@implementation Labels05 {
    C4Label *label;
}

-(void)setup {
    //create a custom font
    C4Font *customFont = [C4Font fontWithName:@"DINAlternate-Bold" size:20.0f];
    
    //create a really small frame, the text will be totally clipped to the frame
    label = [C4Label labelWithText:@"Hello C4" font:customFont frame:CGRectMake(0, 0, 10, 10)];
    label.borderWidth = 0.5f;           // so we can see the frame
    label.center = self.canvas.center;
    [self.canvas addControl:label];
}

-(void)tapped {
    [label sizeToFit];                  //this will fix the clipping issue
    label.center = self.canvas.center;  //recenters the label
}

@end
