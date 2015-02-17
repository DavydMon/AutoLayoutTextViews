//
//  ALAutoResizingTextViewTableViewController.m
//  AutoLayoutTextViewsDemo
//
//  Created by Anthony Miller on 11/4/14.
//  Copyright (c) 2014 App-Order, LLC. All rights reserved.
//

#import "ALAutoResizingTextViewTableViewController.h"
#import "ALTextViewCell.h"

@implementation ALAutoResizingTextViewTableViewController

- (void)viewDidLoad
{
  [super viewDidLoad];  
  [self configureTableView];
}

- (void)configureTableView
{
  self.tableView.rowHeight = UITableViewAutomaticDimension;
  self.tableView.estimatedRowHeight = 44.0;
}

#pragma mark - ALAutoResizingTextViewDelegate

- (void)textView:(ALAutoResizingTextView *)textView didChangeFromHeight:(CGFloat)oldHeight toHeight:(CGFloat)newHeight
{
  [self.tableView beginUpdates];
  [self.tableView endUpdates];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return [self.tableView dequeueReusableCellWithIdentifier:@"ALTextViewCell" forIndexPath:indexPath];
}

@end
