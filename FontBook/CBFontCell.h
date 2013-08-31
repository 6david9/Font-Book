//
//  CBFontCell.h
//  FontBook
//
//  Created by ly on 8/30/13.
//  Copyright (c) 2013 ly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CBFontCell : UITableViewCell

@property (strong, nonatomic) UILabel *fontNameLabel;
@property (strong, nonatomic) UILabel *fontTextLabel;


+ (CGFloat)defaultHeight;

@end
