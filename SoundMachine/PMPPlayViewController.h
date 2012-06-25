//
//  PMPPlayViewController.h
//  SoundMachine
//
//  Created by Berio Molina on 28/05/12.
//  Copyleft (cc) 2012 Pumpun Dixital.
//	Do whatever you want with this chunck of code

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface PMPPlayViewController : UIViewController{
	NSMutableArray *sonsMutables;
	int nSons;
}

@property (weak, nonatomic) IBOutlet UILabel *statusText;

- (IBAction)playButtonPressed:(id)sender;
- (IBAction)stopSounds:(id)sender;

@end
