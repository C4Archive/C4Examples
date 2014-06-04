//
//  C4WorkSpace.m
//  C4Examples
//

#import "C4Workspace.h"

@implementation C4WorkSpace

-(void)setup {
    //create some shapes
    C4Shape *line = [self createLine];
    C4Shape *triangle = [self createTriangle];
    C4Shape *polygon = [self createPolygon];
    C4Shape *random = [self createRandom];
    
    //add them to an array
    NSArray *shapes = @[line, triangle, polygon, random];
    
    //position the shapes
    for (int i = 0; i < shapes.count; i++) {
        C4Shape *shape = shapes[i];
        shape.center = CGPointMake(self.canvas.center.x, self.canvas.height / 5 * (i+1));
    }
    
    //add the shapes to the canvas
    [self.canvas addObjects:shapes];
}

-(C4Shape *)createLine {
    CGPoint pts[2];    //create a 2 point array
    pts[1] = CGPointMake(100, 100);
    return [C4Shape line:pts];
}

-(C4Shape *)createTriangle {
    CGPoint pts[3];    //create a 3 point array
    pts[1] = CGPointMake(0, 100);
    pts[2] = CGPointMake(100, 0);
    return [C4Shape triangle:pts];
}

-(C4Shape *)createPolygon {
    CGPoint pts[4];    //create a 4 point array
    pts[1] = CGPointMake(0, 100);
    pts[2] = CGPointMake(100, 0);
    pts[3] = CGPointMake(100, 100);
    return [C4Shape polygon:pts pointCount:4];
}

-(C4Shape *)createRandom {
    NSInteger randomCount = [C4Math randomInt:10]+10;    //create an array between 10 and 20 points
    CGPoint pts[randomCount];
    for(int i = 0; i < randomCount; i++)
        pts[i] = CGPointMake([C4Math randomInt:100], [C4Math randomInt:100]);
    return [C4Shape polygon:pts pointCount:10];
}

@end