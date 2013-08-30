//
//  CBFontCell.m
//  FontBook
//
//  Created by ly on 8/30/13.
//  Copyright (c) 2013 ly. All rights reserved.
//

#import "CBFontCell.h"

@implementation CBFontCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        _fontNameLabel = [UILabel new];
        _fontTextLabel = [UILabel new];
        
        _fontTextLabel.font = [UIFont systemFontOfSize:TitleFontSize];
        _fontNameLabel.backgroundColor = [UIColor clearColor];
        _fontTextLabel.backgroundColor = [UIColor clearColor];
        
        [self.contentView addSubview:_fontNameLabel];
        [self.contentView addSubview:_fontTextLabel];
    }
    return self;
}

#pragma mark - Reuse
- (void)prepareForReuse
{
    [super prepareForReuse];
    self.fontNameLabel.text = @"";
    self.fontTextLabel.text = @"";
}

#pragma mark - Layout subviews
- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    [self layoutMySubviews];
}

- (void)layoutMySubviews
{
    CGFloat w = CGRectGetWidth(self.bounds);
    CGFloat y = [CBFontCell defaultHeight] - Padding - TextFontSize;
    
    _fontNameLabel.frame = CGRectMake(Padding, Padding, w-Paddingx2, TitleFontSize);
    _fontTextLabel.frame = CGRectMake(Padding, y, w-Paddingx2, TextFontSize);
    
    self.backgroundView.frame = self.bounds;
}

/*
- (void)layoutSubviews
{
    [super layoutSubviews];
}*/

#pragma mark - Class method
+ (CGFloat)defaultHeight
{
    return 62.0;
}

@end
