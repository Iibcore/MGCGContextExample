//
//  EllipseViewController.m
//  MGCoreGraphicsExample
//
//  Created by Luqiang on 2017/11/6.
//  Copyright © 2017年 libcore. All rights reserved.
//

#import "EllipseViewController.h"
#import "Ellipse.h"

@interface EllipseViewController ()

@property (weak, nonatomic) IBOutlet Ellipse *ellipse;
@property (weak, nonatomic) IBOutlet UITextField *centerX;
@property (weak, nonatomic) IBOutlet UITextField *centerY;
@property (weak, nonatomic) IBOutlet UITextField *radiusH;
@property (weak, nonatomic) IBOutlet UITextField *radiusV;

@end

@implementation EllipseViewController

- (IBAction)_draw:(id)sender {
    CGPoint center = CGPointMake([_centerX.text doubleValue], [_centerY.text doubleValue]);
    CGFloat radiusH = [_radiusH.text doubleValue];
    CGFloat radiusV = [_radiusV.text doubleValue];
    _ellipse.aCenter = center;
    _ellipse.radiusH = radiusH;
    _ellipse.radiusV = radiusV;
    [_ellipse setNeedsDisplay];
}

@end
