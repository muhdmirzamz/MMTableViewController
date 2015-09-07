//
//  MMTableViewController.m
//  MMTableViewController
//
//  Created by Muhd Mirza on 6/9/15.
//  Copyright (c) 2015 Muhd Mirza. All rights reserved.
//

#import "MMTableViewController.h"

@implementation MMTableViewController {
	NSIndexPath *selectedIndexPath;
	NSIndexPath *prevIndexPath;
}

@synthesize tableItems, cellIdentifier;

- (id)initWithStyle:(UITableViewStyle)style {
	self = [super initWithStyle:style];
	
	if (self) {
		// custom init for properties cell identifier and table items
	}
	
	return self;
}

- (id)initWithCellSettings: (NSString*)cell AndTableItems: (NSArray*)items {
	self = [super initWithStyle:UITableViewStylePlain];
	
	if (self) {
		self.cellIdentifier = cell;
		self.tableItems = items;
	}
	
	return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return self.tableItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];
	
	if (cell == nil) {
		cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:self.cellIdentifier];
	}
	
	cell.textLabel.text = [self.tableItems objectAtIndex:indexPath.row];
	
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	prevIndexPath = selectedIndexPath;
	selectedIndexPath = indexPath;

	UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:selectedIndexPath];
	[selectedCell setAccessoryType:UITableViewCellAccessoryCheckmark];
	[tableView deselectRowAtIndexPath:selectedIndexPath animated:YES];
	
	UITableViewCell *prevCell = [tableView cellForRowAtIndexPath:prevIndexPath];
	[prevCell setAccessoryType:UITableViewCellAccessoryNone];
}

@end
