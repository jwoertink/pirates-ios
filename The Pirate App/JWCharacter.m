//
//  JWCharacter.m
//  The Pirate App
//
//  Created by Jeremy Woertink on 5/9/14.
//  Copyright (c) 2014 Jeremy Woertink. All rights reserved.
//

#import "JWCharacter.h"

@implementation JWCharacter

-(void) initDefaultValues
{
    self.armor = [[JWArmor alloc] init]; // default armor
    self.armor.name = @"Cloth";
    self.armor.health = 5;
    self.weapon = [[JWWeapon alloc] init]; // default weopon
    self.weapon.name = @"Fist";
    self.weapon.damage = 3;
    
    self.health = 15 + self.armor.health; // Total character health
    self.damage = 1 + self.weapon.damage; // Amount of damage the character inflicts
}

@end
