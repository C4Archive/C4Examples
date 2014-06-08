//
//  Labels20.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Labels20.h"

@implementation Labels20 {
    C4Label *baselines, *centers, *none;
}

-(void)setup {
    [self setupLabels];
    
    // adjust font size, label alignments only work if this is done first
    baselines.adjustsFontSizeToFitWidth = YES;
    centers.adjustsFontSizeToFitWidth = YES;
    none.adjustsFontSizeToFitWidth = YES;
    
    // align label baselines
    baselines.baselineAdjustment = ALIGNBASELINES; // default
    centers.baselineAdjustment = ALIGNBASELINECENTERS;
    none.baselineAdjustment = ALIGNBASELINENONE;
}

-(void)setupLabels {
    //create a label font
    C4Font *customFont = [C4Font fontWithName:@"DINAlternate-Bold" size:50.0f];
    
    NSString *text;
    //create the labels
    text = @" ALIGNBASELINES: Phasellus sollicitudin consequat neque, eget id.";
    baselines = [C4Label labelWithText:text font:customFont];
    baselines.borderWidth = 1.0f;
    baselines.width = self.canvas.width * 0.96f;
    baselines.center = CGPointMake(self.canvas.center.x,self.canvas.height/4);
    
    text = @" ALIGNBASELINECENTERS: Phasellus sollicitudin consequat neque id.";
    centers = [C4Label labelWithText:text font:customFont];
    centers.borderWidth = 1.0f;
    centers.width = self.canvas.width * 0.96f;
    centers.center = CGPointMake(self.canvas.center.x,self.canvas.height/2);
    
    text = @" ALIGNBASELINENONE: Phasellus sollicitudin consequat neque eg id.";
    none = [C4Label labelWithText:text font:customFont];
    none.borderWidth = 1.0f;
    none.width = self.canvas.width * 0.96f;
    none.center = CGPointMake(self.canvas.center.x,self.canvas.height*3/4);
    
    [self.canvas addObjects:@[baselines,centers,none]];
}

@end
