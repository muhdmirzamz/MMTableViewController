//
//  DemoTableViewController.m
//  MMTableViewController
//
//  Created by Muhd Mirza on 6/9/15.
//  Copyright (c) 2015 Muhd Mirza. All rights reserved.
//

#import "DemoTableViewController.h"

@implementation DemoTableViewController

/*
// or you can just call this method from this class to set the properties
- (void)viewDidLoad {
	self.cellIdentifier = @"cell";
	self.tableItems = [NSArray arrayWithObjects:@"Hello", @"Bye", nil];
}
*/

- (id)initWithStyle:(UITableViewStyle)style {
	self = [super initWithStyle:style];
	
	if (self) {
		self.cellIdentifier = @"cell";
		self.tableItems = [NSArray arrayWithObjects:@"Hello", @"Bye", nil];
	}
	
	return self;
}

@end
