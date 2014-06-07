//
//  Images05.m
//  C4Examples
//
//  Created by travis on 2014-06-06.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Images05.h"

@implementation Images05 {
    //define 2 invisible images
    C4Image *i1, *i2;
    //define a visible image
    C4Image *visibleImage;
    BOOL isFirstImage;
}

-(void)setup {
    //create two invisible images
    i1 = [C4Image imageNamed:@"C4Sky.png"];
    i2 = [C4Image imageNamed:@"C4Table.png"];
    
    //create the visible image from the first invisible image
    visibleImage = [C4Image imageWithImage:i1];
    isFirstImage = YES;
    
    //position it and add it to the canvas
    visibleImage.center = self.canvas.center;
    [self.canvas addControl:visibleImage];
}

-(void)tapped {
    //toggle the contents of the visible image
    if(isFirstImage == YES) {
        visibleImage.image = i2;
    } else {
        visibleImage.image = i1;
    }
    isFirstImage = !isFirstImage;
}

@end