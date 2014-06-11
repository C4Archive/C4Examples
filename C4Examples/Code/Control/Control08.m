//
//  Control08.m
//  C4Examples
//
//  Created by travis on 2014-06-11.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control08.h"

@implementation Control08

-(void)setup {
    C4Image *img1 = [C4Image imageNamed:@"C4Sky"];
    img1.center = self.canvas.center;
    
    C4Image *img2 = [C4Image imageNamed:@"C4Sky"];
    img2.constrainsProportions = NO;
    img2.height /= 2.0f;
    img2.center = self.canvas.center;
    
    [self.canvas addObjects:@[img1, img2]];
}

@end
