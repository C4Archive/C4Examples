//
//  Control11.m
//  C4Examples
//
//  Created by travis on 2014-06-11.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control11.h"

@implementation Control11 {
    C4Shape *s1, *s2, *s3;
}

-(void)setup {
    CGRect shapeFrame = CGRectMake(0, 0, 100, 100);
    s1 = [C4Shape rect:shapeFrame];
    s2 = [C4Shape rect:shapeFrame];
    s3 = [C4Shape rect:shapeFrame];
    
    CGPoint centerPoint = self.canvas.center;
    centerPoint.y -= 150;
    s1.center = centerPoint;
    centerPoint.y += 150;
    s2.center = centerPoint;
    centerPoint.y += 150;
    s3.center = centerPoint;
    [self.canvas addObjects:@[s1,s2,s3]];
    
    s1.perspectiveDistance = 75.0f;     //mega distortion, the "camera" is close to the object
    s2.perspectiveDistance = 150.0f;
    s3.perspectiveDistance = 1000.0f;
    
    [self animate];
}

-(void)animate {
    s1.animationDuration = 2.0f;
    s1.animationOptions = LINEAR | REPEAT;
    s1.rotationX += TWO_PI;
    
    s2.animationDuration = 2.0f;
    s2.animationOptions = LINEAR | REPEAT;
    s2.rotationX += TWO_PI;
    
    s3.animationDuration = 2.0f;
    s3.animationOptions = LINEAR | REPEAT;
    s3.rotationX += TWO_PI;
}

@end
