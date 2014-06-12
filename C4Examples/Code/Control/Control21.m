//
//  Control21.m
//  C4Examples
//
//  Created by travis on 2014-06-12.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control21.h"

@implementation Control21 {
    C4Shape *s1, *s2, *s3;
}

-(void)setup {
    [self setupShapes];
    
    s1.shadowColor = C4RED;
    s2.shadowColor = C4BLUE;
    s3.shadowColor = C4GREY;
}

-(void) setupShapes {
    CGRect ellipseRect = CGRectMake(0, 0, 100, 100);
    
    s1 = [C4Shape ellipse:ellipseRect];
    s2 = [C4Shape ellipse:ellipseRect];
    s3 = [C4Shape ellipse:ellipseRect];
    
    CGPoint currentCenter = self.canvas.center;
    
    currentCenter.y -= 125;
    s1.center = currentCenter;
    s1.shadowOffset = CGSizeMake(15, 15);
    
    currentCenter.y += 125;
    s2.center = currentCenter;
    s2.shadowOffset = CGSizeMake(15, 15);
    
    currentCenter.y += 125;
    s3.center = currentCenter;
    s3.shadowOffset = CGSizeMake(15, 15);
    
    s1.shadowOpacity = 0.8f;
    s2.shadowOpacity = 0.8f;
    s3.shadowOpacity = 0.8f;
    
    [self.canvas addObjects:@[s1,s2,s3]];
}
@end
