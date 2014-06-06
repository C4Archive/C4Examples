//
//  Images01.m
//  C4Examples
//
//  Created by travis on 2014-06-06.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Images01.h"

@implementation Images01

-(void)setup {
    //create an image and add it to the center of the canvas
    C4Image *img = [C4Image imageNamed:@"C4Sky"];
    img.center = self.canvas.center;
    [self.canvas addControl:img];
}

@end
