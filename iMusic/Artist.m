//
//  Artist.m
//  iMusic
//
//  Created by SDMobile.
//  Copyright (c) 2016 Streetdirectory Pte Ltd. All rights reserved.
//

#import "Artist.h"

#define ARTIST_ID_KEY @"artistID"
#define ARTIST_NAME_KEY @"artistName"

@implementation Artist

@synthesize artistID = _artistID;
@synthesize artistName = _artistName;

+ (id)artistWithID:(NSUInteger)artistID name:(NSString *)artistName {
    return [[[self class] alloc] initWithID:artistID name:artistName];
}

- (id)initWithID:(NSUInteger)artistID name:(NSString *)artistName {
    self = [super init];
    if (self) {
        self.artistID = artistID;
        self.artistName = artistName;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        self.artistID = [aDecoder decodeIntegerForKey:ARTIST_ID_KEY];
        self.artistName = [aDecoder decodeObjectForKey:ARTIST_NAME_KEY];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeInteger:self.artistID forKey:ARTIST_ID_KEY];
    [aCoder encodeObject:self.artistName forKey:ARTIST_NAME_KEY];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%lu - %@", self.artistID, self.artistName];
}

@end
