//
//  JWTile.m
//  The Pirate App
//
//  Created by Jeremy Woertink on 5/11/14.
//  Copyright (c) 2014 Jeremy Woertink. All rights reserved.
//

#import "JWTile.h"

@implementation JWTile

-(void) setAction
{
    if ([self.actionTitle isEqualToString:@"View"]) {
        
    } else if ([self.actionTitle isEqualToString:@"Fight!"]) {
        self.surprise = [[JWCharacter alloc] init];
    } else if ([self.actionTitle isEqualToString:@"Pick up"]) {
        self.surprise = [[JWWeapon alloc] init];
    } else {
        NSLog(@"other");
    }
}

-(void) performAction
{
    if ([self.actionTitle isEqualToString:@"View"]) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"What's this?" message:@"Doesn't look helpful" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alertView show];
    } else if ([self.actionTitle isEqualToString:@"Fight!"]) {
        NSLog(@"Fighting!");
    } else if ([self.actionTitle isEqualToString:@"Pick up"]) {
        NSLog(@"Picking up item");
    } else {
        NSLog(@"other");
    }
}

@end
