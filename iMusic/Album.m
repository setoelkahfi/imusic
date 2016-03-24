//
//  Album.m
//  iMusic
//
//  Created by SDMobile.
//  Copyright (c) 2016 Streetdirectory Pte Ltd. All rights reserved.
//

#import "Album.h"

#define ALBUM_ID_KEY            @"albumID"
#define ALBUM_NAME_KEY          @"albumName"
#define IMAGE_URL_STRING_KEY    @"imageURLString"
#define ALBUM_IMAGE_KEY         @"albumImage"
#define PRICE_KEY               @"price"
#define ITUNES_URL_STRING_KEY   @"iTunesURLString"
#define RELEASE_DATE_KEY        @"releaseDate"
#define GENRE_KEY               @"genre"
#define ARTIST_KEY              @"artist"

@implementation Album

@synthesize albumID =  _albumID;
@synthesize albumName =  _albumName;
@synthesize imageURLString = _imageUdRLString;
@synthesize albumImage = _albumImage;
@synthesize price = _price;
@synthesize iTunesURLString = _iTunesURLString;
@synthesize releaseDate = _releaseDate;
@synthesize genre = _genre;
@synthesize artist = _artist;

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        self.albumID = [aDecoder decodeIntegerForKey:ALBUM_ID_KEY];
        self.albumName = [aDecoder decodeObjectForKey:ALBUM_NAME_KEY];
        self.imageURLString = [aDecoder decodeObjectForKey:IMAGE_URL_STRING_KEY];
        self.albumImage = [aDecoder decodeObjectForKey:ALBUM_IMAGE_KEY];
        self.price = [aDecoder decodeObjectForKey:PRICE_KEY];
        self.iTunesURLString = [aDecoder decodeObjectForKey:ITUNES_URL_STRING_KEY];
        self.releaseDate = [aDecoder decodeObjectForKey:RELEASE_DATE_KEY];
        self.genre = [aDecoder decodeObjectForKey:GENRE_KEY];
        self.artist = [aDecoder decodeObjectForKey:ARTIST_KEY];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeInteger:self.albumID forKey:ALBUM_ID_KEY];
    [aCoder encodeObject:self.albumName forKey:ALBUM_NAME_KEY];
    [aCoder encodeObject:self.imageURLString forKey:IMAGE_URL_STRING_KEY];
    [aCoder encodeObject:self.albumImage forKey:ALBUM_IMAGE_KEY];
    [aCoder encodeObject:self.price forKey:PRICE_KEY];
    [aCoder encodeObject:self.iTunesURLString forKey:ITUNES_URL_STRING_KEY];
    [aCoder encodeObject:self.releaseDate forKey:RELEASE_DATE_KEY];
    [aCoder encodeObject:self.genre forKey:GENRE_KEY];
    [aCoder encodeObject:self.artist forKey:ARTIST_KEY];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%lu - %@", self.albumID, self.albumName];
}

+ (NSURL *)iMusicDataURL {
    NSArray *urls = [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
    return [[urls lastObject] URLByAppendingPathComponent:@"iMusic.data"];
}

+ (NSArray *)findAllAlbums {
    NSData *data = [NSData dataWithContentsOfURL:[self iMusicDataURL]];
    if (!data) {
        return [NSMutableArray array];
    }
    return [NSKeyedUnarchiver unarchiveObjectWithData:data];
}

- (BOOL)saveAlbum {
    NSMutableArray *albums = (NSMutableArray *)[[self class] findAllAlbums];
    [albums insertObject:self atIndex:0];
    NSData *fileData = [NSKeyedArchiver archivedDataWithRootObject:albums];
    return [fileData writeToURL:[[self class] iMusicDataURL] atomically:YES];
}

- (BOOL)deleteAlbum {
    NSMutableArray *albums = (NSMutableArray *)[[self class] findAllAlbums];
    [albums removeObject:self];
    NSData *fileData = [NSKeyedArchiver archivedDataWithRootObject:albums];
    return [fileData writeToURL:[[self class] iMusicDataURL] atomically:YES];
}

- (BOOL)isEqual:(id)object {
    
    if (self == object) {
        return YES;
    }
    
    if (!object || ![object isMemberOfClass:[self class]]) {
        return NO;
    }
    
    return [object albumID] == self.albumID;
}

- (NSUInteger)hash {
    return [[NSNumber numberWithInteger:self.albumID] hash];
}

@end
