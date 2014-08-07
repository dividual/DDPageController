//
//  Page1VC.m
//  UIPageController
//
//  Created by noughts on 2014/08/07.
//  Copyright (c) 2014年 noughts. All rights reserved.
//

#import "Page1VC.h"
#import "MainPageController.h"
#import "Page2NC.h"

@implementation Page1VC{
	MainPageController* _mpc;
}


- (void)viewDidLoad{
    [super viewDidLoad];
	NSLog(@"");
    // Do any additional setup after loading the view.
}





-(void)viewWillAppear:(BOOL)animated{
	MainPageController* mpc = (MainPageController*)self.parentViewController;
	if( [mpc checkVisibleOfViewController:self] == NO ){
		return;
	}
	[super viewWillAppear:animated];
	NSLog(@"");
}
-(void)viewDidAppear:(BOOL)animated{
	MainPageController* mpc = (MainPageController*)self.parentViewController;
	if( [mpc checkVisibleOfViewController:self] == NO ){
		return;
	}
	[super viewDidAppear:animated];
	NSLog(@"");
}

-(void)viewWillDisappear:(BOOL)animated{
	MainPageController* mpc = (MainPageController*)self.parentViewController;
	if( [mpc checkVisibleOfViewController:self] == NO ){
		return;
	}
	[super viewWillDisappear:animated];
	NSLog(@"");
}

-(void)viewDidDisappear:(BOOL)animated{
	MainPageController* mpc = (MainPageController*)self.parentViewController;
	if( [mpc checkVisibleOfViewController:self] == NO ){
		return;
	}
	[super viewDidDisappear:animated];
	NSLog(@"");	
}



-(IBAction)backToPage1VC:(UIStoryboardSegue*)segue{
	
}


-(IBAction)updatePage2:(id)sender{
	MainPageController* mpc = (MainPageController*)self.parentViewController;
	[mpc.page2NC setViewControllersTest];
}



























@end
