//
//  JWViewController.m
//  The Pirate App
//
//  Created by Jeremy Woertink on 5/9/14.
//  Copyright (c) 2014 Jeremy Woertink. All rights reserved.
//

#import "JWViewController.h"

@interface JWViewController ()

@end

@implementation JWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.character = [[JWCharacter alloc] init];
    [self.character initDefaultValues];
    self.healthLabelValue.text = [@(self.character.health) stringValue];
    self.damageLabelValue.text = [@(self.character.damage) stringValue];
    self.weaponLabelValue.text = self.character.weapon.name;
    self.armorLabelValue.text = self.character.armor.name;
    
    self.gameTiles = [JWFactory generateTiles];
    [self updateTile];
    
    [self.buttonNorth addTarget: self
                        action: @selector(buttonNorthPressed:)
              forControlEvents: UIControlEventTouchUpInside];
    [self.buttonSouth addTarget: self
                         action: @selector(buttonSouthPressed:)
               forControlEvents: UIControlEventTouchUpInside];
    [self.buttonEast addTarget: self
                         action: @selector(buttonEastPressed:)
               forControlEvents: UIControlEventTouchUpInside];
    [self.buttonWest addTarget: self
                         action: @selector(buttonWestPressed:)
               forControlEvents: UIControlEventTouchUpInside];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Set all directional button states. Hide the button if the character can't move in that direction
-(void) setButtonState
{
    CGPoint currentPosition = self.currentTile.point;
    self.buttonWest.hidden = ![self.character canMoveWest:currentPosition];
    self.buttonEast.hidden = ![self.character canMoveEast:currentPosition];
    self.buttonNorth.hidden = ![self.character canMoveNorth:currentPosition];
    self.buttonSouth.hidden = ![self.character canMoveSouth:currentPosition];
}

-(void) updateTile
{
    NSLog(@"X: %d Y: %d", self.character.x, self.character.y);
    
    self.currentTile = [[self.gameTiles objectAtIndex:self.character.x] objectAtIndex:self.character.y];
    self.contextLabel.text = self.currentTile.description;
    self.backgroundImage.image = self.currentTile.background;
    [self setButtonState];
}

-(IBAction) buttonNorthPressed:(id)sender
{
    self.character.x += 1;
    [self updateTile];
}
-(IBAction) buttonSouthPressed:(id)sender
{
    self.character.x -= 1;
    [self updateTile];
}
-(IBAction) buttonEastPressed:(id)sender
{
    self.character.y += 1;
    [self updateTile];
}
-(IBAction) buttonWestPressed:(id)sender
{
    self.character.y -= 1;
    [self updateTile];
}
@end
