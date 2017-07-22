//
//  ViewController.m
//  LSMaskView
//
//  Created by Lin Sheng on 15/7/26.
//  Copyright (c) 2015年 Lin Sheng. All rights reserved.
//

#import "ViewController.h"
#import "LSMaskView.h"

@interface ViewController ()

@property (nonatomic, strong) LSMaskView *maskView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.maskView = [[LSMaskView alloc] initWithFrame:self.view.bounds maskRect:CGRectMake(50, 50, 200, 300)];
//    self.maskView = [[LSMaskView alloc] initWithFrame:self.view.bounds maskRoundedRect:CGRectMake(50, 50, 200, 300) cornerRadius:10.f];
//    self.maskView = [[LSMaskView alloc] initWithFrame:self.view.bounds maskEllipse:CGRectMake(50, 50, 200, 300)];
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(100, 100)];
    [path addCurveToPoint:CGPointMake(300, 300) controlPoint1:CGPointMake(50, 150) controlPoint2:CGPointMake(300, 200)];
    [path addLineToPoint:CGPointMake(10, 400)];
    [path closePath];
    
    self.maskView = [[LSMaskView alloc] initWithFrame:self.view.bounds maskPath:path.CGPath];
    
    [self.view addSubview:self.maskView];
    
}

@end
