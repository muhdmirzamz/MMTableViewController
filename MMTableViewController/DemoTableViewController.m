//
//  DemoTableViewController.m
//  MMTableViewController
//
//  Created by Muhd Mirza on 6/9/15.
//  Copyright (c) 2015 Muhd Mirza. All rights reserved.
//

#import "DemoTableViewController.h"

@implementation DemoTableViewController

- (id)initWithStyle:(UITableViewStyle)style {
	self = [super initWithStyle:style];
	
	if (self) {
		self.tableItems = [NSArray arrayWithObjects:@"Hello", @"Bye", nil];
	}
	
	return self;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	[self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
	
	cell.textLabel.text = [self.tableItems objectAtIndex:indexPath.row];
	
	return cell;
}

@end
