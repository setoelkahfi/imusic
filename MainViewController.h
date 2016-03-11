//
//  MainViewController.h
//  iMusic
//
//  Created by SDMobile.
//  Copyright (c) 2016 Streetdirectory Pte Ltd. All rights reserved.
//

@interface MainViewController : UIViewController

#pragma Properties
@property (weak, nonatomic) IBOutlet UIImageView *imageLogo;
@property (weak, nonatomic) IBOutlet UIButton *buttonViewList;
@property (weak, nonatomic) IBOutlet UIButton *buttonAbout;


- (IBAction)showAboutView:(id)sender;
- (IBAction)showList:(id)sender;

@end
