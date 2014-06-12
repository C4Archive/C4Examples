//
//  Control27.m
//  C4Examples
//
//  Created by travis on 2014-06-12.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control27.h"

@implementation Control27 {
    C4Shape *s1, *s2;
}

-(void)setup {
    [self setupShapes];
    
    CGAffineTransform myTransform = CGAffineTransformMakeTranslation(100, 100); //First we make a transform
    s2.transform = myTransform; //Then we apply it to our shape
}

-(void) setupShapes {
    CGRect rect = CGRectMake(0, 0, 100, 100);
    
    s1 = [C4Shape rect:rect];
    s2 = [C4Shape rect:rect];
    s2.strokeColor = C4RED;
    
    s1.center = self.canvas.center;
    
    s2.center = s1.center;
    [self.canvas addObjects:@[s1,s2]];
}

@end