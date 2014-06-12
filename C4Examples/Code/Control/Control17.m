//
//  Control17.m
//  C4Examples
//
//  Created by travis on 2014-06-12.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control17.h"

@implementation Control17

-(void)setup {
    C4Image *img = [C4Image imageNamed:@"C4Sky"];
    C4Shape *rect = [C4Shape rect:CGRectMake(0, 0, 400, 50)];
    
    img.center = self.canvas.center;
    rect.center = CGPointMake(img.width/2 ,img.height/2);
    img.mask = rect;
    [self.canvas addControl:img];
    
    rect.animationDuration = 1.5f;
    rect.animationOptions = REPEAT | LINEAR;
    rect.rotation += TWO_PI;
}

@end
