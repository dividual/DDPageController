//
//  ViewController.m
//  UIPageController
//
//  Created by noughts on 2014/08/07.
//  Copyright (c) 2014年 noughts. All rights reserved.
//

#import "MainPageController.h"
#import "UIView+AutoLayout.h"
#import "Page1VC.h"
#import "Page2NC.h"


@implementation MainPageController{
	__weak IBOutlet UIView* _mainContainer_view;
	Page1VC* _page1_vc;
	Page2NC* _page2_nc;
}

- (void)viewDidLoad{
    [super viewDidLoad];
	
	for (UIViewController* vc in self.childViewControllers) {
		[self addPageViewController:vc];
	}
}



/// 着信ステータスバー切り替えに対応
-(void)viewWillLayoutSubviews{
	[super viewWillLayoutSubviews];
	_mainContainer_view.heightConstraint.constant = [UIScreen mainScreen].applicationFrame.size.height + 20;
}


-(Page2NC*)page2NC{
	return _page2_nc;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
	if( [segue.identifier isEqualToString:@"embedPage1"] ){
		_page1_vc = segue.destinationViewController;
	}
	if( [segue.identifier isEqualToString:@"embedPage2"] ){
		_page2_nc = segue.destinationViewController;
	}
}





@end
