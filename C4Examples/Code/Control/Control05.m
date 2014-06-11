//
//  Control05.m
//  C4Examples
//
//  Created by travis on 2014-06-11.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control05.h"

@implementation Control05 {
    C4Shape *s1, *s2;
}

-(void)setup {
    [self setupShapes];
    s1.center = self.canvas.center;
    s2.center = s1.center;
}

-(void) setupShapes {
    CGRect rect = CGRectMake(0, 0, 100, 100);
    
    s1 = [C4Shape rect:rect];
    s2 = [C4Shape ellipse:rect];
    
    [self.canvas addObjects:@[s1,s2]];
}

@end