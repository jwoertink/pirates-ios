//
//  JWCharacter.h
//  The Pirate App
//
//  Created by Jeremy Woertink on 5/9/14.
//  Copyright (c) 2014 Jeremy Woertink. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JWWeapon.h"
#import "JWArmor.h"

@interface JWCharacter : NSObject

@property (nonatomic) int health;
@property (nonatomic) int damage;
@property (nonatomic) int x;
@property (nonatomic) int y;
@property (strong, nonatomic) JWWeapon *weapon;
@property (strong, nonatomic) JWArmor *armor;

-(void) initDefaultValues;
-(void) attack:(JWCharacter *)enemy;
-(BOOL) isAlive;
-(BOOL) canMoveWest:(CGPoint)point;
-(BOOL) canMoveEast:(CGPoint)point;
-(BOOL) canMoveNorth:(CGPoint)point;
-(BOOL) canMoveSouth:(CGPoint)point;

@end
