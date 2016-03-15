//
//  ArchivingViewController.h
//  iMusic
//
//  Created by SDMobile.
//  Copyright (c) 2016 Streetdirectory Pte Ltd. All rights reserved.
//

@interface ArchivingViewController : UIViewController

#pragma mark - Properties

@property (nonatomic, copy) NSURL *fileURL;

#pragma mark - View components
@property (weak, nonatomic) IBOutlet UIButton *buttonWriteArchivedData;
@property (weak, nonatomic) IBOutlet UIButton *buttonReadArchivedData;

#pragma mark - Action

- (IBAction)writeArchivedData:(id)sender;
- (IBAction)readArchivedData:(id)sender;

@end
