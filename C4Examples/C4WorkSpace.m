//
//  C4WorkSpace.m
//  Examples
//
//  Created by Travis Kirton
//

#import "C4WorkSpace.h"
@implementation C4WorkSpace

-(void)setup {
    C4Image *img = [C4Image imageNamed:@"C4Table"];
    img.center = self.canvas.center;
    [self.canvas addControl:img];
    
    [img temperatureAndTint:CGSizeMake(6500, 200) target:CGSizeMake(6500, 500)];
}
@end