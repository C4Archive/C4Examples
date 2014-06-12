//
//  Control26.m
//  C4Examples
//
//  Created by travis on 2014-06-12.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control26.h"

@implementation Control26 {
    C4Shape *s1, *s2;
}

-(void)setup {
    [self setupShapes];
    
    CGAffineTransform myTransform = CGAffineTransformMakeScale(3.0f, 0.33f); //First we make a transform
    s2.transform = myTransform; //Then we apply it to our shape
}

-(void) setupShapes {
    CGRect rect = CGRectMake(0, 0, 100, 200);
    
    s1 = [C4Shape rect:rect];
    s2 = [C4Shape rect:rect];
    s2.strokeColor = C4RED;
    
    CGPoint currentCenter = self.canvas.center;
    
    s1.center = currentCenter;
    s2.center = currentCenter;
    [self.canvas addObjects:@[s1,s2]];
}
@end