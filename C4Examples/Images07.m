//
//  Images07.m
//  C4Examples
//
//  Created by travis on 2014-06-06.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Images07.h"

@implementation Images07

-(void)setup {
    //define dimensions for the image size
    NSInteger width = 320;
    NSInteger height = 240;
    
    //bytes per pixel = 4 because we have 4 values (RGBA)
    NSInteger bytesPerPixel = 4;
    NSInteger bytesPerRow = width * bytesPerPixel;
    
    //we create an array for our color data
    unsigned char *rawData = malloc(height * bytesPerRow);
    
    //because we're working with raw data, we need to use integer color values
    for(int y = 0; y < height; y+=2) { //<- +=2 means "every other row"
        //color each pixel in that row
        for(int x = 0; x < width * bytesPerPixel; x+=4) {
            int currentPosition = x + y * bytesPerRow;
            if (x >= 160 * bytesPerPixel && x < 164 *bytesPerPixel)
                rawData[currentPosition] = 255; //within a given range, make the pixels red
            else
                rawData[currentPosition] = 50;  //otherwise make them grey
            rawData[currentPosition + 1] = 55;
            rawData[currentPosition + 2] = 60;
            rawData[currentPosition + 3] = 255;
        }
    }
    
    //create the image from the raw data
    C4Image *img = [[C4Image alloc] initWithRawData:rawData width:width height:height];
    img.center = self.canvas.center;
    [self.canvas addControl:img];
    
    //remember, because you malloc() you have to free the data when you're done
    free(rawData);
}

@end
