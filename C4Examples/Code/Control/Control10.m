//
//  Control10.m
//  C4Examples
//
//  Created by travis on 2014-06-11.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control10.h"

@implementation Control10 {
    C4Shape *s1, *s2;
}

-(void)setup {
    [self setupShapes];
    
	s2.origin = self.canvas.center;
}

-(void)setupShapes {
    CGRect rect = CGRectMake(0, 0, 120, 240);
    
    s1 = [C4Shape rect:rect];
	s1.center = self.canvas.center;
    
    s2 = [C4Shape rect:rect];
    s2.alpha = 0.75; //Lets change the alpha so we can see which one is which
    [self.canvas addObjects:@[s1,s2]];
}
@end