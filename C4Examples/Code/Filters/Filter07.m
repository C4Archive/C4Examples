//
//  Filter07.m
//  C4Examples
//
//  Created by travis on 2014-06-12.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Filter07.h"

@implementation Filter07

-(void)setup {
    C4Image *img = [C4Image imageNamed:@"C4Table"];
    img.center = self.canvas.center;
    [self.canvas addControl:img];
    
    [img colorMatrix:C4BLUE bias:0.1f];
}

@end
