//
//  Run01.m
//  C4Examples
//
//  Created by travis on 2014-06-18.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Run01.h"

@implementation Run01

//you can delay the execution of methods like so...
-(void)setup {
    [self run:^{
        [self red];
    } afterDelay:.5f];
}

-(void)red {
    self.canvas.backgroundColor = C4RED;
    [self run:^{
        [self blue];
    } afterDelay:.5f];
}

-(void)blue {
    self.canvas.backgroundColor = C4BLUE;
    [self run:^{
        [self grey];
    } afterDelay:.5f];
}

-(void)grey {
    self.canvas.backgroundColor = C4GREY;
    [self run:^{
        [self red];
    } afterDelay:.5f];
}

@end
