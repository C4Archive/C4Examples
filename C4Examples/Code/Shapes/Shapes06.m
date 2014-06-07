//
//  Shapes06.m
//  C4Examples
//

#import "Shapes06.h"

@implementation Shapes06

-(void)setup {
    CGRect frame = CGRectMake(0, 0, 150, 150);
    C4Shape *defaultColorShape = [C4Shape ellipse:frame];
    defaultColorShape.center = CGPointMake(self.canvas.center.x, self.canvas.height / 3.);
    
    //create and position the shape with custom colors
    C4Shape *customColorShape = [C4Shape ellipse:frame];
    customColorShape.center = CGPointMake(self.canvas.center.x, self.canvas.height * 2 / 3.);;
    
    //set the fill and stroke colors for the custom shape
    customColorShape.fillColor = [UIColor lightGrayColor];
    customColorShape.strokeColor = C4RED;
    
    //add the shapes to the canvas
    [self.canvas addObjects:@[defaultColorShape,customColorShape]];
}

@end
