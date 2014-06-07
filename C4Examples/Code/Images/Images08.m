//
//  Images08.m
//  C4Examples
//
//  Created by travis on 2014-06-06.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Images08.h"

@implementation Images08 {
    C4Image *patternImage;
    C4Shape *s1, *s2;
}

-(void)setup {
    [self generatePatternImage];
    [self setupShape];
    
    s1.fillColor = [UIColor colorWithPatternImage:patternImage.UIImage];
    
    [self run:^{
        s1.animationOptions = REPEAT | LINEAR;
        s1.animationDuration = 60.0f;
        s1.rotation = TWO_PI;
    } afterDelay:0.5f];
}

-(void)generatePatternImage {
    //define dimensions for the image size
    NSInteger width = 16;
    NSInteger height = 16;
    
    //bytes per pixel = 4 because we have 4 values (RGBA)
    NSInteger bytesPerPixel = 4;
    NSInteger bytesPerRow = width * bytesPerPixel;
    //we create an array for our color data
    unsigned char *rawData = malloc(height * bytesPerRow);
    
    for(int y = 0; y < height; y++) { //<- +=2 means "every other row"
        //color each pixel in that row
        for(int x = 0; x < width * bytesPerPixel; x+= [C4Math randomInt:8]) {
            int currentPosition = x + y * bytesPerRow;
            rawData[currentPosition] = 50;
            rawData[currentPosition + 1] = 55;
            rawData[currentPosition + 2] = 60;
            rawData[currentPosition + 3] = 255;
        }
    }
    
    //set the pattern image
    patternImage = [[C4Image alloc] initWithRawData:rawData width:width height:height];
    
    patternImage.center = CGPointMake(self.canvas.center.x, 32);
    [self.canvas addControl:patternImage];
    
    free(rawData);
}

//create a shapes to be filled with the pattern image
-(void)setupShape {
    CGFloat width = self.canvas.width * 0.96f;
    s1 = [C4Shape ellipse:CGRectMake(0, 0, width, width)];
    s1.center = self.canvas.center;
    s1.lineWidth = 0.0f;
    [self.canvas addControl:s1];
}

@end
