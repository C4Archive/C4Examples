//
//  Shapes11.m
//  C4Examples
//
//  Created by Slant on 2014-06-04.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Shapes11.h"

@implementation Shapes11 {
    NSMutableArray *shapes;
}

-(void)setup {
    [self createShapesAndLabels];
    
    C4Shape *s;
    
    s = shapes[1];
    s.lineJoin = JOINROUND;
    
    s = shapes[2];
    s.lineJoin = JOINBEVEL;
}

-(void)createShapesAndLabels {
    C4Shape *template = [C4Shape defaultTemplate].proxy;
    template.lineWidth = 20.;
    template.fillColor = [UIColor clearColor];
    
    shapes = [@[] mutableCopy];
    
    NSArray *colors = @[C4RED,C4BLUE,C4GREY];
    NSArray *text = @[@"JOINMITER (default)",@"JOINROUND",@"JOINBEVEL"];
    C4Font *font = [C4Font fontWithName:@"DINAlternate-Bold" size:20];
    for (int i = 0; i < 3; i++) {
        C4Shape *s = [C4Shape rect:CGRectMake(0, 0, 240, 60)];
        s.strokeColor = colors[i];
        C4Label *l = [C4Label labelWithText:text[i] font:font];
        l.userInteractionEnabled = NO;
        l.center = s.center;
        
        [s addControl:l];
        s.center = CGPointMake(self.canvas.center.x, self.canvas.center.y + 100 * (i-1));
        [shapes addObject:s];
    }
    
    [self.canvas addObjects:shapes];
}
@end
