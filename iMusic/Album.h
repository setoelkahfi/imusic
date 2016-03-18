//
//  Album.h
//  iMusic
//
//  Created by SDMobile.
//  Copyright (c) 2016 Streetdirectory Pte Ltd. All rights reserved.
//

#import "Artist.h"
@interface Album : NSObject

@property (nonatomic, assign) NSUInteger albumID;
@property (nonatomic, copy) NSString *albumName;
@property (nonatomic, copy) NSString *imageURLString;
@property (nonatomic, copy) UIImage *albumImage;
@property (nonatomic, copy) NSString *price;
@property (nonatomic, copy) NSString *iTunesURLString;
@property (nonatomic, strong) NSDate *releaseDate;
@property (nonatomic, copy) NSString *genre;
@property (nonatomic, strong) Artist *artist;

+ (NSArray *)findAll;
- (BOOL)save;

@end
