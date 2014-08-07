//
//  Page1VC.m
//  UIPageController
//
//  Created by noughts on 2014/08/07.
//  Copyright (c) 2014年 noughts. All rights reserved.
//

#import "Page1VC.h"
#import "MainPageController.h"

@implementation Page1VC{
	MainPageController* _mpc;
}


- (void)viewDidLoad{
    [super viewDidLoad];
	NSLog(@"");
    // Do any additional setup after loading the view.
}

-(void)willMoveToParentViewController:(UIViewController *)parent{
	[super willMoveToParentViewController:parent];
	_mpc = (MainPageController*)parent;
}



-(void)viewWillAppear:(BOOL)animated{
	if( [_mpc checkVisibleOfViewController:self] == NO ){
		return;
	}
	[super viewWillAppear:animated];
	NSLog(@"");
}
-(void)viewDidAppear:(BOOL)animated{
	if( [_mpc checkVisibleOfViewController:self] == NO ){
		return;
	}
	[super viewDidAppear:animated];
	NSLog(@"");
}

-(void)viewWillDisappear:(BOOL)animated{
	if( [_mpc checkVisibleOfViewController:self] == NO ){
		return;
	}
	[super viewWillDisappear:animated];
	NSLog(@"");
}

-(void)viewDidDisappear:(BOOL)animated{
	if( [_mpc checkVisibleOfViewController:self] == NO ){
		return;
	}
	[super viewDidDisappear:animated];
	NSLog(@"");	
}





@end
