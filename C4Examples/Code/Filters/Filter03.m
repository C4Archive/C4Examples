//
//  Filter03.m
//  C4Examples
//
//  Created by travis on 2014-06-12.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Filter03.h"

@implementation Filter03

-(void)setup {
    C4Image *img = [C4Image imageNamed:@"C4Table"];
    img.center = self.canvas.center;
    C4Image *backgroundImg = [C4Image imageNamed:@"C4Sky"];
    [self.canvas addControl:img];
    
    [img colorBurn:backgroundImg];
}

@end
