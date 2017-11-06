//
//  Triangle.m
//  MGCoreGraphicsExample
//
//  Created by Luqiang on 2017/11/3.
//  Copyright © 2017年 libcore. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle

- (void)drawRect:(CGRect)rect {
    //获取当前 View 的上下文对象（绘制环境）
    CGContextRef context = UIGraphicsGetCurrentContext();
    //设置线宽
    CGContextSetLineWidth(context, 1);
    //创建一个新的 Path ，同时抹去旧的 Path 。
    CGContextBeginPath(context);
    //Path 点1
    CGContextMoveToPoint(context, _point1.x, _point1.y);
    //Path 点2
    CGContextAddLineToPoint(context, _point2.x, _point2.y);
    //Path 点3
    CGContextAddLineToPoint(context, _point3.x, _point3.y);
    //Path 终点（点1）
    CGContextAddLineToPoint(context, _point1.x, _point1.y);
    //Path 关闭
    CGContextClosePath(context);
    //渲染
    CGContextStrokePath(context);
}

@end
