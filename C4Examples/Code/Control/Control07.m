//
//  Control07.m
//  C4Examples
//
//  Created by travis on 2014-06-11.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control07.h"

@implementation Control07 {
    C4Image *image1, *image2;
}

-(void)setup {
    [self setupShapes];
    
    //you can change the frame of images and movies in the following way
    image2.frame = CGRectMake(image1.center.x, image1.center.y, self.canvas.width /2, 160);
}

-(void) setupShapes {
    image1 = [C4Image imageNamed:@"C4Sky"];
    image2 = [C4Image imageNamed:@"C4Sky"];
    
    image1.center = self.canvas.center;
    
    [self.canvas addObjects:@[image1,image2]];
}
@end
