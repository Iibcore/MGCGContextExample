//
//  Line.m
//  MGCoreGraphicsExample
//
//  Created by Luqiang on 2017/11/3.
//  Copyright © 2017年 libcore. All rights reserved.
//

#import "Line.h"

@implementation Line

- (void)drawRect:(CGRect)rect {
    //获取当前 View 的上下文对象（绘制环境）
    CGContextRef context = UIGraphicsGetCurrentContext();
    //设置线宽
    CGContextSetLineWidth(context, 1);
    //创建一个新的 Path ，同时抹去旧的 Path 。
    CGContextBeginPath(context);
    //Path 起点
    CGContextMoveToPoint(context, _startPoint.x, _startPoint.y);
    //Path 终点
    CGContextAddLineToPoint(context, _endPoint.x, _endPoint.y);
    //渲染
    CGContextStrokePath(context);
}

@end
