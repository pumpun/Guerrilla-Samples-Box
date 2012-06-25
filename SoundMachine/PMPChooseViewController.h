//
//  PMPChooseViewController.h
//  SoundMachine
//
//  Created by Berio Molina on 28/05/12.
//  Copyleft (cc) 2012 Pumpun Dixital.
//	Do whatever you want with this chunck of code

#import <UIKit/UIKit.h>

@interface PMPChooseViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *creditos;

- (IBAction)chooseButtonPressed;
- (IBAction)openWeb:(id)sender;

@end
