//
//  Rectangle.m
//  MGCoreGraphicsExample
//
//  Created by Luqiang on 2017/11/6.
//  Copyright © 2017年 libcore. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

- (void)drawRect:(CGRect)rect {
    //获取当前 View 的上下文对象（绘制环境）
    CGContextRef context = UIGraphicsGetCurrentContext();
    //设置矩形参数( x、y 为矩形左上角起点)
    CGContextAddRect(context, CGRectMake(_origin.x, _origin.y, _width, _height));
    //渲染
    CGContextStrokePath(context);
}

@end
