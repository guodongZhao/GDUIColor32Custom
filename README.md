# ZGDUIColor32
将RGB颜色转换成32位数据存储为字符串格式  

# 使用方法 

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
