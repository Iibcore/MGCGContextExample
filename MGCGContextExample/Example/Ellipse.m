//
//  Ellipse.m
//  MGCoreGraphicsExample
//
//  Created by Luqiang on 2017/11/6.
//  Copyright © 2017年 libcore. All rights reserved.
//

#import "Ellipse.h"

@implementation Ellipse

- (void)drawRect:(CGRect)rect {
    //获取当前 View 的上下文对象（绘制环境）
    CGContextRef context = UIGraphicsGetCurrentContext();
    //设置椭圆参数( x、y 为矩形左上角起点)
    CGContextAddEllipseInRect(context, CGRectMake(_aCenter.x, _aCenter.y, _radiusH, _radiusV));
    //渲染
    CGContextStrokePath(context);
}

@end
