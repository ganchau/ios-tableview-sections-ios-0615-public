//
//  FISStudent.m
//  ios-tableview-sections
//
//  Created by Gan Chau on 6/18/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISStudent.h"

@implementation FISStudent

- (instancetype)init
{
    return [self initWithName:@""
                 favoriteFood:@""
                favoriteColor:@""
        favoriteMusicalArtist:@""
                 favoriteGame:@""];
}

- (instancetype)initWithName:(NSString *)name
                favoriteFood:(NSString *)favoriteFood
               favoriteColor:(NSString *)favoriteColor
       favoriteMusicalArtist:(NSString *)favoriteMusicalArtist
                favoriteGame:(NSString *)favoriteGame
{
    self = [super init];
    
    if (self) {
        _name = name;
        _favoriteFood = favoriteFood;
        _favoriteColor = favoriteColor;
        _favoriteMusicalArtist = favoriteMusicalArtist;
        _favoriteGame = favoriteGame;
    }
    
    return self;
}

- (NSArray *)favoriteThings
{
    if (!_favoriteThings) {
        _favoriteThings = @[ @{ @"food" : self.favoriteFood },
                             @{ @"color" : self.favoriteColor },
                             @{ @"artist" : self.favoriteMusicalArtist },
                             @{ @"game" : self.favoriteGame } ];
    }
    return _favoriteThings;
}

@end
