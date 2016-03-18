//
//  UIColor+Extension.h
//  RGB颜色
//
//  Created by andezhou on 16/1/3.
//  Copyright © 2015年 赵国栋. All rights reserved.
//  https://github.com/guodongZhao/ZGDUIColor32.git

#import <UIKit/UIKit.h>

@interface UIColor (Extension)

/**
 *  RGB颜色转换32位颜色
 *
 *  @param color 32位颜色字符串  格式：#000000 ---配色版颜色鉴文档
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)color;


/**
 *  RGB颜色转换32位颜色
 *
 *  @param color 32位颜色字符串  格式：#000000 ---配色版颜色鉴文档
 *  @param alpha 透明度
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;


@end
