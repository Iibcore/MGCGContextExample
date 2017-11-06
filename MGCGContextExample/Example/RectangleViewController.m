//
//  RectangleViewController.m
//  MGCoreGraphicsExample
//
//  Created by Luqiang on 2017/11/6.
//  Copyright © 2017年 libcore. All rights reserved.
//

#import "RectangleViewController.h"
#import "Rectangle.h"

@interface RectangleViewController ()

@property (weak, nonatomic) IBOutlet Rectangle *rectangle;
@property (weak, nonatomic) IBOutlet UITextField *pointX;
@property (weak, nonatomic) IBOutlet UITextField *pointY;
@property (weak, nonatomic) IBOutlet UITextField *width;
@property (weak, nonatomic) IBOutlet UITextField *height;

@end

@implementation RectangleViewController

- (IBAction)_draw:(id)sender {
    CGPoint origin = CGPointMake([_pointX.text doubleValue], [_pointY.text doubleValue]);
    CGFloat width = [_width.text doubleValue];
    CGFloat height = [_height.text doubleValue];
    _rectangle.origin = origin;
    _rectangle.width = width;
    _rectangle.height = height;
    [_rectangle setNeedsDisplay];
}

@end
