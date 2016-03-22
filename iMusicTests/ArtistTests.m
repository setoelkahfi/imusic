//
//  ArtistTests.m
//  iMusic
//
//  Created by SDMobile.
//  Copyright (c) 2016 Streetdirectory Pte Ltd. All rights reserved.
//

#import "ArtistTests.h"
#import "Artist.h"

@implementation ArtistTests

- (void)testInitWithIDName {
    NSUInteger artistID = 100;
    NSString *artistName = @"Metallica";
    
    Artist *artist = [[Artist alloc] initWithID:artistID name:artistName];
    
    XCTAssertEqual(artist.artistID, artistID);
    XCTAssertEqualObjects(artist.artistName, artistName);
}

@end
