//
//  Control13.m
//  C4Examples
//
//  Created by travis on 2014-06-11.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control13.h"

@implementation Control13 {
    NSMutableArray *shapes;
    NSMutableArray *labels;
}

-(void)adjustZPositions:(C4Shape *)shape {
    if(shape.zPosition != 3) {
        for(C4Shape *s in shapes) {
            if(s == shape) s.zPosition = 3;
            else s.zPosition = s.zPosition == 1 ? 1 : s.zPosition - 1;
        }
        [self setLabels];
    }
}

-(void)setLabels {
    for (int i = 0; i < shapes.count; i++) {
        C4Shape *currentShape = shapes[i];
        C4Label *currentLabel = labels[i];
        currentLabel.text = [NSString stringWithFormat:@"%d",(int)currentShape.zPosition];
    }
}

-(void)setup {
    shapes = [@[] mutableCopy];
    labels = [@[] mutableCopy];
    for (int i = 0; i < 3; i++) {
        C4Shape *s = [C4Shape ellipse:CGRectMake(0, 0, 160, 160)];
        s.zPosition = i+1;
        
        C4Label *l = [C4Label labelWithText:@"0"];
        if(i == 0) {
            s.center = CGPointMake(self.canvas.center.x - 40, self.canvas.center.y + 40);
            l.center = CGPointMake(s.center.x - s.width/2.1,s.center.y + s.height/2.1);
        } else if (i == 1) {
            s.center = CGPointMake(self.canvas.center.x, self.canvas.center.y - 40);
            l.center = CGPointMake(s.center.x,s.center.y - s.height/1.5);
        } else {
            s.center = CGPointMake(self.canvas.center.x + 40, self.canvas.center.y + 40);
            l.center = CGPointMake(s.center.x + s.width/2.1,s.center.y + s.height/2.1);
        }
        
        [s onTap:^(CGPoint location) {
            [self adjustZPositions:s];
        }];
        
        [shapes addObject:s];
        [labels addObject:l];
    }
    
    [self.canvas addObjects:shapes];
    [self.canvas addObjects:labels];
    [self setLabels];
}

@end
