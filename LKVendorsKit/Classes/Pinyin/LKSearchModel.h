//
//  LKSearchModel.h
//  LiemsMobile70
//
//  Created by 张军 on 2021/6/21.
//  Copyright © 2021 Luculent. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/** 自定义把汉语词组转化成拼音，处理多音字的情况 */
typedef NSDictionary * _Nonnull(^LKReplacement)(void);
@interface LKSearchModel : NSObject
@property (nonatomic,copy)NSArray  * originalArray;
@property (nonatomic,copy)NSString * searchText;
@property (nonatomic,copy)NSString * propertyName;
@property (nonatomic,copy)NSString * type;
-(NSString *)chekIsLegal;
-(NSArray *)search;

/** 设置多音字情况下特定词语的拼音 */
+(void)setupReplacement:(LKReplacement)relacement;
+(void)removeReplacement;
@end

NS_ASSUME_NONNULL_END
