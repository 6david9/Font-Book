//
//  CBFontCell.h
//  FontBook
//
//  Created by ly on 8/30/13.
//  Copyright (c) 2013 ly. All rights reserved.
//

#import <UIKit/UIKit.h>

#define Padding         5.0
#define Paddingx2       10.0

#define TitleFontSize       [UIFont labelFontSize]
#define TextFontSize        35.0
#define TextLabelY          0

@interface CBFontCell : UITableViewCell

@property (strong, nonatomic) UILabel *fontNameLabel;
@property (strong, nonatomic) UILabel *fontTextLabel;


+ (CGFloat)defaultHeight;

@end
