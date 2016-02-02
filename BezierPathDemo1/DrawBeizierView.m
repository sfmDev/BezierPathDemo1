
//
//  DrawBeizierView.m
//  BezierPathDemo1
//
//  Created by Get-CC on 16/2/1.
//  Copyright © 2016年 GET-CC. All rights reserved.
//

#import "DrawBeizierView.h"

@implementation DrawBeizierView

- (void)drawRect:(CGRect)rect
{
//    [self drawRectPath];
//    [self drawCiclePath];
//    [self drawRoundedRectPath];
//    [self drawRoundedRectPathPath];
//    [self drawARCPath];
//    [self drawSecondBezierPath];
    [self drawThirdBezierPath];
}

// 画矩形
- (void)drawRectPath {
    //0, 100, self.view.frame.size.width, self.view.frame.size.height - 140 - 64)
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(0, 100, self.frame.size.width, self.frame.size.height - 140 - 64)];
    path.lineWidth = 2;
//    path.lineWidth = 1;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinBevel;
    
    // 设置填充颜色
    UIColor *fillColor = [UIColor cyanColor];
    [fillColor set];
    [path fill];
    
    // 设置画笔颜色
    UIColor *strokeColor = [UIColor redColor];
    [strokeColor set];
    
    // 根据我们设置的各个点连线
    [path stroke];
}

// 画圆形
- (void)drawCiclePath
{
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(20, 20, self.frame.size.width - 40, self.frame.size.width - 40)];
    path.lineWidth = 2;
    UIColor *fillColor = [UIColor cyanColor];
    [fillColor set];
    [path fill];
    
    UIColor *strokeColor = [UIColor redColor];
    [strokeColor set];
    
    [path stroke];
}


//画椭圆
- (void)drawRoundedRectPath
{
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(20, 20, self.frame.size.width - 180, self.frame.size.height - 40)];
    
    UIColor *fillColor = [UIColor cyanColor];
    [fillColor set];
    [path fill];
    
    UIColor *strokeColor = [UIColor blueColor];
    [strokeColor set];
    
    [path stroke];
}

- (void)drawRoundedRectPathPath
{
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(20, 20, self.frame.size.width-40, self.frame.size.height-40) byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(20, 20)];
    
    UIColor *fillColor = [UIColor greenColor];
    [fillColor set];
    [path fill];
    
    UIColor *strokeColor = [UIColor blueColor];
    [strokeColor set];
    
    [path stroke];
}

#define   kDegreesToRadians(degrees)  ((pi * degrees)/ 180)
- (void)drawARCPath
{
    const CGFloat pi = 3.1415926359;
    CGPoint center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:100 startAngle:-20 endAngle:kDegreesToRadians(100) clockwise:YES];
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    path.lineWidth = 5.0;
    
    UIColor *strokeColor = [UIColor cyanColor];
    [strokeColor set];
    
    [path stroke];
}

- (void)drawSecondBezierPath
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path moveToPoint:CGPointMake(20, self.frame.size.height - 100)];
    
    [path addQuadCurveToPoint:CGPointMake(self.frame.size.width-20, self.frame.size.height-100) controlPoint:CGPointMake(self.frame.size.width / 2, 0)];
    
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    path.lineWidth = 5.0;
    
    UIColor *strokeColor = [UIColor redColor];
    [strokeColor set];
    
    [path stroke];
}

- (void)drawThirdBezierPath
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path moveToPoint:CGPointMake(20, 150)];
    
    [path addCurveToPoint:CGPointMake(300, 150)
            controlPoint1:CGPointMake(160, 0)
            controlPoint2:CGPointMake(160, 250)];
    
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    path.lineWidth = 5.0;
    
    UIColor *strokeColor = [UIColor redColor];
    [strokeColor set];
    
    [path stroke];

}























@end
