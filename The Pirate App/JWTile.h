//
//  JWTile.h
//  The Pirate App
//
//  Created by Jeremy Woertink on 5/11/14.
//  Copyright (c) 2014 Jeremy Woertink. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JWTile : NSObject

@property (nonatomic) CGPoint point;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) UIImage *background;
// not sure what the surprise is. Could be an item, could be an enemy
@property (strong, nonatomic) id surprise;

@end
