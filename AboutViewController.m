//
//  PreferencesViewController.m
//  iMusic
//
//  Created by SDMobile.
//  Copyright (c) 2016 Streetdirectory Pte Ltd. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

#pragma mark - View lifecycle

- (void)viewDidLoad {
	[super viewDidLoad];
}

- (void)viewDidUnload {
	[super viewDidUnload];
}

- (IBAction)dismissAboutView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (IBAction)resetSampleData:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"iMusic" ofType:@"data"];
    NSURL *sourceURL = [NSURL fileURLWithPath:path];
    NSArray *urls = [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
    NSURL *destinationURL = [[urls lastObject] URLByAppendingPathComponent:@"iMusic.data"];
    [[NSFileManager defaultManager] removeItemAtURL:destinationURL error:nil];
    [[NSFileManager defaultManager] copyItemAtURL:sourceURL toURL:destinationURL error:nil];
}
@end
