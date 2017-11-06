//
//  PieViewController.m
//  MGCoreGraphicsExample
//
//  Created by Luqiang on 2017/11/6.
//  Copyright © 2017年 libcore. All rights reserved.
//

#import "PieViewController.h"
#import "Pie.h"

@interface PieViewController ()

@property (weak, nonatomic) IBOutlet Pie *pie;
@property (weak, nonatomic) IBOutlet UITextField *centerX;
@property (weak, nonatomic) IBOutlet UITextField *centerY;
@property (weak, nonatomic) IBOutlet UITextField *radius;
@property (weak, nonatomic) IBOutlet UITextField *startAngle;
@property (weak, nonatomic) IBOutlet UITextField *endAngle;

@end

@implementation PieViewController

- (IBAction)_draw:(id)sender {
    CGPoint center = CGPointMake([_centerX.text doubleValue], [_centerY.text doubleValue]);
    CGFloat radius = [_radius.text doubleValue];
    CGFloat startAngle = [_startAngle.text doubleValue];
    CGFloat endAngle = [_endAngle.text doubleValue];
    _pie.aCenter = center;
    _pie.radius = radius;
    _pie.startAngle = startAngle;
    _pie.endAngle = endAngle;
    [_pie setNeedsDisplay];
}

@end
