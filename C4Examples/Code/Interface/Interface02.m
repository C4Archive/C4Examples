//
//  Interface02.m
//  C4Examples
//
//  Created by travis on 2014-06-17.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Interface02.h"

@implementation Interface02

-(void)setup {
    C4Button *button = [C4Button buttonWithType:ROUNDEDRECT];
    button.center = self.canvas.center;
    
    [button run:^{
        self.canvas.backgroundColor = C4RED;
    } forEvent:TOUCHDOWN];
    
    [button run:^{
        self.canvas.backgroundColor = C4BLUE;
    } forEvent:TOUCHUPINSIDE];
    
    [button run:^{
        self.canvas.backgroundColor = C4GREY;
    } forEvent:TOUCHUPOUTSIDE];
    
    [self.canvas addControl:button];
}

@end
