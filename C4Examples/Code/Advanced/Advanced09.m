//
//  Advanced09.m
//  C4Examples
//
//  Created by travis on 2014-06-18.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Advanced09.h"

@implementation Advanced09 {
    C4Image *img;
    C4Shape *container;
}

-(void)setup {
    [self setupShapes];
    img.backgroundColor = C4BLUE;
    img.mask = container;
    [self.canvas addControl:img];
}

-(void)setupShapes {
    img = [C4Image imageNamed:@"C4Table"];
    img.height = self.canvas.height;
    container = [C4Shape rect:CGRectMake(0, 0, 300, self.canvas.height)];
    container.fillColor = [UIColor clearColor];
    container.lineWidth = 0;
    [self addVisibleContainer];
    
    img.center = self.canvas.center;
    container.center = CGPointMake(img.width/2 ,img.height/2);
    for (int i = 0; i < 30; i ++) {
        [self makeStrip];
    }
}

-(void)makeStrip {
    CGFloat h = [C4Math randomIntBetweenA:1 andB:100];
    C4Shape *strip = [C4Shape rect:CGRectMake(0, 0, 300, h)];
    strip.center = CGPointMake(container.width/2 ,container.height/2);
    strip.alpha = 0.3f;
    [container addControl:strip];
    [self newPlace:strip];
}

-(void)newPlace: (C4Shape *)sender {
    CGFloat time = ([C4Math randomInt:350]/100.0f) + 1.5f;
    sender.animationDuration = time;
    sender.center = CGPointMake(sender.center.x, [C4Math randomInt:container.height]);
    [self run:^{
        [self newPlace:sender];
    } afterDelay:time];
}

-(void)addVisibleContainer {
    C4Shape *visibleContainer = [C4Shape rect:container.frame];
    visibleContainer.center = self.canvas.center;
    visibleContainer.fillColor = [UIColor clearColor];
    visibleContainer.lineWidth = .0f;
    [self.canvas addControl:visibleContainer];
}

@end