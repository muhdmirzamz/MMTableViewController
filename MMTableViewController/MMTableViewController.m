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

@synthesize tableItems;

- (id)initWithStyle:(UITableViewStyle)style {
	self = [super initWithStyle:style];
	
	if (self) {
		// custom init for table items
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
	// override
	
	// remember to register your cell beforehand
	// eg: [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
	
	return nil;
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
