//
//  Images03.m
//  C4Examples
//
//  Created by travis on 2014-06-06.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Images03.h"

@implementation Images03

-(void)setup {
    C4Image *image = [C4Image imageNamed:@"C4Sky"];
    
    image.height = self.canvas.height;
    
    image.center = self.canvas.center;
    [self.canvas addControl:image];
}

@end
