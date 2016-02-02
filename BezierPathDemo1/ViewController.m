//
//  ViewController.m
//  BezierPathDemo1
//
//  Created by Get-CC on 16/2/1.
//  Copyright © 2016年 GET-CC. All rights reserved.
//

#import "ViewController.h"
#import "DrawBeizierView.h"
@interface ViewController ()
@property (nonatomic, strong) UIView *drawingView;

@property (nonatomic, strong) DrawBeizierView *drawView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
//    self.drawingView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
//    self.drawingView.layer.delegate = self;
    [self testBezierPath];
}

- (void)testBezierPath
{
    DrawBeizierView *v = [[DrawBeizierView alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height - 140 - 64)];
    v.layer.borderColor = [UIColor clearColor].CGColor;
    v.layer.borderWidth = 5;
    v.backgroundColor = [UIColor clearColor];
    [self.view addSubview:v];
//    self.view.layer.borderWidth = 5;
    self.drawingView = v;
}


//- (void)createRectWithBezierPath
//{
//    UIBezierPath *rectBezier = [UIBezierPath bezierPathWithRect:CGRectMake(100, 100, 100, 100)];
//    rectBezier.lineCapStyle = kCGLineCapRound;
//    rectBezier.lineJoinStyle = kCGLineJoinBevel;
//    rectBezier.lineWidth = 1.5;
////    [rectBezier closePath];
//    
//    UIColor *fillColor = [UIColor cyanColor];
//    [fillColor set];
//    [rectBezier fill];
//    
//    UIColor *strokeColor = [UIColor orangeColor];
//    [strokeColor set];
//    
//    [rectBezier stroke];
//    [self.view setNeedsDisplay];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
