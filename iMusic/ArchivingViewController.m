//
//  ArchivingViewController.m
//  iMusic
//
//  Created by SDMobile.
//  Copyright (c) 2016 Streetdirectory Pte Ltd. All rights reserved.
//

#import "ArchivingViewController.h"
#import "Artist.h"
#import "Album.h"

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
    NSArray *urls = [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
    self.fileURL = [[urls lastObject] URLByAppendingPathComponent:@"iMusic.data"];
}

- (void)viewDidUnload {
	[super viewDidUnload];
}


- (IBAction)writeArchivedData:(id)sender {
    
    NSMutableArray *items = [NSMutableArray array];
    
    [items addObject:@"Hello"];
    [items addObject:[NSDate date]];
    [items addObject:[NSNumber numberWithFloat:12.0]];
    
    NSData *fileData = [NSKeyedArchiver archivedDataWithRootObject:items];
    [fileData writeToURL:self.fileURL atomically:YES];
    
    NSLog(@"app dir: %@",[[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject]);
}

- (IBAction)readArchivedData:(id)sender {
    NSLog(@"Read data");
}

@end
