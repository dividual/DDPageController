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



- (IBAction)backToPage1:(UIStoryboardSegue *)segue{
    NSLog(@"unwind!!!");
}












@end
