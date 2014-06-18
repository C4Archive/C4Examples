//
//  Shapes21.m
//  C4Examples
//
//  Created by travis on 2014-06-18.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Shapes21.h"

@implementation Shapes21 {
    C4Shape *bezierCurve, *quadraticCurve;
    C4Shape *controlA, *controlB, *controlC;
}

-(void)setup {
    //create the end points for the bezier curve
    CGPoint bezierEndPoints[2] = {
        CGPointMake(0.3f*self.canvas.width,self.canvas.height/3),
        CGPointMake(0.7f*self.canvas.width,self.canvas.height/3)
    };
    
    //create the control points for the bezier curve
    CGPoint bezierControlPoints[2] = {CGPointMake(32,32), CGPointMake(self.canvas.width-32,32)};
    
    //create the bezier curve
    bezierCurve = [C4Shape curve:bezierEndPoints controlPoints:bezierControlPoints];
    [self.canvas addControl:bezierCurve];
    
    //create the end points for the bezier curve
    CGPoint quadEndPoints[2] = {
        CGPointMake(0.3f*self.canvas.width,self.canvas.height*2/3),
        CGPointMake(0.7f*self.canvas.width,self.canvas.height*2/3)
    };
    
    //create the control point for the quadratic curve
    CGPoint quadControlPoint = self.canvas.center;
    quadControlPoint.y = self.canvas.height - 32;
    
    //create the bezier curve
    quadraticCurve = [C4Shape quadCurve:quadEndPoints controlPoint:quadControlPoint];
    [self.canvas addControl:quadraticCurve];
    
    //create 3 control shapes
    CGRect controlFrame = CGRectMake(0, 0, 44, 44);
    controlA = [C4Shape ellipse:controlFrame];
    controlB = [C4Shape ellipse:controlFrame];
    controlC = [C4Shape ellipse:controlFrame];
    
    //move control shapes points to the coordinates of the curve control points
    controlA.center = bezierControlPoints[0];
    controlB.center = bezierControlPoints[1];
    controlC.center = quadControlPoint;
    
    //style the control shapes
    controlA.lineWidth = controlB.lineWidth = controlC.lineWidth = 0.0f;
    controlB.fillColor = C4RED;
    controlC.fillColor = C4GREY;
    
    [self.canvas addControl:controlA];
    [self.canvas addControl:controlB];
    [self.canvas addControl:controlC];
    
    //add drag gestures to the control shapes
    [controlA onPan:^(CGPoint location, CGPoint translation, CGPoint velocity) {
        [controlA move:location];
        bezierCurve.controlPointA = controlA.center;
    }];
    
    [controlB onPan:^(CGPoint location, CGPoint translation, CGPoint velocity) {
        [controlB move:location];
        bezierCurve.controlPointB = controlB.center;
    }];
    
    [controlC onPan:^(CGPoint location, CGPoint translation, CGPoint velocity) {
        [controlC move:location];
        quadraticCurve.controlPoint = controlC.center;
    }];
}

@end