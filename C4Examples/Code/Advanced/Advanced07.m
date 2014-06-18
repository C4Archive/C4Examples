//
//  Advanced07.m
//  C4Examples
//
//  Created by travis on 2014-06-18.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Advanced07.h"

@implementation Advanced07 {
    CGFloat diameter;
    C4Shape *bigCircle;
}

-(void)setup {
    diameter = 600;
    if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) diameter = 300;
    bigCircle = [C4Shape ellipse:CGRectMake(0, 0, diameter, diameter)];
    bigCircle.center = self.canvas.center;
    bigCircle.strokeColor = [UIColor clearColor];
    [self.canvas addControl:bigCircle];
    for (int i = 0; i < 50; i ++) {
        [self makeCircle];
    }
    
    bigCircle.animationDuration = 7.5f;
    bigCircle.animationOptions = REPEAT;
    bigCircle.rotation += TWO_PI;
}

-(void)makeCircle {
    C4Shape *circle = [C4Shape ellipse:CGRectMake(0, 0, 5, 5)];
    circle.center = CGPointMake(diameter/2, diameter/2);
    [bigCircle addControl:circle];
    [self newPlace:circle];
}

-(void)newPlace:(C4Shape *)shape {
    CGFloat time = ([C4Math randomInt:250]/100.0f) + 1.0f;
    shape.animationDuration = time;
    NSInteger r = [C4Math randomIntBetweenA:100 andB:diameter/2.1];
    CGFloat theta = DegreesToRadians([C4Math randomInt:360]);
    shape.center = CGPointMake(r*[C4Math cos:theta] + (bigCircle.width/2),
                               r*[C4Math sin:theta] + (bigCircle.height/2));
    [self run:^{
        [self newPlace:shape];
    } afterDelay:time];
}

@end