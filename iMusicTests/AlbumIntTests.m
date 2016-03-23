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

@end
