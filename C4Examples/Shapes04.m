//
//  Shapes01.m
//  C4Examples
//

#import "Shapes04.h"

@implementation Shapes04

-(void)setup {
    CGFloat radius = 75;
    
    CGPoint arcCenter = CGPointMake(self.canvas.center.x, self.canvas.height / 3.);
    C4Shape *clockwiseArc, *counterClockwiseArc;
    
    //create the counter-clockwise arc
    counterClockwiseArc = [C4Shape arcWithCenter:arcCenter radius:radius startAngle:0 endAngle:PI*2/3 clockwise:NO];
    [counterClockwiseArc closeShape];
    
    //create the clockwise arc, first shifting the center of the arc
    arcCenter.x += 8;
    arcCenter.y += 14;
    clockwiseArc = [C4Shape arcWithCenter:arcCenter radius:radius startAngle:0 endAngle:PI*2/3 clockwise:YES];
    [clockwiseArc closeShape];
    
    
    CGPoint wedgeCenter = CGPointMake(self.canvas.center.x, self.canvas.height * 2 / 3.);
    C4Shape *clockwiseWedge, *counterClockwiseWedge;
    //create the counter-clockwise wedge
    counterClockwiseWedge = [C4Shape wedgeWithCenter:wedgeCenter radius:radius startAngle:0 endAngle:PI*2/3 clockwise:NO];
    
    //create the clockwise wedge, first shifting the center of the wedge
    wedgeCenter.x += 9;
    wedgeCenter.y += 14;
    clockwiseWedge = [C4Shape wedgeWithCenter:wedgeCenter radius:radius startAngle:0 endAngle:PI*2/3 clockwise:YES];
    
    //add the shapes to the canvas
    [self.canvas addObjects:@[counterClockwiseArc,clockwiseArc,counterClockwiseWedge,clockwiseWedge]];
}

@end