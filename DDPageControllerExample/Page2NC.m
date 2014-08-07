//
//  Page2NC.m
//  DDPageControllerExample
//
//  Created by noughts on 2014/08/07.
//  Copyright (c) 2014年 dividual. All rights reserved.
//

#import "Page2NC.h"
#import "MainPageController.h"



@implementation Page2NC{
	UIViewController* _initialTopViewController;
}

-(void)viewDidLoad{
	[super viewDidLoad];
	NSLog( @"" );
	_initialTopViewController = self.topViewController;
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




-(void)setViewControllersTest{
	UIViewController* vc2 = [self.storyboard instantiateViewControllerWithIdentifier:@"TestVC"];
	self.viewControllers = @[_initialTopViewController, vc2];
}





















@end
