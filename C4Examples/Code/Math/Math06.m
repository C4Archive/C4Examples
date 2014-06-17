//
//  Math06.m
//  C4Examples
//
//  Created by travis on 2014-06-17.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Math06.h"

@implementation Math06 {
    C4Slider *slider;
    C4Shape *pathShape, *backgroundPath;
}

-(void)setup {
    [self createAndAddPathShapes];
    [self createAndAddSlider];
}

-(CGPoint)calculatePointFor:(CGFloat)x {
    CGFloat calX = x / self.canvas.width * TWO_PI;  // calibrated to [0 to TWO_PI]
    CGFloat y = [C4Math sin:calX];                  // create Y
    y *= 5;                                        // zoom in (scale height to 5 points)
    
    y = [C4Math ceil:y];    // round up
    
    y *= 20;                   //scale height to 100 points
    y *= -1;                    //invert for iOS screen coords
    y += self.canvas.height/2;  //move to halfway down the screen
    return CGPointMake(x,y);
}

-(CGPoint)normalPointFor:(CGFloat)x {
    CGFloat calX = x / self.canvas.width * TWO_PI;  // calibrated to the screen
    CGFloat y = [C4Math sin:calX] * 100 * -1;       // create Y and invert for iOS screen coords
    y += self.canvas.height/2;                      //move to halfway down the screen
    return CGPointMake(x,y);
}

-(void)createAndAddSlider {
    CGFloat width = self.canvas.width * 0.8f;
    width = [C4Math minOfA:width B:320];
    slider = [[C4Slider alloc] initWithFrame:CGRectMake(0, 0, width, 44)];
    slider.center = self.canvas.center;
    [self.canvas addControl:slider];
    [slider run:^{
        pathShape.strokeEnd = slider.value;
    } forEvent:VALUECHANGED];
}

-(void)createAndAddPathShapes {
    NSInteger stepWidth = 5;
    NSInteger steps = (NSInteger)self.canvas.width / stepWidth +1;
    CGPoint p[steps], b[steps];
    
    for(int currentStep = 0; currentStep < steps; currentStep++) {
        CGFloat x = currentStep * stepWidth;
        b[currentStep] = [self normalPointFor:x];
        p[currentStep] = [self calculatePointFor:x];
    }
    
    pathShape = [C4Shape polygon:p pointCount:steps];
    pathShape.userInteractionEnabled = NO;
    pathShape.fillColor = [UIColor clearColor];
    pathShape.strokeEnd = slider.value;
    pathShape.lineCap = CAPROUND;
    
    backgroundPath = [C4Shape polygon:b pointCount:steps];
    backgroundPath.userInteractionEnabled = NO;
    backgroundPath.fillColor = [UIColor clearColor];
    backgroundPath.strokeColor = C4GREY;
    backgroundPath.lineWidth = 2.0f;
    
    NSArray *patternArray = [NSArray arrayWithObjects:
                             [NSNumber numberWithInt:15],
                             [NSNumber numberWithInt:5],
                             nil];
    backgroundPath.lineDashPattern = patternArray;
    
    
    [self.canvas addObjects:@[backgroundPath,pathShape]];
}

@end