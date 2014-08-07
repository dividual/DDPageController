//
//  DDPageController.m
//  UIPageController
//
//  Created by noughts on 2014/08/07.
//  Copyright (c) 2014年 noughts. All rights reserved.
//

#import "DDPageController.h"
#import <KVOController/FBKVOController.h>


@implementation DDPageController{
	BOOL scrollDirectionChecked;
	CGFloat _lastContentOffsetX;
	int _lastPageId;
	NSMutableSet* _visibleViewControllers;
	NSMutableSet* _pageViewControllers;
}


-(void)awakeFromNib{
	[super awakeFromNib];
	_visibleViewControllers = [NSMutableSet new];
	_pageViewControllers = [NSMutableSet new];
}




#pragma mark - パブリックメソッド

/// 指定したVCが現在表示されているか?
-(BOOL)checkVisibleOfViewController:(UIViewController*)vc{
//	NSLog( @"%@", vc );
	return [_visibleViewControllers containsObject:vc];

	
	/// 起動直後の_visibleViewController が初期化されていない時のために、座標ベースでのチェック
	CGRect rect = [vc.view convertRect:vc.view.bounds toView:self.view];// 絶対座標
//	NSLog( @"%@ %@ %d", vc, NSStringFromCGRect(rect), vc.isMovingFromParentViewController );
//	NSLog( @"%@", NSStringFromCGRect(_scrollView.frame) );
	if( rect.origin.x == 0 && rect.size.width == _scrollView.bounds.size.width ){
		return YES;
	} else {
		return NO;
	}
}


/// ページVCを追加
-(void)addPageViewController:(UIViewController*)vc{
	NSAssert(_pageViewControllers, @"");
	NSAssert(vc, @"");
	CGRect rect = [vc.view convertRect:vc.view.bounds toView:self.view];// 絶対座標
//	NSLog( @"%@", NSStringFromCGRect(rect) );
	[_pageViewControllers addObject:vc];
	if( rect.origin.x == 0 ){
		[_visibleViewControllers addObject:vc];
	}
}






#pragma mark - 子 view 管理

-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
	if( scrollDirectionChecked ){
		return;
	}
	_lastContentOffsetX = scrollView.contentOffset.x;
	_lastPageId = (scrollView.contentOffset.x / scrollView.bounds.size.width);
	//	NSLog( @"ページ移動直前の現在のページ番号 %d", _lastPageId );
	
	/// 初回スクロール用に、現在のVCをvisibleViewControllersに追加しておく
	UIViewController* current_vc = _pageViewControllers.allObjects[_lastPageId];
	[_visibleViewControllers addObject:current_vc];
}




-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
	if( scrollDirectionChecked ){
		return;
	}
	scrollDirectionChecked = YES;
	
	/// コンテンツより外へのスクロールは無視
	if( _lastContentOffsetX < 0 ){
		return;
	}
	if( _lastContentOffsetX > scrollView.contentSize.width - scrollView.bounds.size.width ){
		return;
	}
	
	
	int scrollDirection;// 0が前へ、1が次へ
	if( scrollView.contentOffset.x < _lastContentOffsetX ){
		scrollDirection = 0;
		if( _lastPageId == 0 ){
		} else {
			UIViewController* vc = _pageViewControllers.allObjects[_lastPageId-1];
			[_visibleViewControllers addObject:vc];
			[vc viewWillAppear:YES];
		}
	} else {
		scrollDirection = 1;
		if( _lastPageId == _pageViewControllers.count-1 ){
		} else {
			UIViewController* vc = _pageViewControllers.allObjects[_lastPageId+1];
			[_visibleViewControllers addObject:vc];
			[vc viewWillAppear:YES];
		}
	}
}




- (void)scrollViewDidEndDecelerating:(UIScrollView*)scrollView{
	NSUInteger page = (scrollView.contentOffset.x / scrollView.bounds.size.width);
	//	NSLog( @"ページが確定しました %d", page );
	UIViewController* current_vc = _pageViewControllers.allObjects[page];
	
	// 他のページの非表示処理
	NSMutableArray* disappearingViewControllers = [NSMutableArray new];
	for (UIViewController* vc in _visibleViewControllers) {
		if( vc == current_vc ){
			continue;
		}
		[vc viewWillDisappear:YES];
		[vc viewDidDisappear:YES];
		[disappearingViewControllers addObject:vc];
	}
	for (UIViewController* vc in disappearingViewControllers) {
		[_visibleViewControllers removeObject:vc];
	}
	
	/// 新しいページに移動した時のみviewDidAppear処理
	if( page != _lastPageId ){
		[current_vc viewDidAppear:YES];// iOS標準に合わせ、非表示処理をしてから、新しいVCの表示処理をする
	}
	
	scrollDirectionChecked = NO;
}




@end
