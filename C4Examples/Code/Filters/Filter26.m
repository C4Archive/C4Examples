//
//  Filter26.m
//  C4Examples
//
//  Created by travis on 2014-06-12.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Filter26.h"

@implementation Filter26

-(void)setup {
    C4Image *img = [C4Image imageNamed:@"C4Table"];
    img.center = self.canvas.center;
    [self.canvas addControl:img];
    
    [img sepiaTone:1.0f];
}

@end
