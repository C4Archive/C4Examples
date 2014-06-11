//
//  C4WorkSpace.m
//  Examples
//
//  Created by Travis Kirton
//

#import "C4WorkSpace.h"

@implementation C4WorkSpace {
    C4Image *m, *img;
}

-(void)setup {
    img = [C4Image imageNamed:@"C4Sky"];
    
    m = [C4Image imageNamed:@"C4Gradient"];
    m.width = img.width;
    
    img.mask = m;
    
    img.center = self.canvas.center;
    [self.canvas addControl:img];
}

@end