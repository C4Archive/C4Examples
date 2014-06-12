//
//  Filter29.m
//  C4Examples
//
//  Created by travis on 2014-06-12.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Filter29.h"

@implementation Filter29

-(void)setup {
    C4Image *img = [C4Image imageNamed:@"C4Table"];
    img.center = self.canvas.center;
    [self.canvas addControl:img];
    
    [img temperatureAndTint:CGSizeMake(6500, 200) target:CGSizeMake(6500, 500)];
}

@end
