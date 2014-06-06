//
//  Shapes12.m
//  C4Examples
//
//  Created by Slant on 2014-06-04.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Shapes12.h"

@implementation Shapes12 {
    C4Shape *start, *end, *both;
}

-(void)setup {
    [self createShapes];
    
    [self run:^{ [self animate]; } afterDelay:1.0f];
}

-(void)animate {
    start.animationDuration = 2.0f;
    start.animationOptions = AUTOREVERSE | REPEAT;
    start.strokeStart = 1.0f;
    
    end.animationDuration = 2.0f;
    end.animationOptions = AUTOREVERSE | REPEAT;
    end.strokeEnd = 0.0f;
    
    both.animationDuration = 2.0f;
    both.animationOptions = AUTOREVERSE | REPEAT;
    both.strokeStart = 0.5f;
    both.strokeEnd = 0.5f;
}

-(void)createShapes {
    C4Shape * template = [C4Shape defaultTemplate].proxy;
    template.fillColor = [UIColor clearColor];
    template.lineWidth = 30.0f;
    
    CGRect shapeFrame = CGRectMake(0, 0, self.canvas.height/6, self.canvas.height/6);
    
    //first shape will animate the start to the end
    start = [C4Shape ellipse:shapeFrame];
    start.center = CGPointMake(self.canvas.center.x, self.canvas.height/4);
    
    //second shape will animate the end to the start
    end = [C4Shape ellipse:shapeFrame];
    end.strokeColor = C4RED;
    end.center = self.canvas.center;
    
    //third shape will animate the start and end to a mid-point
    both = [C4Shape ellipse:shapeFrame];
    both.strokeColor = C4GREY;
    both.center = CGPointMake(self.canvas.center.x, self.canvas.height*3/4);
    [self.canvas addObjects:@[start,end,both]];
}
@end
