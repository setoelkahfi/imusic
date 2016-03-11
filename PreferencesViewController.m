//
//  PreferencesViewController.m
//  iMusic
//
//  Created by SDMobile.
//  Copyright (c) 2016 Streetdirectory Pte Ltd. All rights reserved.
//

#import "PreferencesViewController.h"

@interface PreferencesViewController ()

@end

@implementation PreferencesViewController

#pragma mark - View lifecycle

- (void)viewDidLoad {
	[super viewDidLoad];
}

- (void)viewDidUnload {
	[super viewDidUnload];
}

- (IBAction)dismissPreferences:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end
