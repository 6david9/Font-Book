//
//  CBEditorController.m
//  FontBook
//
//  Created by ly on 8/30/13.
//  Copyright (c) 2013 ly. All rights reserved.
//

#import "CBEditorController.h"

@interface CBEditorController ()

@end

@implementation CBEditorController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Title view
    UILabel *titleView = [CBFontBookDefault defaultTitleView];
    titleView.text = @"Preview";
    [titleView sizeToFit];
    self.navigationItem.titleView = titleView;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.textView.font = self.textViewFont;
}

@end
