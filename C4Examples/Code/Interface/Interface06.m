//
//  Interface06.m
//  C4Examples
//
//  Created by travis on 2014-06-17.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Interface06.h"

@implementation Interface06

-(void)setup {
    CGPoint p = self.canvas.center;

    C4Shape *shape = [C4Shape rect:CGRectMake(0, 0, 200, 200)];
    shape.center = p;
    
    C4Slider *slider = [C4Slider slider:CGRectMake(0, 0, 300, 44)];
    p.y += 150;
    slider.center = p;
    
    [slider run:^{
        shape.rotation = slider.value * TWO_PI;
    } forEvent:VALUECHANGED];

    [self.canvas addObjects:@[shape,slider]];
}

@end