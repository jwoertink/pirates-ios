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
    self.x = 0;
    self.y = 0;
    
    self.health = 15 + self.armor.health; // Total character health
    self.damage = 1 + self.weapon.damage; // Amount of damage the character inflicts
}

-(void) attack:(JWCharacter *)enemy
{
    int hitEnemy = arc4random() % self.damage;
    enemy.health -= hitEnemy;
    
    int hitMe = arc4random() % enemy.damage;
    self.health -= hitMe;
}

-(BOOL) isAlive
{
    return self.health > 0;
}

-(BOOL) canMoveWest:(CGPoint)point
{
    return point.y > 0;
}

-(BOOL) canMoveEast:(CGPoint)point
{
    return point.y < 3;
}

-(BOOL) canMoveNorth:(CGPoint)point
{
    return point.x < 2;
}

-(BOOL) canMoveSouth:(CGPoint)point
{
    return point.x > 0;
}

@end
