//
//  Control14.m
//  C4Examples
//
//  Created by travis on 2014-06-12.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control14.h"

@implementation Control14

-(void)setup {
    C4Image *img = [C4Image imageNamed:@"C4Sky"];
    C4Image *gradient = [C4Image imageNamed:@"C4Gradient"];
    gradient.width = img.width;
    
    img.mask = gradient;
    
    img.center = self.canvas.center;
    [self.canvas addControl:img];
}

@end
