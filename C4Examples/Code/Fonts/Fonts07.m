//
//  Fonts07.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Fonts07.h"

@implementation Fonts07

-(void)setup {
    //get all the family names
    NSArray *familyNamesArray = [C4Font familyNames];
    
    C4ScrollView *sv = [C4ScrollView scrollView:self.canvas.bounds];
    sv.contentInset = UIEdgeInsetsMake(10, 10, 10, 10);
    
    CGPoint point = CGPointZero;
    //cycle thought all the family names, creating labels for each one
    for(NSString *familyName in familyNamesArray) {
        NSArray *fontNames = [C4Font fontNamesForFamilyName:familyName];
        for(NSString *fontName in fontNames) {
            C4Font *f = [C4Font fontWithName:fontName size:14.0f];
            C4Label *l = [C4Label labelWithText:fontName font:f];
            l.origin = point;
            point.y += l.height;
            [sv addControl:l];
        }
    }
    sv.contentSize = CGSizeMake(0,point.y);
    [self.canvas addControl:sv];
}

@end
