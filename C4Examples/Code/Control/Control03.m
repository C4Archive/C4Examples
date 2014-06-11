//
//  Control03.m
//  C4Examples
//
//  Created by travis on 2014-06-11.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control03.h"

@implementation Control03

-(void)setup {
    C4Image *img = [C4Image imageNamed:@"C4Sky"];
    img.center = self.canvas.center;
    img.borderWidth = 10.0f;    //you have to set the width to see the border
    [self.canvas addControl:img];
}

@end
