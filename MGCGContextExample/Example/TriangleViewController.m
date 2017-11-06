//
//  TriangleViewController.m
//  MGCoreGraphicsExample
//
//  Created by Luqiang on 2017/11/3.
//  Copyright © 2017年 libcore. All rights reserved.
//

#import "TriangleViewController.h"
#import "Triangle.h"

@interface TriangleViewController ()

@property (weak, nonatomic) IBOutlet Triangle *line;
@property (weak, nonatomic) IBOutlet UITextField *point1X;
@property (weak, nonatomic) IBOutlet UITextField *point1Y;
@property (weak, nonatomic) IBOutlet UITextField *point2X;
@property (weak, nonatomic) IBOutlet UITextField *point2Y;
@property (weak, nonatomic) IBOutlet UITextField *point3X;
@property (weak, nonatomic) IBOutlet UITextField *point3Y;

@end

@implementation TriangleViewController

- (IBAction)_draw:(id)sender {
    CGPoint point1 = CGPointMake([_point1X.text doubleValue], [_point1Y.text doubleValue]);
    CGPoint point2 = CGPointMake([_point2X.text doubleValue], [_point2Y.text doubleValue]);
    CGPoint point3 = CGPointMake([_point3X.text doubleValue], [_point3Y.text doubleValue]);
    _line.point1 = point1;
    _line.point2 = point2;
    _line.point3 = point3;
    [_line setNeedsDisplay];
}

@end
