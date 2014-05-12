//
//  JWFactory.m
//  The Pirate App
//
//  Created by Jeremy Woertink on 5/11/14.
//  Copyright (c) 2014 Jeremy Woertink. All rights reserved.
//

#import "JWFactory.h"

@implementation JWFactory

+(NSMutableArray *) generateTiles
{
    NSMutableArray *tiles = [[NSMutableArray alloc] init];
    NSArray *backgrounds = [[NSArray alloc] initWithObjects:
                            @"chest.jpg",
                            @"fleet.jpg",
                            @"map.jpg",
                            @"parrot.jpg",
                            @"pirate-boss.jpg",
                            @"ship-battle.jpg",
                            @"ship.png",
                            @"skull-fire.jpg",
                            @"skull.jpg",
                            @"squid-attack.jpg",
                            @"swords.jpg",
                            @"weapons.jpg", nil];
    
    NSArray *descriptions = [[NSArray alloc] initWithObjects:
                             @"Found a chest",
                             @"Look at that fleet",
                             @"Nothing on this map",
                             @"A crazy parrot?!",
                             @"You found a pirate boss",
                             @"The ships are battling in the distance",
                             @"Sailing away",
                             @"A firey skull",
                             @"bones everywhere",
                             @"A giant squid!",
                             @"a lost pirate's sword",
                             @"You found some weapons", nil];
    
    int maxRows = 3;
    int maxCols = 4;
    for (int row = 0; row < maxRows; row++) {
        NSMutableArray *tileRow = [[NSMutableArray alloc] init];
        for (int col = 0; col < maxCols; col++) {
            JWTile *tile = [[JWTile alloc] init];
            tile.point = CGPointMake(row, col);
            int idx = row + col + (maxRows * row);
            tile.background = [UIImage imageNamed:[backgrounds objectAtIndex:idx]];
            tile.description = [descriptions objectAtIndex:idx];
            [tileRow addObject:tile];
        }
        [tiles addObject:tileRow];
    }
    
    return tiles;
}

@end
