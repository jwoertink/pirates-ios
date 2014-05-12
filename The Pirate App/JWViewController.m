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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonNorth:(UIButton *)sender {
}

- (IBAction)buttonSouth:(UIButton *)sender {
}

- (IBAction)buttonWest:(UIButton *)sender {
}

- (IBAction)buttonEast:(UIButton *)sender {
}
@end
