//
//  Shapes01.m
//  C4Examples
//

#import "Shapes03.h"

@implementation Shapes03

-(void)setup {
    C4Shape *bezierCurve = [self createBezier]; //create the bezier
    bezierCurve.center = CGPointMake(self.canvas.center.x, self.canvas.height / 3.); //center it
    
    C4Shape *quadCurve = [self createQuad]; //create the quad
    quadCurve.center = CGPointMake(self.canvas.center.x, self.canvas.height * 2. / 3.); //center it
    
    [self.canvas addObjects:@[bezierCurve,quadCurve]]; //add the shapes to the canvas
}

-(C4Shape *)createBezier {
    CGPoint endPts[2] = {CGPointZero,CGPointMake(200,200)};
    CGPoint ctrlPts[2] = {CGPointMake(-100, 200), CGPointMake(300, 0)};
    return [C4Shape curve:endPts controlPoints:ctrlPts];
}

-(C4Shape *)createQuad {
    CGPoint endPts[2] = {CGPointZero,CGPointMake(200, 0)};
    CGPoint ctrlPt = CGPointMake(100, -200);
    return [C4Shape quadCurve:endPts controlPoint:ctrlPt];
}

@end