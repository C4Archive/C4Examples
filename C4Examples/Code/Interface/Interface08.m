//
//  Interface08.m
//  C4Examples
//
//  Created by travis on 2014-06-17.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Interface08.h"

@implementation Interface08

-(void)setup {
    C4Shape *shape = [C4Shape rect:CGRectMake(0, 0, 200, 200)];
    shape.center = self.canvas.center;
    shape.fillColor = [UIColor clearColor];
    
    C4Stepper *stepper = [C4Stepper stepper];
    stepper.maximumValue = 10.0f;
    stepper.minimumValue = 0.0f;
    stepper.center = CGPointMake(shape.center.x, shape.center.y + 150);
    
    [stepper run:^{
        shape.strokeStart = stepper.value/10.0f;
    } forEvent:VALUECHANGED];
    
    [self.canvas addObjects:@[shape,stepper]];
}

@end
