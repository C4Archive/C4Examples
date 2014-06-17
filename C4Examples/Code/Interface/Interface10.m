//
//  Interface10.m
//  C4Examples
//
//  Created by travis on 2014-06-17.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Interface10.h"

@implementation Interface10

-(void)setup {
    C4Shape *shape = [C4Shape rect:CGRectMake(0, 0, 200, 200)];
    shape.center = self.canvas.center;
    [self.canvas addControl:shape];
    
    C4Switch *aSwitch = [C4Switch switch];
    aSwitch.center = CGPointMake(shape.center.x, shape.center.y + 150);
    
    [aSwitch run:^{
        if (aSwitch.isOn)
            shape.fillColor = C4RED;
        else
            shape.fillColor = C4GREY;
        
    } forEvent:VALUECHANGED];
    
    [self.canvas addControl:aSwitch];
}

@end
