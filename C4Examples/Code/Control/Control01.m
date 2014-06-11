//
//  Control01.m
//  C4Examples
//
//  Created by travis on 2014-06-11.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control01.h"

@implementation Control01 {
    C4Shape *s1, *s2, *s3;
}

-(void)setup {
    [self setupShapes];
    
    s1.alpha = 1.0f;
    s2.alpha = 0.6f;
    s3.alpha = 0.3f;
}

-(void) setupShapes {
    CGRect rect = CGRectMake(0, 0, 100, 100);
    
    s1 = [C4Shape rect:rect];
    s2 = [C4Shape rect:rect];
    s3 = [C4Shape rect:rect];
    
    s1.center = CGPointMake(self.canvas.center.x, self.canvas.center.y - 125);
    s2.center = self.canvas.center;
    s3.center = CGPointMake(self.canvas.center.x, self.canvas.center.y + 125);
    
    [self.canvas addObjects:@[s1,s2,s3]];
}

@end
