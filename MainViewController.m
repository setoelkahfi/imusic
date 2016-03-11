//
//  MainViewController.m
//  iMusic
//
//  Created by SDMobile.
//  Copyright (c) 2016 Streetdirectory Pte Ltd. All rights reserved.
//

#import "MainViewController.h"
#import "AboutViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation MainViewController


#pragma mark - Properties

@synthesize buttonViewList = _buttonViewList;
@synthesize buttonAbout = _buttonAbout;

#pragma mark - View lifecycle

- (void)viewDidLoad {
	[super viewDidLoad];
    _buttonViewList.layer.borderWidth = 1.0f;
    _buttonViewList.layer.borderColor = [[UIColor blackColor] CGColor];
    
    _buttonAbout.layer.borderWidth = 1.0f;
    _buttonAbout.layer.borderColor = [[UIColor blackColor] CGColor];
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
