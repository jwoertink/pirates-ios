//
//  JWViewController.h
//  The Pirate App
//
//  Created by Jeremy Woertink on 5/9/14.
//  Copyright (c) 2014 Jeremy Woertink. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JWViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *healthLabelValue;
@property (strong, nonatomic) IBOutlet UILabel *damageLabelValue;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabelValue;
@property (strong, nonatomic) IBOutlet UILabel *armorLabelValue;
@property (strong, nonatomic) IBOutlet UILabel *contextLabel;

- (IBAction)buttonNorth:(UIButton *)sender;
- (IBAction)buttonSouth:(UIButton *)sender;
- (IBAction)buttonWest:(UIButton *)sender;
- (IBAction)buttonEast:(UIButton *)sender;

@end
