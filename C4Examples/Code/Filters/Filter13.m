//
//  Filter13.m
//  C4Examples
//
//  Created by travis on 2014-06-12.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Filter13.h"

@implementation Filter13

-(void)setup {
    C4Image *img = [C4Image imageNamed:@"C4Table"];
    img.center = self.canvas.center;
    C4Image *backgroundImg = [C4Image imageNamed:@"C4Sky"];
    [self.canvas addControl:img];
    
    [img hardLightBlend:backgroundImg];
}

@end
