//
//  Colors01.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Colors01.h"

@implementation Colors01 {
    CGRect shapeFrame;
    CGPoint shapeOrigin;
    CGFloat whiteSpace;
    C4Font *labelFont;
    C4Label *label;
}

-(void)setup {
    //define the height of individual shapes
    CGFloat shapeHeight = self.canvas.height/11;
    
    //calculate the white space between
    whiteSpace = self.canvas.height - 9 * shapeHeight;
    whiteSpace = whiteSpace/10;
    shapeFrame = CGRectMake(0, 0, self.canvas.width - 2*whiteSpace, shapeHeight);
    
    //create a font to use for the labels
    labelFont = [C4Font fontWithName:@"DINAlternate-Bold" size:20.0f];
    
    //each type of color example is contained in its own method
    [self defaultColors];
    [self C4Colors];
    [self presetColors];
    [self rgbColors];
    [self hsbColors];
    [self whiteColors];
    [self systemColors];
    [self alphaColors];
    [self imagePatternColors];
}

-(void)defaultColors {
    C4Shape *rect = [C4Shape rect:shapeFrame];
    shapeOrigin = CGPointMake(whiteSpace, whiteSpace);
    rect.origin = shapeOrigin;
    
    label = [C4Label labelWithText:@"Default Colors" font:labelFont];
    label.textColor = [UIColor whiteColor];
    label.center = rect.center;
    [self.canvas addObjects:@[rect,label]];
}

-(void)C4Colors {
    C4Shape *rect = [C4Shape rect:shapeFrame];
    shapeOrigin.y += whiteSpace + rect.height;
    rect.origin = shapeOrigin;
    
    //There are 3 predefined colors in C4: C4BLUE, C4GREY, C4RED
    rect.fillColor = C4RED;
    rect.strokeColor = C4GREY;
    
    
    label = [C4Label labelWithText:@"C4 Colors (from the logo)" font:labelFont];
    label.center = rect.center;
    [self.canvas addObjects:@[rect,label]];
}

-(void)presetColors {
    C4Shape *rect = [C4Shape rect:shapeFrame];
    shapeOrigin.y += whiteSpace + rect.height;
    rect.origin = shapeOrigin;
    
    //There are a series of predefined colors, see UIColor documentation for more
    rect.fillColor = [UIColor orangeColor];
    rect.strokeColor = [UIColor darkGrayColor];
    
    
    label = [C4Label labelWithText:@"Predefined UIColors" font:labelFont];
    label.center = rect.center;
    [self.canvas addObjects:@[rect,label]];
}

-(void)rgbColors {
    C4Shape *rect = [C4Shape rect:shapeFrame];
    shapeOrigin.y += whiteSpace + rect.height;
    rect.origin = shapeOrigin;
    
    //You can set the RGB values with each component ranging from 0 .. 1.0 like this:
    rect.fillColor = [UIColor colorWithRed:0.50 green:1.0 blue:0.0 alpha:1.0]; //lime (ish)
    rect.strokeColor = [UIColor colorWithRed:0.50 green:0.0 blue:0.0 alpha:1.0]; //half red
    
    
    label = [C4Label labelWithText:@"RGB Colors" font:labelFont];
    label.center = rect.center;
    [self.canvas addObjects:@[rect,label]];
}

-(void)hsbColors {
    C4Shape *rect = [C4Shape rect:shapeFrame];
    shapeOrigin.y += whiteSpace + rect.height;
    rect.origin = shapeOrigin;
    
    //You can set the HSB values with each component ranging from 0 .. 1.0 like this:
    rect.fillColor = [UIColor colorWithHue:0.5 saturation:1.0 brightness:1.0 alpha:1.0];
    rect.strokeColor = [UIColor colorWithHue:0.25 saturation:0.75 brightness:0.5 alpha:1.0];
    
    
    label = [C4Label labelWithText:@"HSB Colors" font:labelFont];
    label.center = rect.center;
    [self.canvas addObjects:@[rect,label]];
}

-(void)whiteColors {
    C4Shape *rect = [C4Shape rect:shapeFrame];
    shapeOrigin.y += whiteSpace + rect.height;
    rect.origin = shapeOrigin;
    
    //You can set grayscale colors by defining them in the range of white:
    rect.fillColor = [UIColor colorWithWhite:0.5 alpha:1.0];
    rect.strokeColor = [UIColor colorWithWhite:0.33 alpha:1.0];
    
    
    label = [C4Label labelWithText:@"White/Grayscale Colors" font:labelFont];
    label.center = rect.center;
    [self.canvas addObjects:@[rect,label]];
}

-(void)systemColors {
    C4Shape *rect = [C4Shape rect:shapeFrame];
    shapeOrigin.y += whiteSpace + rect.height;
    rect.origin = shapeOrigin;
    
    //There are a series of system colors, see UIColor documentation for more:
    rect.fillColor = [UIColor groupTableViewBackgroundColor]; //looks like a hatched color on my device
    rect.strokeColor = [UIColor darkTextColor];
    
    
    label = [C4Label labelWithText:@"System Colors" font:labelFont];
    label.center = rect.center;
    [self.canvas addObjects:@[rect,label]];
}

-(void)alphaColors {
    C4Shape *rect = [C4Shape rect:shapeFrame];
    shapeOrigin.y += whiteSpace + rect.height;
    rect.origin = shapeOrigin;
    
    //You can create transparent colors from UIColor objects
    //This takes the default shape colors and makes them transparent
    rect.fillColor = [rect.fillColor colorWithAlphaComponent:0.5];
    rect.strokeColor = [rect.strokeColor colorWithAlphaComponent:0.5];
    
    label = [C4Label labelWithText:@"Alpha Colors" font:labelFont];
    label.center = rect.center;
    [self.canvas addObjects:@[rect,label]];
}

-(void)imagePatternColors {
    C4Shape *rect = [C4Shape rect:shapeFrame];
    shapeOrigin.y += whiteSpace + rect.height;
    rect.origin = shapeOrigin;
    
    //You can create colors using images as well...
    C4Image *fillPattern = [C4Image imageNamed:@"pyramid"];
    rect.fillColor = [UIColor colorWithPatternImage:fillPattern.UIImage];
    
    //Here we use a transparent fill pattern for the outline
    C4Image *strokePattern = [C4Image imageNamed:@"lines"];
    rect.strokeColor = [UIColor colorWithPatternImage:strokePattern.UIImage];
    
    label = [C4Label labelWithText:@"Pattern/Image Colors" font:labelFont];
    label.center = rect.center;
    [self.canvas addObjects:@[rect,label]];
}

@end
