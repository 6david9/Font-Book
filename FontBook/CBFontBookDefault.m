//
//  CBFontBookDefault.m
//  FontBook
//
//  Created by ly on 8/30/13.
//  Copyright (c) 2013 ly. All rights reserved.
//

#import "CBFontBookDefault.h"

@implementation CBFontBookDefault

+ (UILabel *)defaultTitleView
{
    UILabel *titleView = [[UILabel alloc] init];
    titleView.font = [UIFont fontWithName:@"Avenir-BlackOblique" size:28.0];
    titleView.textColor = [UIColor grayColor];
    titleView.backgroundColor = [UIColor clearColor];
    titleView.textAlignment = NSTextAlignmentCenter;
    return titleView;
}

@end
