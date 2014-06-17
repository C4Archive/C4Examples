//
//  Math04.m
//  C4Examples
//
//  Created by travis on 2014-06-17.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Math04.h"

@implementation Math04 {
    C4Slider *slider;
    C4Shape *pathShape;
}

-(void)setup {
    [self createAndAddPathShapes];
    [self createAndAddSlider];
}

-(CGPoint)calcuatePointFor:(CGFloat)x {
    // for atan we need to change the scope of x to [-10 to 10] (instead of [-1 to 1] like 	we would with asin or acos, or [0 to TWO_PI] like we would with sin, cos and tan).
    CGFloat calX = ((x/self.canvas.width)-0.5f)*20.0f;   // calibrated to [-10 to 10]
    CGFloat y = [C4Math atan:calX];                     // create Y
    
    y *= 100;                   //scale height to 100 points
    y *= -1;                    //invert for iOS screen coords
    y += self.canvas.height/2;  //move to halfway down the screen
    
    return CGPointMake(x,y);
}

-(void)createAndAddSlider {
    CGFloat width = self.canvas.width * 0.8f;
    width = [C4Math minOfA:width B:320];
    slider = [[C4Slider alloc] initWithFrame:CGRectMake(0, 0, width, 44)];
    slider.center = self.canvas.center;
    [slider run:^{
        pathShape.strokeEnd = slider.value;
    } forEvent:VALUECHANGED];
    [self.canvas addControl:slider];
}

-(void)createAndAddPathShapes {
    NSInteger stepWidth = 1;
    NSInteger steps = (NSInteger)self.canvas.width / stepWidth +1;
    CGPoint p[steps];
    
    for(int currentStep = 0; currentStep < steps; currentStep++) {
        CGFloat x = currentStep * stepWidth;
        p[currentStep] = [self calcuatePointFor:x];
    }
    
    pathShape = [C4Shape polygon:p pointCount:steps];
    pathShape.userInteractionEnabled = NO;
    pathShape.fillColor = [UIColor clearColor];
    pathShape.strokeEnd = slider.value;
    pathShape.lineCap = CAPROUND;
    
    
    [self.canvas addControl:pathShape];
}

@end