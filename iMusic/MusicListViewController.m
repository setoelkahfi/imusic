//
//  MusicListViewController.m
//  iMusic
//
//  Created by SDMobile.
//  Copyright (c) 2016 Streetdirectory Pte Ltd. All rights reserved.
//

#import "MusicListViewController.h"

@interface MusicListViewController ()

@end

@implementation MusicListViewController

- (void)viewDidLoad {
	[super viewDidLoad];

}

- (void)viewDidUnload {
	[super viewDidUnload];

}

#pragma mark - UITableViewDataSource Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *CellIdentifier = @"Cell";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

	// Configure the cell...

	return cell;
}

/*
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
}
*/

#pragma mark - UITableViewDelegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
}

@end
