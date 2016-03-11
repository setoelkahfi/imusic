//
//  MainViewController.m
//  iMusic
//
//  Created by SDMobile.
//  Copyright (c) 2016 Streetdirectory Pte Ltd. All rights reserved.
//

#import "MainViewController.h"
#import "AboutViewController.h"

@implementation MainViewController

#pragma mark - View lifecycle

- (void)viewDidLoad {
	[super viewDidLoad];
}

- (void)viewDidUnload {
	[super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
}

- (IBAction)showAboutView:(id)sender {
    id controller = [[AboutViewController alloc] initWithNibName:@"AboutView" bundle:NULL];
    [self presentViewController:controller animated:YES completion:NULL];
}

- (IBAction)showList:(id)sender {
    NSLog(@"Show list");
}

@end
