//
//  ViewController.m
//  iMusic
//
//  Created by SDMobile.
//  Copyright (c) 2016 Streetdirectory Pte Ltd. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

#pragma mark - View lifecycle

- (void)viewDidLoad {
	[super viewDidLoad];
}

- (void)viewDidUnload {
	[super viewDidUnload];
}

- (void)loadView {
    
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.view.backgroundColor= [UIColor whiteColor];
    
    UIView *v1 = [[UIView alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 150.0f, 150.0f)];
    v1.backgroundColor = [UIColor redColor];
    v1.tag = 10;
    
    UIView *v2 = [[UIView alloc] initWithFrame:CGRectMake(20.0f, 20.0f, 150.0f, 150.0f)];
    v2.backgroundColor = [UIColor greenColor];
    v2.tag = 20;
    
    UIView *v3 = [[UIView alloc] initWithFrame:CGRectMake(30.0f, 30.0f, 150.0f, 150.0f)];
    v3.backgroundColor = [UIColor blueColor];
    v3.tag = 30;
    
    [self.view addSubview:v1];
    [self.view addSubview:v2];
    [self.view addSubview:v3];
    
    for (UIView *view in [self.view subviews]) {
        NSLog(@"Current view: %i", view.tag);
    }
    
}

@end
