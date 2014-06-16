//
//  C4WorkSpace.m
//  Examples
//
//  Created by Travis Kirton
//

#import "C4WorkSpace.h"

@implementation C4WorkSpace {
    C4Button *b;
}

-(void)setup {
//    C4Shape *b = [C4Shape rect:CGRectMake(0, 0, 100, 100)];
    b = [C4Button buttonWithType:ROUNDEDRECT];
    b.center = self.canvas.center;
    [b run:^{
        [self down];
    } forEvent:TOUCHDOWN];

    [b run:^{
        [self up];
    } forEvent:TOUCHUPINSIDE];
    
    [b run:^{
        [self cancel];
    } forEvent:TOUCHCANCEL];

    [self.canvas addControl:b];
}

-(void)down {
    C4Log(NSStringFromSelector(_cmd));
}

-(void)up {
    C4Log(NSStringFromSelector(_cmd));
}

-(void)cancel {
    C4Log(NSStringFromSelector(_cmd));
}
@end