/*
MIT License

Copyright (c) 2017 yiplee

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_SWIFT_NAME(NavigationBarConfigurations)
typedef NS_OPTIONS(NSUInteger, YPNavigationBarConfigurations) {
    YPNavigationBarShow   = 0,          // show navigationBar
    YPNavigationBarHidden = 1,          // hide navigationBar
    
    // bar style
    YPNavigationBarStyleLight = 0 << 4,  // UIbarStyleDefault
    YPNavigationBarStyleBlack = 1 << 4,  // UIbarStyleBlack
    
    YPNavigationBarBackgroundStyleTranslucent = 0 << 8,
    YPNavigationBarBackgroundStyleOpaque      = 1 << 8,
    YPNavigationBarBackgroundStyleTransparent = 2 << 8,
    
    // bar background
    YPNavigationBarBackgroundStyleNone  = 0 << 16,
    YPNavigationBarBackgroundStyleColor = 1 << 16,
    YPNavigationBarBackgroundStyleImage = 2 << 16,
    
    // shadow image
    YPNavigationBarShowShadowImage = 1 << 20,
    
    YPNavigationBarConfigurationsDefault = 0,
};

NS_SWIFT_NAME(NavigationBarConfigureStyle)
@protocol YPNavigationBarConfigureStyle <NSObject>

- (YPNavigationBarConfigurations) yp_navigtionBarConfiguration;

- (UIColor *) yp_navigationBarTintColor;

@optional

/*
 *  identifier ????????????image???name???????????????????????????????????????image???isEqual?????????
 */
- (UIImage *) yp_navigationBackgroundImageWithIdentifier:(NSString **)identifier;

- (UIColor *) yp_navigationBackgroundColor;

@end
