//
//  ViewController.m
//  UIPageController
//
//  Created by noughts on 2014/08/07.
//  Copyright (c) 2014年 noughts. All rights reserved.
//

#import "MainPageController.h"
#import "UIView+AutoLayout.h"


@implementation MainPageController{
	__weak IBOutlet UIScrollView* _scrollView;
	__weak IBOutlet UIView* _mainContainer_view;
}

- (void)viewDidLoad{
    [super viewDidLoad];
	_scrollView.delegate = self;
	
	for (UIViewController* vc in self.childViewControllers) {
		[self addPageViewController:vc];
	}
}



/// 着信ステータスバー切り替えに対応
-(void)viewWillLayoutSubviews{
	[super viewWillLayoutSubviews];
	_mainContainer_view.heightConstraint.constant = [UIScreen mainScreen].applicationFrame.size.height + 20;
}






@end
