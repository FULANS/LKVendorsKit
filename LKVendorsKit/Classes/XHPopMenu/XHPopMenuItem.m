//
//  XHPopMenuItem.m
//  MessageDisplayExample
//
//  Created by dw_iOS on 14-6-7.
//  Copyright (c) 2014年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507 本人QQ群（142557668）. All rights reserved.
//

#import "XHPopMenuItem.h"

@implementation XHPopMenuItem

- (instancetype)initWithImage:(UIImage *)image title:(NSString *)title {
    return [self initWithImage:image title:title font:nil color:nil];;
}

- (instancetype)initWithImage:(UIImage *)image title:(NSString *)title font:(UIFont *)font color:(UIColor *)color{
    if (self) {
        self.image = image;
        self.title = title;
        self.font = font ? : [UIFont systemFontOfSize:14];
        self.color = color ? : [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
    }
    return self;
}

@end
