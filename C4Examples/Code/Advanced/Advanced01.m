//
//  Advanced01.m
//  C4Examples
//
//  Created by travis on 2014-06-18.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Advanced01.h"

@implementation Advanced01 {
    C4Shape *arc1;
    CGPoint pts[2];
}

-(void)setup {
    [self run:^{
        [self arcDraw];
    } afterDelay:1.0f];
}

-(void)arcDraw {
    int i = [self.canvas.view.subviews count];
    if(i == 0) pts[0] = CGPointMake((CGFloat)[C4Math randomInt:(int)self.canvas.width],self.canvas.center.y);
    else pts[0] = pts[1];
    pts[1] = CGPointMake((CGFloat)[C4Math randomInt:(int)self.canvas.width], self.canvas.center.y);
    
    BOOL up = (i % 2 == 0) ? YES : NO;
    
    C4Shape *arc = [self arcBetweenPoints:pts up:up];
    
    [self.canvas addControl:arc];
    [self run:^{
        [self animateArc:arc];
    } afterDelay:0] ;
    
    [self run:^{
        [self arcDraw];
    } afterDelay:1.0f];
}

-(C4Shape *)arcBetweenPoints:(CGPoint *)beginEndPoints up:(BOOL)up {
    CGPoint p1 = beginEndPoints[0];
    CGPoint p2 = beginEndPoints[1];
    CGFloat radius = [C4Math absf:p2.x - p1.x]/2;
    CGPoint center = self.canvas.center;
    if(p2.x > p1.x) {
        center.x = p1.x + radius;
    } else {
        center.x = p2.x + radius;
    }
    
    CGFloat startAngle;
    if(up == YES) startAngle = PI;
    
    else startAngle = 0;
    CGFloat endAngle = startAngle + PI;
    
    C4Shape *s = [C4Shape arcWithCenter:center radius:radius
                             startAngle:startAngle endAngle:endAngle clockwise:YES];
    
    s.fillColor = [UIColor clearColor];
    
    if(p2.x > p1.x) {
        if(up) {
            s.strokeEnd = 0.0f;
        } else {
            s.strokeStart = 1.0f;
        }
    } else {
        if(up) {
            s.strokeStart = 1.0f;
        } else {
            s.strokeEnd = 0.0f;
        }
    }
    
    if(up) s.strokeColor = C4GREY;
    return s;
}

-(void)animateArc:(C4Shape *)arc {
    arc.animationDuration = 1.0f;
    if(arc.strokeStart == 1.0f) arc.strokeStart = 0.0f;
    else arc.strokeEnd = 1.0f;
}
@end