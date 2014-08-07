//
//  Page2VC.m
//  UIPageController
//
//  Created by noughts on 2014/08/07.
//  Copyright (c) 2014年 noughts. All rights reserved.
//

#import "Page2VC.h"
#import "MainPageController.h"

@implementation Page2VC
- (void)viewDidLoad{
    [super viewDidLoad];
	NSLog(@"");
    // Do any additional setup after loading the view.
}


-(void)viewWillAppear:(BOOL)animated{
	MainPageController* mpc = (MainPageController*)self.parentViewController.parentViewController;
	if( [mpc checkVisibleOfViewController:self] == NO ){
		return;
	}
	[super viewWillAppear:animated];
	NSLog(@"");
}

-(void)viewDidAppear:(BOOL)animated{
	MainPageController* mpc = (MainPageController*)self.parentViewController.parentViewController;
	if( [mpc checkVisibleOfViewController:self] == NO ){
		return;
	}
	[super viewDidAppear:animated];
	NSLog(@"");
}

-(void)viewWillDisappear:(BOOL)animated{
	MainPageController* mpc = (MainPageController*)self.parentViewController.parentViewController;
	if( [mpc checkVisibleOfViewController:self] == NO ){
		return;
	}
	[super viewWillDisappear:animated];
	NSLog(@"");
}

-(void)viewDidDisappear:(BOOL)animated{
	MainPageController* mpc = (MainPageController*)self.parentViewController.parentViewController;
	if( [mpc checkVisibleOfViewController:self] == NO ){
		return;
	}
	[super viewDidDisappear:animated];
	NSLog(@"");
}







- (IBAction)backToPage1:(UIStoryboardSegue *)segue{
    NSLog(@"unwind!!!");
}












@end
