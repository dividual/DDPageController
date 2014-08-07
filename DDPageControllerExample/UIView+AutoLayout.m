//
//  UIView+AutoLayout.m
//  blink
//
//  Created by noughts on 2014/06/12.
//  Copyright (c) 2014年 dividual inc. All rights reserved.
//

#import "UIView+AutoLayout.h"

@implementation UIView (AutoLayout)

/// 高さ制約を返す
-(NSLayoutConstraint*)heightConstraint{
	for (NSLayoutConstraint* constraint in self.constraints) {
		if( constraint.firstAttribute == NSLayoutAttributeHeight && constraint.secondAttribute == NSLayoutAttributeNotAnAttribute ){
			return constraint;
		}
	}
	return nil;
}


@end
