//
//  Page2VC.m
//  UIPageController
//
//  Created by noughts on 2014/08/07.
//  Copyright (c) 2014年 noughts. All rights reserved.
//

#import "Page2VC.h"
#import "MainPageController.h"

@implementation Page2VC{
	MainPageController* _mpc;
}

- (void)viewDidLoad{
    [super viewDidLoad];
	NSLog(@"");
    // Do any additional setup after loading the view.
}


-(void)viewDidLayoutSubviews{
	[super viewDidLayoutSubviews];
	_mpc = (MainPageController*)self.parentViewController.parentViewController;
}


-(void)viewWillAppear:(BOOL)animated{
	if( [_mpc checkVisibleOfViewController:self.parentViewController] == NO ){
		return;
	}
	[super viewWillAppear:animated];
	NSLog(@"");
}
-(void)viewDidAppear:(BOOL)animated{
	if( [_mpc checkVisibleOfViewController:self.parentViewController] == NO ){
		return;
	}
	[super viewDidAppear:animated];
	NSLog(@"");
}

-(void)viewWillDisappear:(BOOL)animated{
	if( [_mpc checkVisibleOfViewController:self.parentViewController] == NO ){
		return;
	}
	[super viewWillDisappear:animated];
	NSLog(@"");
}

-(void)viewDidDisappear:(BOOL)animated{
	if( [_mpc checkVisibleOfViewController:self.parentViewController] == NO ){
		return;
	}
	[super viewDidDisappear:animated];
	NSLog(@"");
}

@end
