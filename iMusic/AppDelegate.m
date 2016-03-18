//
//  AppDelegate.m
//  iMusic
//
//  Created by SDMobile on 3/10/16.
//  Copyright © 2016 Streetdirectory Pte Ltd. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Override point for customization after application launch.
    
    self.window.backgroundColor = [UIColor whiteColor];

    id controller = [[MainViewController alloc] initWithNibName:@"MainView" bundle:nil];
    id navController = [[UINavigationController alloc] initWithRootViewController:controller];
    self.window.rootViewController = navController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
