//
//  JWTile.h
//  The Pirate App
//
//  Created by Jeremy Woertink on 5/11/14.
//  Copyright (c) 2014 Jeremy Woertink. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JWCharacter.h"

@interface JWTile : NSObject

@property (nonatomic) CGPoint point;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) UIImage *background;
@property (strong, nonatomic) NSString *actionTitle;
// not sure what the surprise is. Could be an item, could be an enemy
@property (strong, nonatomic) id surprise;

-(void) performAction;
-(void) setAction;

@end
