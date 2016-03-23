//
//  AlbumIntTests.m
//  iMusic
//
//  Created by SDMobile on 3/23/16.
//  Copyright © 2016 Streetdirectory Pte Ltd. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Album.h"

@interface AlbumIntTests : XCTestCase

@end

@implementation AlbumIntTests

- (void)setUp {
    [super setUp];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"iMusic" ofType:@"data"];
    NSURL *sourceURL = [NSURL fileURLWithPath:path];
    NSArray *urls = [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
    NSURL *destinationURL = [[urls lastObject] URLByAppendingPathComponent:@"iMusic.data"];
    [[NSFileManager defaultManager] removeItemAtURL:destinationURL error:nil];
    [[NSFileManager defaultManager] copyItemAtURL:sourceURL toURL:destinationURL error:nil];
}

- (void)testFindAll {
    NSArray *albums = [Album findAll];
    NSUInteger expectedCount = 12;
    XCTAssertEqual([albums count], expectedCount);
}

- (void)testSaveAlbum {
    NSUInteger origAlbumCount = [[Album findAll] count];
    
    Artist *theBeatles = [Artist artistWithID:1000 name:@"The Beatles"];
    Album *abbeyRoad = [[Album alloc] init];
    
    abbeyRoad.albumID = 2000;
    abbeyRoad.albumName = @"Abbey Road";
    abbeyRoad.artist = theBeatles;
    
    [abbeyRoad save];
    
    NSArray *albums = [Album findAll];
    NSArray *albumNames = [albums valueForKeyPath:@"albumName"];
    XCTAssertTrue([albumNames containsObject:@"Abbey Road"]);
    XCTAssertEqual([albums count], origAlbumCount + 1);
    
}
- (void)testDeleteAlbum {
    NSArray *albums = [Album findAll];
    NSUInteger origAlbumCount = [albums count];
    
    Album *album = [albums objectAtIndex:0];
    NSNumber *deletedAlbumID = [NSNumber numberWithUnsignedInteger:album.albumID];
    
    [album deleteAlbum];
    
    albums = [Album findAll];
    XCTAssertEqual([albums count], origAlbumCount - 1);
    NSArray *albumIDs = [albums valueForKeyPath:@"albumID"];
    XCTAssertFalse([albumIDs containsObject:deletedAlbumID]);
}

@end
