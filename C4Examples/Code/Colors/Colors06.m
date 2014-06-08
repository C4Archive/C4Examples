//
//  Colors06.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Colors06.h"

@implementation Colors06{
    C4Shape *alpha1, *alpha2, *alpha3, *alpha4;
}

-(void)setup {
    [self setupShapes];
    
    UIColor *c = C4BLUE;
    
    //create transparent colors from the original color
    alpha1.fillColor = [c colorWithAlphaComponent:0.8];
    alpha2.fillColor = [c colorWithAlphaComponent:0.6];
    alpha3.fillColor = [c colorWithAlphaComponent:0.4];
    alpha4.fillColor = [c colorWithAlphaComponent:0.2];
}

-(void)setupShapes {
    CGRect horizontalFrame = CGRectMake(0, 0, 300, 100);
    CGRect verticalFrame = CGRectMake(0, 0, 100, 300);
    
    alpha1 = [C4Shape rect:horizontalFrame];
    alpha2 = [C4Shape rect:verticalFrame];
    alpha3 = [C4Shape rect:horizontalFrame];
    alpha4 = [C4Shape rect:verticalFrame];
    
    alpha1.lineWidth = alpha2.lineWidth = alpha3.lineWidth = alpha4.lineWidth = 0.0f;
    
    CGPoint p = self.canvas.center;
    
    p.x -= 150;
    p.y -= 150;
    alpha1.origin = p;
    alpha4.origin = p;
    
    p.x +=200;
    alpha2.origin = p;
    
    p.x -=200;
    p.y +=200;
    alpha3.origin = p;
    
    [self.canvas addObjects:@[alpha1,alpha2,alpha3,alpha4]];
}
@end
