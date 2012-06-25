//
//  PMPChooseViewController.m
//  SoundMachine
//
//  Created by Berio Molina on 28/05/12.
//  Copyleft (cc) 2012 Pumpun Dixital.
//	Do whatever you want with this chunck of code

#import "PMPChooseViewController.h"

@interface PMPChooseViewController ()

@end

@implementation PMPChooseViewController
@synthesize creditos;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
}

- (void)viewDidUnload{
	[self setCreditos:nil];
    [super viewDidUnload];
}

- (IBAction)chooseButtonPressed{
	if(creditos.hidden == YES){
		creditos.hidden = NO;
	}else{
		creditos.hidden = YES;
	}
}

- (IBAction)openWeb:(id)sender {
[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://pumpun.com/"]];

}

@end
