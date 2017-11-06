//
//  ArcViewController.m
//  MGCoreGraphicsExample
//
//  Created by Luqiang on 2017/11/6.
//  Copyright © 2017年 libcore. All rights reserved.
//

#import "ArcViewController.h"
#import "Arc.h"

@interface ArcViewController ()

@property (weak, nonatomic) IBOutlet Arc *arc;
@property (weak, nonatomic) IBOutlet UITextField *centerX;
@property (weak, nonatomic) IBOutlet UITextField *centerY;
@property (weak, nonatomic) IBOutlet UITextField *radius;
@property (weak, nonatomic) IBOutlet UITextField *startAngle;
@property (weak, nonatomic) IBOutlet UITextField *endAngle;

@end

@implementation ArcViewController

- (IBAction)_draw:(id)sender {
    CGPoint center = CGPointMake([_centerX.text doubleValue], [_centerY.text doubleValue]);
    CGFloat radius = [_radius.text doubleValue];
    CGFloat startAngle = [_startAngle.text doubleValue];
    CGFloat endAngle = [_endAngle.text doubleValue];
    _arc.aCenter = center;
    _arc.radius = radius;
    _arc.startAngle = startAngle;
    _arc.endAngle = endAngle;
    [_arc setNeedsDisplay];
}

@end
