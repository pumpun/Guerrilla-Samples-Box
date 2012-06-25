//
//  PMPSwitchViewController.m
//  SoundMachine
//
//  Created by Berio Molina on 28/05/12.
//  Copyleft (cc) 2012 Pumpun Dixital.
//	Do whatever you want with this chunck of code

#import "PMPSwitchViewController.h"
#import "PMPPlayViewController.h"
#import "PMPChooseViewController.h"

@interface PMPSwitchViewController ()

@end

@implementation PMPSwitchViewController
@synthesize playViewController;
@synthesize chooseViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];

    return self;
}

- (void)viewDidLoad{
    if([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad){
		self.playViewController = [[PMPPlayViewController alloc] initWithNibName:@"PlayView" bundle:nil];
	}else{
		self.playViewController = [[PMPPlayViewController alloc] initWithNibName:@"PlayView_iPhone" bundle:nil];
	}
	[self.view insertSubview:self.playViewController.view atIndex:0];
	
	[super viewDidLoad];
	
}

- (void)viewDidUnload{
    [super viewDidUnload];
}

- (void)didReceiveMemoryWarning{
	// Releases the view if it doesn't have a supervies
	[super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc, that aren't in use
	if(self.playViewController.view.superview == nil){
		self.playViewController = nil;
	}else {
		self.chooseViewController = nil;
	}
}

- (IBAction)switchViews:(id)sender{

	[UIView beginAnimations:@"View Flip" context:nil];
	[UIView setAnimationDuration:0.55];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	
	if (self.chooseViewController.view.superview == nil) {
		if (self.chooseViewController == nil) {
			self.chooseViewController = [[PMPChooseViewController alloc] initWithNibName:@"ChooseView" bundle:nil];
		}
		[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
		[playViewController.view removeFromSuperview];
		[self.view insertSubview:self.chooseViewController.view atIndex:0];
	}else {
		if (self.playViewController == nil) {
			self.playViewController = [[PMPPlayViewController alloc] initWithNibName:@"PlayView" bundle:nil];
		}
		[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];		
		[chooseViewController.view removeFromSuperview];
		[self.view insertSubview:self.playViewController.view atIndex:0];
	}
	
	[UIView commitAnimations];
	
}

- (IBAction)switchRight:(id)sender{
	
	if (self.chooseViewController.view.superview == nil) {
		[UIView beginAnimations:@"View Flip" context:nil];
		[UIView setAnimationDuration:0.55];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];

		if (self.chooseViewController == nil) {
			if([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad){
				self.chooseViewController = [[PMPChooseViewController alloc] initWithNibName:@"ChooseView" bundle:nil];
			}else{
				self.chooseViewController = [[PMPChooseViewController alloc] initWithNibName:@"ChooseView_iphone" bundle:nil];
			}
		}
		[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
		[playViewController.view removeFromSuperview];
		[self.view insertSubview:self.chooseViewController.view atIndex:0];
	
		[UIView commitAnimations];
	}
	
}

- (IBAction)switchLeft:(id)sender{
	
	if (self.playViewController.view.superview == nil) {
		[UIView beginAnimations:@"View Flip" context:nil];
		[UIView setAnimationDuration:0.55];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];

		if (self.playViewController == nil) {
			self.playViewController = [[PMPPlayViewController alloc] initWithNibName:@"PlayView" bundle:nil];
		}
		[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];		
		[chooseViewController.view removeFromSuperview];
		[self.view insertSubview:self.playViewController.view atIndex:0];
	
		[UIView commitAnimations];
	}
	
}

@end
