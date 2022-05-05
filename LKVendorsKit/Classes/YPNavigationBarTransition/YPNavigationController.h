//
//  YPNavigationController.h
//  YPNavigationBarTransition-Example
//
//  Created by Guoyin Lee on 2018/4/20.
//  Copyright © 2018 yiplee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YPNavigationController : UINavigationController

- (void) navigationController:(UINavigationController *)navigationController
        didShowViewController:(UIViewController *)viewController
                     animated:(BOOL)animated;

@end
