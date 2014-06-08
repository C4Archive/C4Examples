//
//  Labels13.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Labels13.h"

@implementation Labels13 {
    C4Label *left, *centered, *right;
}

-(void)setup {
    [self setupLabels];
    
    // setup label alignments
    left.textAlignment = ALIGNTEXTLEFT; //default
    centered.textAlignment = ALIGNTEXTCENTER;
    right.textAlignment = ALIGNTEXTRIGHT;
}

-(void)setupLabels {
    //create a label font
    C4Font *customFont = [C4Font fontWithName:@"DINAlternate-Bold" size:36.0f];
    
    //create the labels
    left = [C4Label labelWithText:@" Left Aligned " font:customFont];
    left.backgroundColor = [UIColor lightGrayColor];
    left.width = self.canvas.width * 0.96f;
    left.center = CGPointMake(self.canvas.center.x,self.canvas.height/4);
    
    centered = [C4Label labelWithText:@" Center Aligned " font:customFont];
    centered.backgroundColor = [UIColor lightGrayColor];
    centered.width = self.canvas.width * 0.96f;
    centered.center = CGPointMake(self.canvas.center.x,self.canvas.height/2);
    
    right = [C4Label labelWithText:@" Right Aligned " font:customFont];
    right.backgroundColor = [UIColor lightGrayColor];
    right.width = self.canvas.width * 0.96f;
    right.center = CGPointMake(self.canvas.center.x,self.canvas.height*3/4);
    
    [self.canvas addObjects:@[left,centered,right]];
}

@end
