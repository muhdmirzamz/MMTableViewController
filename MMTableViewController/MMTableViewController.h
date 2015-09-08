//
//  MMTableViewController.h
//  MMTableViewController
//
//  Created by Muhd Mirza on 6/9/15.
//  Copyright (c) 2015 Muhd Mirza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMTableViewController : UITableViewController<UITableViewDataSource, UITableViewDelegate>

@property NSArray *tableItems;

// override these
- (id)initWithStyle:(UITableViewStyle)style;
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

@end
