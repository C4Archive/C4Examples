//
//  Interface07.m
//  C4Examples
//
//  Created by travis on 2014-06-17.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Interface07.h"

@implementation Interface07

-(void)setup {
    C4Stepper *stepper = [C4Stepper stepper];
    stepper.center = self.canvas.center;
    [self.canvas addControl:stepper];
}

@end
