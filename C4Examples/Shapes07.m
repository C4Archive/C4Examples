//
//  Shapes01.m
//  C4Examples
//

#import "Shapes07.h"

@implementation Shapes07

-(void)setup {
    C4Shape *rectangle, *square, *circle, *ellipse;
    
    //Create a rectangle
    rectangle = [C4Shape rect:CGRectMake(0, 0, 200, 100)];
    
    //Create a square (same w & h)
    square = [C4Shape rect:CGRectMake(0, 0, 100, 100)];
    
    //Create an ellipse
    ellipse = [C4Shape ellipse:CGRectMake(0, 0, 200, 100)]; // same dimensions as rectangle
    
    //Create a circle (same w & h)
    circle = [C4Shape ellipse:CGRectMake(0, 0, 100, 100)]; // same dimensions as square
    
    //Build an array with all the objects in it
    NSArray *shapes = @[square,rectangle,circle,ellipse];
    
    //Position them all
    for (int i = 0; i < shapes.count; i++) {
        C4Shape *s = shapes[i];
        s.center = CGPointMake(self.canvas.center.x, self.canvas.height / 5 * (i+1));
    }
    
    //add all the shapes to the canvas
    [self.canvas addObjects:shapes];
}

@end
