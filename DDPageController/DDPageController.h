//
//  DDPageController.h
//  UIPageController
//
//  Created by noughts on 2014/08/07.
//  Copyright (c) 2014年 noughts. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DDPageController : UIViewController <UIScrollViewDelegate>

@property(nonatomic,weak) IBOutlet UIScrollView* scrollView;

/// 指定したページにスクロール
-(void)scrollToPage:(NSUInteger)index animated:(BOOL)animated;

/// 指定したVCが現在表示されているか?
-(BOOL)checkVisibleOfViewController:(UIViewController*)vc;

-(void)addPageViewController:(UIViewController*)vc;

@end
