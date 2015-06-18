//
//  FISStudent.h
//  ios-tableview-sections
//
//  Created by Gan Chau on 6/18/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISStudent : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSArray *favoriteThings;
@property (nonatomic, strong) NSString *favoriteFood;
@property (nonatomic, strong) NSString *favoriteColor;
@property (nonatomic, strong) NSString *favoriteMusicalArtist;
@property (nonatomic, strong) NSString *favoriteGame;

- (instancetype)initWithName:(NSString *)name
                favoriteFood:(NSString *)favoriteFood
               favoriteColor:(NSString *)favoriteColor
       favoriteMusicalArtist:(NSString *)favoriteMusicalArtist
                favoriteGame:(NSString *)favoriteGame;

@end
