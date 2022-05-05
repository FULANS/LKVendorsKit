//
//  TZImagePickerController+LKWatermark.h
//  TZImagePickTest
//
//  Created by 张军 on 2021/4/30.
//

#import "TZImagePickerController.h"
#import "LKWatermarkModel.h"
NS_ASSUME_NONNULL_BEGIN
@interface TZImagePickerController (LKWatermark)
/// 添加属性方法 用于配置水印相关信息
@property(strong, nonatomic) LKWatermarkModel *watermark;

//创建图片选择器:(图片，单张，可裁剪)
-(instancetype)initImageWithDelegate:(id<TZImagePickerControllerDelegate>)delegate andWatermarkType:(LKWatermarkType)watermarkType withSingleCropRect:(CGRect)cropRect;

//创建图片的选择器:(图片 + GIF)
-(instancetype)initImageWithDelegate:(id<TZImagePickerControllerDelegate>)delegate andWatermarkType:(LKWatermarkType)watermarkType;


//创建包含视频的选择器: (图片 + GIF + Video)
-(instancetype)initVideoWithDelegate:(id<TZImagePickerControllerDelegate>)delegate andWatermarkType:(LKWatermarkType)watermarkType;


//创建 新建时 预览 图片的选择器:(图片 + GIF)
-(instancetype)initPreviewImageWithDelegate:(id<TZImagePickerControllerDelegate>)delegate andWatermarkType:(LKWatermarkType)watermarkType selectedAssets:(NSMutableArray *)selectedAssets selectedPhotos:(NSMutableArray *)selectedPhotos index:(NSInteger)index;



//创建 新建时 预览 包含视频的选择器: (图片 + GIF + Video)
-(instancetype)initPreviewVideoWithDelegate:(id<TZImagePickerControllerDelegate>)delegate andWatermarkType:(LKWatermarkType)watermarkType selectedAssets:(NSMutableArray *)selectedAssets selectedPhotos:(NSMutableArray *)selectedPhotos index:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
