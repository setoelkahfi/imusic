//
//  ArchivingViewController.m
//  iMusic
//
//  Created by SDMobile.
//  Copyright (c) 2016 Streetdirectory Pte Ltd. All rights reserved.
//

#import "ArchivingViewController.h"

@interface ArchivingViewController ()

@end

@implementation ArchivingViewController

#pragma mark - Properties

@synthesize fileURL = _fileURL;
@synthesize buttonReadArchivedData = _buttonReadArchivedData;
@synthesize buttonWriteArchivedData = _buttonWriteArchivedData;


#pragma mark - View lifecycle

- (void)viewDidLoad {
	[super viewDidLoad];
}

- (void)viewDidUnload {
	[super viewDidUnload];
}


- (IBAction)writeArchivedData:(id)sender {
    NSLog(@"Write data");
}

- (IBAction)readArchivedData:(id)sender {
    NSLog(@"Read data");
}

@end
