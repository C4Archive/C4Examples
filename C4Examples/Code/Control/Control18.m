//
//  Control18.m
//  C4Examples
//
//  Created by travis on 2014-06-12.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control18.h"

@implementation Control18 {
    C4Image *img;
    C4Shape *s1, *s2;
}

-(void)setup {
    [self setupShapes];
    img.mask = s1;
    [s1 addControl:s2];
    [self.canvas addControl:img];
}

-(void)setupShapes {
    img = [C4Image imageNamed:@"C4Sky"];
    s1 = [C4Shape rect:CGRectMake(0, 0, 600, 50)];
    s2 = [C4Shape rect:CGRectMake(0, 0, 50, 600)];
    
    img.center = self.canvas.center;
    s1.center = CGPointMake(img.width/2 ,img.height/2);
    s2.center = CGPointMake(s1.width/2 ,s1.height/2);
    
    s1.animationDuration = 1.71f;
    s1.animationOptions = REPEAT;
    s1.rotation -= PI;
    
    s2.animationDuration = 2.23f;
    s2.animationOptions = REPEAT | AUTOREVERSE;
    s2.rotation += TWO_PI;
}
@end