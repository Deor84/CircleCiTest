//
//  TestLabel.m
//  Test
//
//  Created by Michal Wierzbinski on 06/07/2015.
//  Copyright (c) 2015 Michal Wierzbinski. All rights reserved.
//

#import "TestLabel.h"

@implementation TestLabel

- (id)initWithFont:(UIFont *)font text:(NSString *)text
{
    CGSize size = CGSizeZero;

    size = [[NSString stringWithString:text] sizeWithFont:font];

    self = [self initWithFrame:CGRectMake(0.0, 0.0, size.width, size.height)];
    
    if (self)
    {
        // self.autoResizeFont = NO;
        
        // self.numberOfLines = 1;
        
        self.text = text;
        
        self.font = font;
        
        self.textColor = [UIColor whiteColor];
        
        self.backgroundColor = [UIColor blackColor];
        
        // [self sizeToFit];
    }
    
    return self;
}

@end
