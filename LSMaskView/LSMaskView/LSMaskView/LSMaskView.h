//
//  LSMaskView.h
//  LSMaskView
//
//  Created by Lin Sheng on 15/7/26.
//  Copyright (c) 2015年 Lin Sheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LSMaskView : UIView

// UI property
@property (nonatomic, strong) UIColor *maskBackgroundColor;
@property (nonatomic, strong) UIColor *maskColor;

@property (nonatomic, assign) CGFloat maskBorderWidth;
@property (nonatomic, strong) UIColor *maskBorderColor;


- (instancetype)initWithFrame:(CGRect)frame
              maskRoundedRect:(CGRect)maskFrame
                 cornerRadius:(CGFloat)cornerRadius;
- (instancetype)initWithFrame:(CGRect)frame maskRect:(CGRect)maskFrame;
- (instancetype)initWithFrame:(CGRect)frame maskEllipse:(CGRect)maskFrame;
- (instancetype)initWithFrame:(CGRect)frame maskPath:(CGPathRef)path;

@end
