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
@property (strong, nonatomic) JWWeapon *weapon;
@property (strong, nonatomic) JWArmor *armor;

-(void) initDefaultValues;

@end
