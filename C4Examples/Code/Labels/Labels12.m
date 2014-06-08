//
//  Labels12.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Labels12.h"

@implementation Labels12 {
    C4Label *label;
}

-(void)setup {
    //set up the label
    C4Font *font = [C4Font fontWithName:@"DINAlternate-Bold" size:50];
    label = [C4Label labelWithText:@"Highlighting" font:font];
    label.highlightedTextColor = C4RED;
    label.center = self.canvas.center;
    [self.canvas addControl:label];
}

-(void)longPressStarted {
    //highlight the label
    label.highlighted = YES;
}

-(void)longPressEnded {
    //return the label to its original state
    label.highlighted = NO;
}
@end