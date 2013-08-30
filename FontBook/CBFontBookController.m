//
//  CBFontBookController.m
//  FontBook
//
//  Created by ly on 8/30/13.
//  Copyright (c) 2013 ly. All rights reserved.
//

#import "CBFontBookController.h"
#import "CBEditorController.h"
#import "CBFontCell.h"

@interface CBFontBookController ()

@end

@implementation CBFontBookController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Title view
    UILabel *titleView = [CBFontBookDefault defaultTitleView];
    titleView.text = @"Font book";
    [titleView sizeToFit];
    self.navigationItem.titleView = titleView;

    // Set default row height for cell
    [self.tableView setRowHeight:[CBFontCell defaultHeight]];
}

- (void)fontLoaded
{
    [self.tableView reloadData];
}

#pragma mark - Table view datasource and delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSString *fontFamily = [[self fontFamilies] objectAtIndex:section];
    NSArray *fontNames = [[self fonts] valueForKey:fontFamily];
    
    return [fontNames count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [[self fontFamilies] count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [[self fontFamilies] objectAtIndex:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"Cell Identifier";
    CBFontCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell) {
        cell = [[CBFontCell alloc] initWithStyle:UITableViewCellStyleDefault
                                 reuseIdentifier:identifier];
    }
    [self configureCell:cell atIndexPath:indexPath];
    
    return cell;
}

- (void)configureCell:(CBFontCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger section = indexPath.section;
    NSUInteger row = indexPath.row;
    NSString *fontFamily = [[self fontFamilies] objectAtIndex:section];
    NSString *fontName = [[[self fonts] valueForKey:fontFamily] objectAtIndex:row];
    
    cell.fontNameLabel.text = fontName;
    cell.fontTextLabel.text = @"苹果公司（Apple Inc.）是美国一家高科技公司。";
    cell.fontTextLabel.font = [UIFont fontWithName:fontName size:[UIFont labelFontSize]];
}

// Configure selection
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSUInteger section = indexPath.section;
    NSUInteger row = indexPath.row;
    NSString *fontFamily = [[self fontFamilies] objectAtIndex:section];
    NSString *fontName = [[[self fonts] valueForKey:fontFamily] objectAtIndex:row];
    
    CBEditorController *editorController = [[CBEditorController alloc]
        initWithNibName:@"CBEditorController" bundle:nil];
    editorController.textViewFont = [UIFont fontWithName:fontName
                                                    size:[UIFont labelFontSize]];
    [self.navigationController pushViewController:editorController animated:YES];
}


@end
