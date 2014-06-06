//
//  Images06.m
//  C4Examples
//
//  Created by travis on 2014-06-06.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Images06.h"

@implementation Images06

-(void)setup {
    //create an image and add it to the canvas
    C4Image *img1 = [C4Image imageNamed:@"C4Sky.png"];
    
    //you can create one image with another
    C4Image *img2 = [C4Image imageWithImage:img1];
    
    //a trick to check if the device is an iPhone or an iPod (or, NOT an iPad)
    if( UI_USER_INTERFACE_IDIOM() != UIUserInterfaceIdiomPad) {
        img1.width /= 2.;
        img2.width /= 2.;
    }
    
    img1.center = CGPointMake(self.canvas.center.x, self.canvas.height / 3);
    img2.center = CGPointMake(self.canvas.center.x, self.canvas.height * 2 / 3);
    
    [self.canvas addObjects:@[img1,img2]];
}

@end
