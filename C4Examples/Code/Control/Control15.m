//
//  Control15.m
//  C4Examples
//
//  Created by travis on 2014-06-12.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control15.h"

@implementation Control15

-(void)setup {
    C4Image *img = [C4Image imageNamed:@"C4Sky"];
    C4Shape *circle = [C4Shape ellipse:CGRectMake(0, 0, img.height, img.height)];
    circle.center = img.center;
    img.center = self.canvas.center;
    img.mask = circle;
    [self.canvas addControl:img];
}

@end
