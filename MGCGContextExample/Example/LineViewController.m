//
//  LineViewController.m
//  MGCoreGraphicsExample
//
//  Created by Luqiang on 2017/11/3.
//  Copyright © 2017年 libcore. All rights reserved.
//

#import "LineViewController.h"
#import "Line.h"

@interface LineViewController ()
@property (weak, nonatomic) IBOutlet Line *line;
@property (weak, nonatomic) IBOutlet UITextField *startPointX;
@property (weak, nonatomic) IBOutlet UITextField *startPointY;
@property (weak, nonatomic) IBOutlet UITextField *endPointX;
@property (weak, nonatomic) IBOutlet UITextField *endPointY;

@end

@implementation LineViewController

- (IBAction)_draw:(id)sender {
    CGPoint startPoint = CGPointMake([_startPointX.text doubleValue], [_startPointY.text doubleValue]);
    CGPoint endPoint = CGPointMake([_endPointX.text doubleValue], [_endPointY.text doubleValue]);
    _line.startPoint = startPoint;
    _line.endPoint = endPoint;
    [_line setNeedsDisplay];
}

@end
