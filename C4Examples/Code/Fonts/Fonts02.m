//
//  Fonts02.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Fonts02.h"

@implementation Fonts02

-(void)setup {
    [self systemFont];
    [self boldSystemFont];
    [self italicSystemFont];
}

-(void)systemFont {
    C4Font *font;
    C4Label *label;
    
    //create regular a system font
    font = [C4Font systemFontOfSize:30.0f];
    
    label = [C4Label labelWithText:@"Regular System Font" font:font];
    label.center = CGPointMake(self.canvas.center.x, self.canvas.height / 4.0f);
    
    [self.canvas addControl:label];
}

-(void)boldSystemFont {
    //create a bold system font
    C4Font *font = [C4Font boldSystemFontOfSize:30.0f];
    
    C4Label *label = [C4Label labelWithText:@"Bold System Font" font:font];
    label.center = CGPointMake(self.canvas.center.x, self.canvas.height * 2.0f / 4.0f);
    
    [self.canvas addControl:label];
}

-(void)italicSystemFont {
    //create an italic system font
    C4Font *font = [C4Font italicSystemFontOfSize:30.0f];
    
    C4Label *label = [C4Label labelWithText:@"Italic System Font" font:font];
    label.center = CGPointMake(self.canvas.center.x, self.canvas.height * 3.0f / 4.0f);
    
    [self.canvas addControl:label];
}

@end
