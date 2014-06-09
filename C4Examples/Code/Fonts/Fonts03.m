//
//  Fonts03.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Fonts03.h"

@implementation Fonts03

-(void)setup {
    //create a text string that will be used for all labels
    NSString *textString;
    
    //create an initial font
    C4Font *f = [C4Font fontWithName:@"DINAlternate-Bold" size:40.0f];
    
    //create a point to reuse for all labels
    CGPoint p = CGPointMake(10, 0);
    
    //create an initial label, position it, add it to the canvas
    C4Label *l = [C4Label labelWithText:@"Font Properties" font:f];
    l.origin = p;
    p.y += l.height + 10; //update p for the next label
    [self.canvas addControl:l];
    
    //change the font size
    f = [f fontWithSize:20.0f];
    
    //create a formatted string, with the current property variable, create a label...
    textString = [NSString stringWithFormat:@"Family Name: %@",f.familyName];
    l = [C4Label labelWithText:textString font:f];
    l.origin = p;
    p.y += l.height + 10;
    [self.canvas addControl:l];
    
    textString = [NSString stringWithFormat:@"Font Name: %@",f.fontName];
    l = [C4Label labelWithText:textString font:f];
    l.origin = p;
    p.y += l.height + 10;
    [self.canvas addControl:l];
    
    textString = [NSString stringWithFormat:@"Point Size: %4.2f",f.pointSize];
    l = [C4Label labelWithText:textString font:f];
    l.origin = p;
    p.y += l.height + 10;
    [self.canvas addControl:l];
    
    textString = [NSString stringWithFormat:@"Ascender: %4.2f",f.ascender];
    l = [C4Label labelWithText:textString font:f];
    l.origin = p;
    p.y += l.height + 10;
    [self.canvas addControl:l];
    
    textString = [NSString stringWithFormat:@"Descender: %4.2f",f.descender];
    l = [C4Label labelWithText:textString font:f];
    l.origin = p;
    p.y += l.height + 10;
    [self.canvas addControl:l];
    
    textString = [NSString stringWithFormat:@"Cap Height: %4.2f",f.capHeight];
    l = [C4Label labelWithText:textString font:f];
    l.origin = p;
    p.y += l.height + 10;
    [self.canvas addControl:l];
    
    textString = [NSString stringWithFormat:@"X-Height: %4.2f",f.xHeight];
    l = [C4Label labelWithText:textString font:f];
    l.origin = p;
    p.y += l.height + 10;
    [self.canvas addControl:l];
    
    textString = [NSString stringWithFormat:@"Line Height: %4.2f",f.lineHeight];
    l = [C4Label labelWithText:textString font:f];
    l.origin = p;
    p.y += l.height + 10;
    [self.canvas addControl:l];
}

@end
