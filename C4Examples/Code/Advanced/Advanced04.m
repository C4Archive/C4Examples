//
//  Advanced04.m
//  C4Examples
//
//  Created by travis on 2014-06-18.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Advanced04.h"

@implementation Advanced04{
    C4Shape *circle;
    CGFloat red, blue, grey;
    NSInteger rc, bc, gc;
    C4Label *rl, *bl, *gl;
}

-(void)setup {
    // percent chance of each color being chosen (total must equal 100)
    red = 30.0f;
    blue = 55.0f;
    grey = 15.0f;
    
    [self setupCircle];
    [self setupLabels];
    [self.canvas addControl:circle];
    
    [self run:^{
        [self changeColors];
    } afterDelay:1.5f];
}

-(void)reset {
    circle.animationDuration = 0.0f;
    circle.strokeEnd = 0.0f;
    [self run:^{
        [self changeColors];
    } afterDelay:0.1f];
}

-(void) changeColors {
    [self weightedProbability];
    [self updateLabels];
    [self run:^{
        [self changeColors];
    } afterDelay:1.5f];
}

-(void)weightedProbability {
    CGFloat chance = [C4Math randomInt:100];
    if (chance <= red) {
        circle.fillColor = C4RED;
        rc++;
    }
    if (chance > red && chance <= red + blue){
        circle.fillColor = C4BLUE;
        bc++;
    }
    if (chance > red + blue && chance <= red + blue + grey){
        circle.fillColor = C4GREY;
        gc++;
    }
}

-(void) setupCircle {
    circle = [C4Shape ellipse:CGRectMake(0, 0, 200, 200)];
    circle.center = self.canvas.center;
    circle.animationOptions = LINEAR;
    circle.strokeEnd = 0;
    circle.strokeColor = [UIColor blackColor];
    circle.rotation -= PI/2;
    circle.lineWidth = 10.0f;
    circle.fillColor = [UIColor clearColor];
    [self runLineAnimation];
}

-(void)runLineAnimation {
    circle.animationOptions = LINEAR | REPEAT;
    circle.animationDuration = 1.5f;
    circle.strokeEnd = 1.0f;
}

-(void) setupLabels {
    NSString *rs = [NSString stringWithFormat:@"Red:  %3i times", rc];
    NSString *bs = [NSString stringWithFormat:@"Blue: %3i times", bc];
    NSString *gs = [NSString stringWithFormat:@"Grey: %3i times", gc];
    rl = [C4Label labelWithText:rs];
    bl = [C4Label labelWithText:bs];
    gl = [C4Label labelWithText:gs];
    
    CGPoint labelCenter = self.canvas.center;
    labelCenter.y += 150;
    rl.center = labelCenter;
    labelCenter.y += 30;
    bl.center = labelCenter;
    labelCenter.y += 30;
    gl.center = labelCenter;
    [self.canvas addObjects:@[rl, bl, gl]];
}

-(void) updateLabels {
    NSString *rs = [NSString stringWithFormat:@"Red:  %3i times", rc];
    NSString *bs = [NSString stringWithFormat:@"Blue: %3i times", bc];
    NSString *gs = [NSString stringWithFormat:@"Grey: %3i times", gc];
    rl.text = rs;
    [rl sizeToFit];
    bl.text = bs;
    [bl sizeToFit];
    gl.text = gs;
    [gl sizeToFit];
    
}
@end
