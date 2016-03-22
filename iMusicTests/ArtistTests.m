//
//  ArtistTests.m
//  iMusic
//
//  Created by SDMobile.
//  Copyright (c) 2016 Streetdirectory Pte Ltd. All rights reserved.
//

#import "ArtistTests.h"
#import "OCMock.h"
#import "Artist.h"

@implementation ArtistTests {
    NSUInteger artistID;
    NSString *artistName;
}

- (void)setUp {
    artistID = 100;
    artistName = @"Metallica";
}

- (void)testInitWithIDName {
    
    Artist *artist = [[Artist alloc] initWithID:artistID name:artistName];
    
    XCTAssertEqual(artist.artistID, artistID);
    XCTAssertEqualObjects(artist.artistName, artistName);
}

- (void)testArtistConvenienceInitializer {
    Artist *artist = [Artist artistWithID:artistID name:artistName];
    XCTAssertEqual(artist.artistID, artistID);
    XCTAssertEqualObjects(artist.artistName, artistName);
}

- (void)testAdoptsNSCoding {
    Artist *artist = [[Artist alloc] initWithID:artistID name:artistName];
    XCTAssertTrue([artist conformsToProtocol:@protocol(NSCoding)], @"Artist does not adopt NSCoding");
}

- (void)testInitWithCoder {
    id stubCoder = [OCMockObject mockForClass:[NSCoder class]];
    NSInteger localArtistID = (NSInteger)artistID;
    [[[stubCoder stub] andReturnValue:OCMOCK_VALUE(localArtistID)] decodeIntegerForKey:@"artistID"];
    [[[stubCoder stub] andReturn:artistName] decodeObjectForKey:@"artistName"];
    
    Artist *artist = [[Artist alloc] initWithCoder:stubCoder];
    
    XCTAssertEqual(artist.artistID, artistID);
    XCTAssertEqualObjects(artist.artistName, artistName);
}

@end
