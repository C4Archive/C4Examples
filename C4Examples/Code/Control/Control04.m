//
//  Control04.m
//  C4Examples
//
//  Created by travis on 2014-06-11.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control04.h"

@implementation Control04

-(void)setup {
    C4Image *img = [C4Image imageNamed:@"C4Sky"];
    img.center = self.canvas.center;
    img.borderWidth = 10.0f;
    img.borderColor = C4RED;
    [self.canvas addControl:img];
}

@end
