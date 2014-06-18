//
//  C4WorkSpace.m
//  Examples
//
//  Created by Travis Kirton
//

#import "C4WorkSpace.h"

@implementation C4WorkSpace{
    C4Shape *s1, *s2;
}

-(void)setup {
    CGRect shapeFrame = CGRectMake(0, 0, 100, 100);
    s1 = [C4Shape ellipse:shapeFrame];
    s2 = [C4Shape ellipse:shapeFrame];
    CGPoint centerPoint = self.canvas.center;
    centerPoint.y -= 75;
    s1.center = centerPoint;
    centerPoint.y += 150;
    s2.center = centerPoint;
    
    [s1 onTap:^(CGPoint location) {
        [s1 tapped:location];
    }];
    
    [s2 onTap:^(CGPoint location) {
        [s2 tapped:location];
    }];
        
    [self listenFor:@"tapped" andRun:^(NSNotification *n) {
        C4Shape *shape = (C4Shape *)n.object;
        shape.fillColor = [UIColor colorWithRed:[C4Math randomInt:100]/100.0f
                                          green:[C4Math randomInt:100]/100.0f
                                           blue:[C4Math randomInt:100]/100.0f
                                          alpha:1.0f];
    }];
    
    [self.canvas addObjects:@[s1, s2]];
}

@end