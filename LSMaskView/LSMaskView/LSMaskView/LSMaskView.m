//
//  LSMaskView.m
//  LSMaskView
//
//  Created by Lin Sheng on 15/7/26.
//  Copyright (c) 2015年 Lin Sheng. All rights reserved.
//

#import "LSMaskView.h"

@interface LSMaskView()

@property (nonatomic, strong) UIBezierPath *bezierPath;

@end


@implementation LSMaskView

#pragma mark - Life Cycle Methods
- (instancetype)initWithFrame:(CGRect)frame maskRect:(CGRect)maskFrame {
    return [self initWithFrame:frame maskRoundedRect:maskFrame cornerRadius:0.f];
}

- (instancetype)initWithFrame:(CGRect)frame
              maskRoundedRect:(CGRect)maskFrame
                 cornerRadius:(CGFloat)cornerRadius {
    if (self = [super initWithFrame:frame]) {
        self.bezierPath = [UIBezierPath bezierPathWithRoundedRect:maskFrame cornerRadius:cornerRadius];
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame maskEllipse:(CGRect)maskFrame {
    if (self = [super initWithFrame:frame]) {
        self.bezierPath = [UIBezierPath bezierPathWithOvalInRect:maskFrame];
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame maskPath:(CGPathRef)path {
    if (self = [super initWithFrame:frame]) {
        self.bezierPath = [UIBezierPath bezierPathWithCGPath:path];
        [self setup];
    }
    return self;
}

#pragma mark - Private Methos
- (void)setup {
    
    self.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

    [self setupDefaultValue];
}

- (void)setupDefaultValue {
    
    self.opaque = NO;
    
    self.maskBackgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.8];
    self.maskColor = [UIColor clearColor];
     
    self.maskBorderWidth = 0.f;
    self.maskBorderColor = [UIColor blackColor];
}

#pragma mark - Draw Methos
- (void)drawRect:(CGRect)rect {

    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, self.maskBackgroundColor.CGColor);
    CGContextFillRect(context, rect);
    
    CGContextSetBlendMode(context, kCGBlendModeClear);
    CGContextSetFillColorWithColor(context, self.maskColor.CGColor);
    [self.bezierPath fill];
}

@end
