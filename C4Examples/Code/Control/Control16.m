//
//  Control16.m
//  C4Examples
//
//  Created by travis on 2014-06-12.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control16.h"

@implementation Control16

-(void)setup {
    C4Image *img = [C4Image imageNamed:@"C4Sky"];
    C4Image *gradient = [C4Image imageNamed:@"C4Gradient"];
    
    gradient.width = img.width;
    gradient.center = img.center;
    img.center = self.canvas.center;
    img.mask = gradient;
    [self.canvas addControl:img];
    
    gradient.animationOptions = REPEAT;
    gradient.animationDuration = 2.5f;
    gradient.rotation += TWO_PI;
}

@end
