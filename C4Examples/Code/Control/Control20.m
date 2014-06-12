//
//  Control20.m
//  C4Examples
//
//  Created by travis on 2014-06-12.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control20.h"

@implementation Control20

-(void) setup {
    CGRect frame = CGRectMake(0, 0, 300, 75);
    
    C4Shape *s1 = [C4Shape rect:frame];
    C4Shape *s2 = [C4Shape rect:frame];
    s2.strokeColor = C4RED;
    
    CGPoint currentCenter = self.canvas.center;
    s1.center = currentCenter;
    s2.center = currentCenter;
    
    s2.rotation = TWO_PI/4.0f;
    [self.canvas addObjects:@[s1,s2]];
}

@end
