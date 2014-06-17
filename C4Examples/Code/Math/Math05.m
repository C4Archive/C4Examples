//
//  Math05.m
//  C4Examples
//
//  Created by travis on 2014-06-17.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Math05.h"

@implementation Math05 {
    NSMutableArray *shapes;
}

-(void)setup {
    shapes = [@[] mutableCopy];
    
    NSInteger columns = 15;
    NSInteger rows = 15;
    
    for (int i = 0; i < columns; i ++){
        for (int j = 0; j < rows; j ++ ) {
            C4Shape *shape = [C4Shape rect:CGRectMake(0, 0, 50, 2)];
            shape.anchorPoint = CGPointMake(0.0,0.5);
            CGFloat newX = ((self.canvas.width/columns) * i) + ((self.canvas.width/columns)/2);
            CGFloat newY = ((self.canvas.height/rows) * j) + ((self.canvas.height/rows)/2);
            
            shape.center = CGPointMake(newX, newY);
            shape.userInteractionEnabled = NO;
            shape.strokeColor = [UIColor clearColor];
            [shapes addObject:shape];
        }
    }
    [self.canvas addObjects:shapes];
}

-(void)panned:(CGPoint)location translation:(CGPoint)translation velocity:(CGPoint)velocity {
    for (C4Shape *shape in shapes) {
        CGFloat arctangent = [C4Math atan2Y:location.y-shape.center.y X:location.x-shape.center.x];
        shape.rotation = arctangent;
    }
}

@end