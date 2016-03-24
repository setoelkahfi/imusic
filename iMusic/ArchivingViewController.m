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
    
    Artist *artist = [Artist artistWithID:1 name:@"The Beatles"];
    
    Album *album = [[Album alloc] init];
    album.albumID = 1;
    album.albumName = @"Rubber Soul";
    album.artist = artist;
    
    Album *album2 = [[Album alloc] init];
    album2.albumID = 1;
    album2.albumName = @"Revolver";
    album2.artist = artist;
    
    [album saveAlbum];
    [album2 saveAlbum];
    
    NSLog(@"app dir: %@",[[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject]);
}

- (IBAction)readArchivedData:(id)sender {
    
    NSArray *albums = [Album findAllAlbums];
    for (id album in albums) {
        NSLog(@"%@", album);
    }
    
}

@end
