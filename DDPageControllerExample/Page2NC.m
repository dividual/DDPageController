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
	[super viewWillAppear:animated];
	NSLog(@"");
}

-(void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:animated];
	NSLog(@"");
}

-(void)viewWillDisappear:(BOOL)animated{
	[super viewWillDisappear:animated];
	NSLog(@"");
}

-(void)viewDidDisappear:(BOOL)animated{
	[super viewDidDisappear:animated];
	NSLog(@"");
}




-(void)setViewControllersTest{
	UIViewController* vc2 = [self.storyboard instantiateViewControllerWithIdentifier:@"Page2VC"];
//	self.viewControllers = @[_initialTopViewController, vc2];
	[self setViewControllers:@[_initialTopViewController, vc2] animated:NO];
	
}





















@end
