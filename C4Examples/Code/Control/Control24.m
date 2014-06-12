//
//  Control24.m
//  C4Examples
//
//  Created by travis on 2014-06-12.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control24.h"

@implementation Control24 {
    C4Shape *s1, *s2;
}

-(void)setup {
    [self setupShapes];
    s1.shadowPath = s2.path;
}

-(void) setupShapes {
    s1 = [C4Shape ellipse:CGRectMake(0, 0, 150, 150)];
    s1.center = self.canvas.center;
    s1.shadowOpacity = 0.8;
    s1.shadowOffset = CGSizeMake(30,30);
    
    s2 = [C4Shape rect:s1.frame];
    [self.canvas addControl:s1];
}
@end