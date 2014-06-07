//
//  Shapes01.m
//  C4Examples
//

#import "Shapes05.h"

@implementation Shapes05

-(void)setup {
    //create a font (120 is big enough for an iPad, make it smaller for iPod/iPhone)
    C4Font *font = [C4Font fontWithName:@"DINAlternate-Bold" size:240.0f];
    
    //create a shape using a string and font
    C4Shape *textShape = [C4Shape shapeFromString:@"C4" withFont:font];
    textShape.center = self.canvas.center;
    
    //add the shape to the canvas
    [self.canvas addControl:textShape];
}

@end