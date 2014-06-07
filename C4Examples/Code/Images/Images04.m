//
//  Images04.m
//  C4Examples
//
//  Created by travis on 2014-06-06.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Images04.h"

@implementation Images04

-(void)setup {
    C4Image *image = [C4Image imageNamed:@"C4Sky"];
    
    image.frame = self.canvas.frame;
    
    image.center = self.canvas.center;
    [self.canvas addControl:image];
}

@end
