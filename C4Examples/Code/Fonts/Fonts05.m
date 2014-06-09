//
//  Fonts05.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Fonts05.h"

@implementation Fonts05

-(void)setup {
    //get all the family names
    NSArray *familyNames = [C4Font familyNames];
    
    C4ScrollView *sv = [C4ScrollView scrollView:self.canvas.bounds];
    sv.contentInset = UIEdgeInsetsMake(10, 10, 10, 10);
    
    CGPoint point = CGPointZero;
    //cycle thought all the family names, creating labels for each one
    for(NSString *familyName in familyNames) {
        C4Font *f = [C4Font fontWithName:familyName size:14.0f];
        C4Label *l = [C4Label labelWithText:familyName font:f];
        l.origin = point;
        point.y += l.height;
        [sv addControl:l];
    }
    sv.contentSize = CGSizeMake(0, point.y);
    [self.canvas addControl:sv];
}
@end