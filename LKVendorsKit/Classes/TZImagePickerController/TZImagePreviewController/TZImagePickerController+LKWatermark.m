//
//  TZImagePickerController+LKWatermark.m
//  TZImagePickTest
//
//  Created by 张军 on 2021/4/30.
//

#import "TZImagePickerController+LKWatermark.h"
#import <objc/runtime.h>
static NSString *isNeedWaterKey = @"isNeedWaterKey"; //那么的key

@implementation TZImagePickerController (LKWatermark)

-(instancetype)initImageWithDelegate:(id<TZImagePickerControllerDelegate>)delegate andWatermarkType:(LKWatermarkType)watermarkType{
    if (!(self = [super init])) {
        return nil;
    }
    self  = ({
        TZImagePickerController *picker = [[TZImagePickerController alloc]initWithMaxImagesCount:9 columnNumber:4 delegate:delegate pushPhotoPickerVc:YES];
        picker.maxImagesCount = 9;
        picker.navigationBar.translucent = NO;
        picker.naviTitleColor = [UIColor blackColor];
        picker.naviBgColor = [UIColor whiteColor];
        picker.barItemTextColor = [UIColor blackColor];
        picker.sortAscendingByModificationDate = NO;
        picker.allowTakeVideo = NO;
        picker.allowPickingGif = YES;
        picker.allowPickingVideo = NO;
        picker.allowTakePicture = YES;
        picker.allowPickingOriginalPhoto = YES;
        picker.showSelectedIndex = YES;
        picker.showPhotoCannotSelectLayer = YES;
        picker.allowPickingMultipleVideo = YES;
        picker.watermark.watermarkType = watermarkType;
        picker.pickerDelegate = delegate;
        picker.modalPresentationStyle = UIModalPresentationFullScreen;
        picker;
    });
    return self;
}

-(instancetype)initImageWithDelegate:(id<TZImagePickerControllerDelegate>)delegate andWatermarkType:(LKWatermarkType)watermarkType withSingleCropRect:(CGRect)cropRect {
    if (!(self = [super init])) {
        return nil;
    }
    self  = ({
        TZImagePickerController *picker = [[TZImagePickerController alloc]initWithMaxImagesCount:1 columnNumber:4 delegate:delegate pushPhotoPickerVc:YES];
        picker.maxImagesCount = 1;
        picker.navigationBar.translucent = NO;
        picker.naviTitleColor = [UIColor blackColor];
        picker.naviBgColor = [UIColor whiteColor];
        picker.barItemTextColor = [UIColor blackColor];
        picker.sortAscendingByModificationDate = NO;
        picker.allowTakeVideo = NO;
        picker.allowPickingGif = NO;
        picker.allowPickingVideo = NO;
        picker.allowTakePicture = YES;
        picker.allowPickingOriginalPhoto = YES;
        picker.showSelectedIndex = YES;
        picker.showPhotoCannotSelectLayer = YES;
        picker.watermark.watermarkType = watermarkType;
        picker.pickerDelegate = delegate;
        picker.modalPresentationStyle = UIModalPresentationFullScreen;
        picker.showSelectBtn = NO;
        picker.allowCrop = YES;
        picker.cropRect = cropRect;
        picker.scaleAspectFillCrop = YES;
        picker.cropViewSettingBlock = ^(UIView *cropView) {
            cropView.layer.borderColor = [UIColor clearColor].CGColor;
        };
        picker;
    });
    return self;
}


-(instancetype)initVideoWithDelegate:(id<TZImagePickerControllerDelegate>)delegate andWatermarkType:(LKWatermarkType)watermarkType{
    if (!(self = [super init])) {
        return nil;
    }
    self  = ({
        TZImagePickerController *picker = [[TZImagePickerController alloc]initWithMaxImagesCount:9 columnNumber:4 delegate:delegate pushPhotoPickerVc:YES];
        picker.maxImagesCount =  9;//最大选择张数
        picker.navigationBar.translucent = NO;
        picker.naviTitleColor = [UIColor blackColor];
        picker.naviBgColor = [UIColor whiteColor];
        picker.barItemTextColor = [UIColor blackColor];
        picker.sortAscendingByModificationDate = NO;
        picker.allowTakeVideo = YES;
        picker.allowPickingGif = YES;
        picker.allowPickingVideo = YES;
        picker.allowTakePicture = YES;
        picker.showSelectedIndex = YES;
        picker.showPhotoCannotSelectLayer = YES;
        picker.allowPickingMultipleVideo = YES;
        picker.allowPickingOriginalPhoto = YES;
        picker.watermark.watermarkType = watermarkType;
        picker.modalPresentationStyle = UIModalPresentationFullScreen;
        picker;
    });
    return self;
}


