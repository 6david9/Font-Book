//
//  CBDownloadingController.m
//  FontBook
//
//  Created by ly on 8/31/13.
//  Copyright (c) 2013 ly. All rights reserved.
//

#import "CBDownloadingController.h"

@interface CBDownloadingController ()

@end

@implementation CBDownloadingController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Title view
    UILabel *titleView = [CBFontBookDefault defaultTitleView];
    titleView.text = @"Downloading";
    [titleView sizeToFit];
    self.myNavigationItem.titleView = titleView;
}

- (IBAction)finish
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Table view datasource and delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 0;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"Cell Identifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:identifier];
    }
    [self configureCell:cell atIndexPath:indexPath];
    
    return cell;
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    
}

@end
