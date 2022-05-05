//
//  SwipeGestureRecognizer.h
//  ZLSwipeableViewDemo
//
//  Created by WZheng on 2019/6/21.
//  Copyright © 2019 Zhixuan Lai. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface SwipeGestureRecognizer : UISwipeGestureRecognizer

- (instancetype)initWithTarget:(nullable id)target
                        action:(nullable SEL)action
                       touches:(NSUInteger)numbers
                     direction:(UISwipeGestureRecognizerDirection)direction;

@end
NS_ASSUME_NONNULL_END
