//
//  Pie.m
//  MGCoreGraphicsExample
//
//  Created by Luqiang on 2017/11/6.
//  Copyright © 2017年 libcore. All rights reserved.
//

#import "Pie.h"

@implementation Pie

- (void)drawRect:(CGRect)rect {
    //获取当前 View 的上下文对象（绘制环境）
    CGContextRef context = UIGraphicsGetCurrentContext();
    //增加线
    CGContextMoveToPoint(context, _aCenter.x, _aCenter.y);
    CGContextAddLineToPoint(context, _aCenter.x, _aCenter.y + _radius);
    //设置圆弧参数(0为顺时针、1为逆时针)
    CGContextAddArc(context, _aCenter.x, _aCenter.y, _radius, M_PI_2, M_PI, 0);
    //Path 关闭
    CGContextClosePath(context);
    //渲染
    CGContextStrokePath(context);
}

@end
