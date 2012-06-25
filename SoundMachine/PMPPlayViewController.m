//
//  PMPPlayViewController.m
//  SoundMachine
//
//  Created by Berio Molina on 28/05/12.
//  Copyleft (cc) 2012 Pumpun Dixital.
//	Do whatever you want with this chunck of code

#import "PMPPlayViewController.h"

@interface PMPPlayViewController ()

@end

@implementation PMPPlayViewController
@synthesize statusText;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {		
		
		sonsMutables = [NSMutableArray arrayWithCapacity:20];
		NSError *error;
		nSons = 20;

		for (int i= 0; i<nSons; i++) {
			AVAudioPlayer *playerMutable;
			NSString *pathMutable = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"Sound_%ld", i] ofType:@"mp3"];
			playerMutable = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:pathMutable] error:&error];
			playerMutable.volume = 1.0f;
			[playerMutable prepareToPlay];
			[playerMutable setNumberOfLoops:0];

			[sonsMutables addObject:playerMutable];
		}




		
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
}

- (void)viewDidUnload{
    [super viewDidUnload];
}

- (IBAction)playButtonPressed:(id)sender{
	UIButton *button = (UIButton*) sender;
	int toneIndex = button.tag;

	for(int i=0; i<nSons; i++){
		[[sonsMutables objectAtIndex:i] stop];
	}

	AVAudioPlayer *playerFinal;
	playerFinal = [sonsMutables objectAtIndex:toneIndex];
	[playerFinal setVolume:1.0f];
	
	if([playerFinal isPlaying]){
		[playerFinal stop];    
	}
		
	playerFinal.currentTime = 0;
	[playerFinal play];    




	NSString *title = [sender titleForState:UIControlStateNormal];
	statusText.text = [NSString stringWithFormat:@"%@ ...", title];

}

- (IBAction)stopSounds:(id)sender {
	for(int i=0; i<nSons; i++){
		[[sonsMutables objectAtIndex:i] stop];
	}
}

@end
