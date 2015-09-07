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
@property NSString *cellIdentifier;

// use this with an instance of the subclass in AppDelegate class
- (id)initWithCellSettings: (NSString*)cell AndTableItems: (NSArray*)items;

// subclass these
- (id)initWithStyle:(UITableViewStyle)style;
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

@end
