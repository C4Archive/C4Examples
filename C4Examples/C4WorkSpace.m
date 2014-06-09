//
//  C4WorkSpace.m
//  Examples
//
//  Created by Travis Kirton
//

#import "C4WorkSpace.h"

@implementation C4WorkSpace

-(void)setup {
    //will print to the console ALL the family names of availble fonts
    NSArray *familyNames = [C4Font familyNames];
    
    for(NSString *familyName in familyNames) {
        NSArray *fontNames = [C4Font fontNamesForFamilyName:familyName];
        for (NSString *s in fontNames) {
            C4Log(s);
        }
    }
}

@end