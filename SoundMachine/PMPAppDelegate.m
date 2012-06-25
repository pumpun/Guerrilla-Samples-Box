//
//  PMPAppDelegate.m
//  SoundMachine
//
//  Created by Berio Molina on 28/05/12.
//  Copyleft (cc) 2012 Pumpun Dixital.
//	Do whatever you want with this chunck of code

#import "PMPAppDelegate.h"
#import "PMPSwitchViewController.h"

@implementation PMPAppDelegate

@synthesize window = _window;
@synthesize switchViewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
	if([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad){
		self.switchViewController =[[PMPSwitchViewController alloc] initWithNibName:@"SwitchView" bundle:nil];
	}else{
		self.switchViewController =[[PMPSwitchViewController alloc] initWithNibName:@"SwitchView_iPhone" bundle:nil];
	}
	
	UIView *switchView = self.switchViewController.view;
	CGRect switchViewFrame = switchView.frame;
	switchViewFrame.origin.y += [UIApplication sharedApplication].statusBarFrame.size.height;
	switchView.frame = switchViewFrame;
	[self.window addSubview:switchView];
	
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application{
}

- (void)applicationDidEnterBackground:(UIApplication *)application{
}

- (void)applicationWillEnterForeground:(UIApplication *)application{
}

- (void)applicationDidBecomeActive:(UIApplication *)application{
}

- (void)applicationWillTerminate:(UIApplication *)application{
}

@end
