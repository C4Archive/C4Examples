//
//  Control25.m
//  C4Examples
//
//  Created by travis on 2014-06-12.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control25.h"

@implementation Control25 {
    C4Shape *s1, *s2, *s3;
}

-(void)setup {
    [self setupShapes];
    
    s1.shadowRadius = 1.0f;
    s2.shadowRadius = 5.f;
    s3.shadowRadius = 10.f;
}

-(void) setupShapes {
    CGRect ellipseRect = CGRectMake(0, 0, 100, 100);
    
    s1 = [C4Shape ellipse:ellipseRect];
    s2 = [C4Shape ellipse:ellipseRect];
    s3 = [C4Shape ellipse:ellipseRect];
    
    CGPoint currentCenter = self.canvas.center;
    
    currentCenter.y -= 125;
    s1.center = currentCenter;
    s1.shadowOffset = CGSizeMake(10,10);
    s1.shadowOpacity = .8f;
    
    currentCenter.y += 125;
    s2.center = currentCenter;
    s2.shadowOffset = CGSizeMake(10,10);
    s2.shadowOpacity = .8f;
    
    currentCenter.y += 125;
    s3.center = currentCenter;
    s3.shadowOffset = CGSizeMake(10,10);
    s3.shadowOpacity = .8f;
    
    [self.canvas addObjects:@[s1,s2,s3]];
}
@end