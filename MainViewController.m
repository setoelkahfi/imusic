//
//  MainViewController.m
//  iMusic
//
//  Created by SDMobile.
//  Copyright (c) 2016 Streetdirectory Pte Ltd. All rights reserved.
//

#import "MainViewController.h"
#import "AboutViewController.h"
#import "MusicListViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation MainViewController


#pragma mark - Properties

@synthesize imageLogo = _imageLogo;
@synthesize buttonViewList = _buttonViewList;
@synthesize buttonAbout = _buttonAbout;

#pragma mark - View lifecycle

- (void)viewDidLoad {
	[super viewDidLoad];
    self.title = @"iMusic";
//    _buttonViewList.layer.borderWidth = 1.0f;
//    _buttonViewList.layer.borderColor = [[UIColor blackColor] CGColor];
    
//    _buttonAbout.layer.borderWidth = 1.0f;
//    _buttonAbout.layer.borderColor = [[UIColor blackColor] CGColor];
    
    UIImage *logoImage = [UIImage imageNamed:@"logo"];
    _imageLogo.image = logoImage;
    
    
    UIImage *backgroundImage = [UIImage imageNamed:@"background"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:backgroundImage];
    
    _buttonAbout.backgroundColor = [UIColor clearColor];
    _buttonViewList.backgroundColor = [UIColor clearColor];
    
    UIEdgeInsets insets = UIEdgeInsetsMake(12.0f, 12.0f, 12.0f, 12.0f);
    UIImage *buttonImage = [[UIImage imageNamed:@"buttonbg"] resizableImageWithCapInsets:insets];
    [_buttonViewList setBackgroundImage:buttonImage forState:UIControlStateNormal];
    [_buttonAbout setBackgroundImage:buttonImage forState:UIControlStateNormal];
    
    
}

- (void)viewDidUnload {
	[super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
}

- (IBAction)showAboutView:(id)sender {
    id controller = [[AboutViewController alloc] init];
    [self presentViewController:controller animated:YES completion:NULL];
}

- (IBAction)showList:(id)sender {
    id controller = [[MusicListViewController alloc] initWithStyle:UITableViewStylePlain];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
