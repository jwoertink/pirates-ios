//
//  JWViewController.h
//  The Pirate App
//
//  Created by Jeremy Woertink on 5/9/14.
//  Copyright (c) 2014 Jeremy Woertink. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JWCharacter.h"
#import "JWFactory.h"

@interface JWViewController : UIViewController

// Properties
@property (strong, nonatomic) IBOutlet UILabel *healthLabelValue;
@property (strong, nonatomic) IBOutlet UILabel *damageLabelValue;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabelValue;
@property (strong, nonatomic) IBOutlet UILabel *armorLabelValue;
@property (strong, nonatomic) IBOutlet UILabel *contextLabel;
@property (strong, nonatomic) JWCharacter *character;
@property (strong, nonatomic) NSMutableArray *gameTiles;
@property (strong, nonatomic) JWTile *currentTile;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (strong, nonatomic) IBOutlet UIButton *buttonNorth;
@property (strong, nonatomic) IBOutlet UIButton *buttonSouth;
@property (strong, nonatomic) IBOutlet UIButton *buttonEast;
@property (strong, nonatomic) IBOutlet UIButton *buttonWest;
@property (strong, nonatomic) IBOutlet UIButton *buttonAction;

-(void) setButtonState;
-(void) updateTile;
-(IBAction) buttonNorthPressed:(id)sender;
-(IBAction) buttonSouthPressed:(id)sender;
-(IBAction) buttonEastPressed:(id)sender;
-(IBAction) buttonWestPressed:(id)sender;
-(IBAction) buttonActionPressed:(id)sender;
@end
