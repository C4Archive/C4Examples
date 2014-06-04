//
//  Shapes01.m
//  C4Examples
//

#import "Shapes07.h"

@implementation Shapes07 {
    C4Shape *poly1, *poly2;
}

-(void)setup {
    [self createAndStylePolygons];
    [self createLabels];
    
    //define the fill rules for each polygon
    poly1.fillRule = FILLNORMAL; //Default value
    poly2.fillRule = FILLEVENODD;
}

-(void)createAndStylePolygons {
    //the base width for the polygons
    CGPoint polyPoints[7] = {
        CGPointZero,
        CGPointMake(150,-150),
        CGPointMake(200,-100),
        CGPointMake(100,0),
        CGPointMake(0,-100),
        CGPointMake(50,-150),
        CGPointMake(200,0)
    };
    
    //create poly1 and style it
    poly1 = [C4Shape polygon:polyPoints pointCount:7];
    poly1.center = CGPointMake(self.canvas.center.x, self.canvas.height / 3.);
    
    //create poly2 and style it
    poly2 = [C4Shape polygon:polyPoints pointCount:7];
    poly2.center = CGPointMake(self.canvas.center.x, self.canvas.height * 2/3);
    
    //add all the polygons to the canvas
    [self.canvas addObjects:@[poly1,poly2]];
}

-(void)createLabels {
    C4Font *f = [C4Font fontWithName:@"DINAlternate-Bold" size:18.0f];
    
    //create the FILLNORMAL label, center it to the base of poly1
    C4Label *normal = [C4Label labelWithText:@"FILLNORMAL" font:f];
    normal.center = CGPointMake(poly1.center.x, poly1.center.y - poly1.height/2 - normal.height);
    
    //create the FILLEVENODD label, center it to the base of poly2
    C4Label *evenodd = [C4Label labelWithText:@"FILLEVENODD" font:f];
    evenodd.center = CGPointMake(poly2.center.x, poly2.center.y + poly2.height/2 + evenodd.height);
    [self.canvas addObjects:@[normal, evenodd]];
}

@end
