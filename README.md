# GDUIColor32Custom
=======================
    自定义RGB颜色 

根据提供的32位颜色格式字符串进行转换RGB颜色

## 使用方法 
-----------
    1.导入.h头文件

    2.直接使用UIColor拓展的两个类方法

    3.使用格式鉴格式文档


## 类方法如下 👇
```objc
/**
 *  RGB颜色转换32位颜色
 *
 *  @param color 32位颜色字符串  格式：#000000 ---配色版颜色鉴文档
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)color;
```
```objc
/**
 *  RGB颜色转换32位颜色
 *
 *  @param color 32位颜色字符串  格式：#000000 ---配色版颜色鉴文档
 *  @param alpha 透明度
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;
```