//创建 新建时 预览 图片的选择器:(图片 + GIF)
-(instancetype)initPreviewImageWithDelegate:(id<TZImagePickerControllerDelegate>)delegate andWatermarkType:(LKWatermarkType)watermarkType selectedAssets:(NSMutableArray *)selectedAssets selectedPhotos:(NSMutableArray *)selectedPhotos index:(NSInteger)index{
    
    if (!(self = [super init])) {
        return nil;
    }
    
    self  = ({
        TZImagePickerController *picker = [[TZImagePickerController alloc] initWithSelectedAssets:selectedAssets selectedPhotos:selectedPhotos index:index];
        picker.maxImagesCount = 9;
        picker.navigationBar.translucent = NO;
        picker.naviTitleColor = [UIColor blackColor];
        picker.naviBgColor = [UIColor whiteColor];
        picker.barItemTextColor = [UIColor blackColor];
        picker.sortAscendingByModificationDate = NO;
        picker.allowTakeVideo = NO;
        picker.allowPickingGif = YES;
        picker.allowPickingVideo = NO;
        picker.allowTakePicture = YES;
        picker.allowPickingOriginalPhoto = YES;
        picker.showSelectedIndex = YES;
        picker.showPhotoCannotSelectLayer = YES;
        picker.allowPickingMultipleVideo = YES;
        picker.watermark.watermarkType = watermarkType;
        picker.pickerDelegate = delegate;
        picker.modalPresentationStyle = UIModalPresentationFullScreen;
        picker;
    });
    return self;
    
}



//创建 新建时 预览 包含视频的选择器: (图片 + GIF + Video)
-(instancetype)initPreviewVideoWithDelegate:(id<TZImagePickerControllerDelegate>)delegate andWatermarkType:(LKWatermarkType)watermarkType selectedAssets:(NSMutableArray *)selectedAssets selectedPhotos:(NSMutableArray *)selectedPhotos index:(NSInteger)index{
    
    if (!(self = [super init])) {
        return nil;
    }

    self  = ({
        TZImagePickerController *picker = [[TZImagePickerController alloc] initWithSelectedAssets:selectedAssets selectedPhotos:selectedPhotos index:index];
        picker.maxImagesCount = 9;
        picker.navigationBar.translucent = NO;
        picker.naviTitleColor = [UIColor blackColor];
        picker.naviBgColor = [UIColor whiteColor];
        picker.barItemTextColor = [UIColor blackColor];
        picker.sortAscendingByModificationDate = NO;
        picker.allowPickingGif = YES;
        picker.allowTakePicture = YES;
        picker.showSelectedIndex = YES;
        picker.allowTakeVideo = YES;
        picker.allowPickingVideo = YES;
        picker.allowPickingMultipleVideo = YES;
        picker.showPhotoCannotSelectLayer = YES;
        picker.allowPickingOriginalPhoto = YES;
        picker.watermark.watermarkType = watermarkType;
        picker.pickerDelegate = delegate;
        picker.modalPresentationStyle = UIModalPresentationFullScreen;
        picker;
    });
    return self;
    
}

-(void)setWatermark:(LKWatermarkModel *)watermark{
    objc_setAssociatedObject(self, &isNeedWaterKey, watermark, OBJC_ASSOCIATION_RETAIN);
}

-(LKWatermarkModel *)watermark{
    id obj = objc_getAssociatedObject(self, &isNeedWaterKey);
    if (!obj){
        obj = [[LKWatermarkModel alloc]init];
        objc_setAssociatedObject(self, &isNeedWaterKey, obj, OBJC_ASSOCIATION_RETAIN);
    }
    return obj;
}

@end
