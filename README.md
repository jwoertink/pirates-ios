# The Pirate Game

This is a challenge app from the udemy course for ios.

## Objective
Move the character around by pressing on the direction buttons. Find new items, or enemies with each move. Locate the boss pirate and defeat him. Game is over when pirate boss is defeated.

## Requirements

* A user should be able to navigate to different tiles by pressing one of 4 directional buttons
* When a move is not available, that button should not be visible or be inactive
* The game character should have `int health`, `int damage`, `Weapon weapon`, and `Armor armor`.
* Armor and Weapon objects have a `NSString name` and `int damage` or `int health` bonus modifier where appropriate
* The view contains the directional buttons, the character stats, an action button, and the context story for the current location of the character.
* The starting grid should be 4x3
* Each location is considered a `Tile`. A tile should have a `CGPoint point`, `NSString description`, `UIImageView background`. It should also have a way to handle if there is an item, or an enemy on that tile.
* The game should have a reset button to reset the character position and all stats.

## Steps

1: Setting up the storyboard, a basic Tile object and a Factory.

2: Navigating between tiles, adding a background image and upgrading the story.

3: Adding additional objects: Weapon and Armor and Character: adding their effects to our project.

4: Adding a actions to our story

5: Final boss and Reset
