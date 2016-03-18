//
//  UIColor+Extension.m
//  RGB颜色
//
//  Created by andezhou on 16/1/3.
//  Copyright © 2015年 赵国栋. All rights reserved.
//  https://github.com/guodongZhao/ZGDUIColor32.git

#import "UIColor+Extension.h"
#define DEFAULT_VOID_COLOR [UIColor whiteColor]

@implementation UIColor (Extension)

/**
 *  RGB颜色转换32位颜色
 *
 *  @param color 32位颜色字符串  格式：#000000 ---配色版颜色鉴文档
 *  @param alpha 透明度
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha
{
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    if ([cString length] < 6)
        return DEFAULT_VOID_COLOR;
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return DEFAULT_VOID_COLOR;
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:alpha];
}

/**
 *  RGB颜色转换32位颜色
 *
 *  @param color 32位颜色字符串  格式：#000000 ---配色版颜色鉴文档
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)color
{
    return [UIColor colorWithHexString:color alpha:1.0];
}
@end
