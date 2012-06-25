//
//  PMPSwitchViewController.h
//  SoundMachine
//
//  Created by Berio Molina on 28/05/12.
//  Copyleft (cc) 2012 Pumpun Dixital.
//	Do whatever you want with this chunck of code

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@class PMPPlayViewController;
@class PMPChooseViewController;

@interface PMPSwitchViewController : UIViewController

@property (strong, nonatomic) PMPPlayViewController * playViewController;
@property (strong, nonatomic) PMPChooseViewController * chooseViewController;

- (IBAction)switchViews:(id)sender;
- (IBAction)switchRight:(id)sender;
- (IBAction)switchLeft:(id)sender;

@end
