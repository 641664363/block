//
//  ViewController.m
//  block
//
//  Created by songlin on 2017/4/6.
//  Copyright © 2017年 songlin. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()<SecondViewControllerDelegate>
@property(nonatomic,strong)UIButton *delegateBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"delegate";
    self.view.backgroundColor = [UIColor clearColor];
    [self createUI];
}

-(void)createUI{
    _delegateBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _delegateBtn.backgroundColor = [UIColor grayColor];
    [_delegateBtn setTitle:@"color" forState:UIControlStateNormal];
    _delegateBtn.frame = CGRectMake(0, 150, self.view.bounds.size.width, 30);
    [_delegateBtn addTarget:self action:@selector(Click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_delegateBtn];
    
}

-(void)Click:(UIButton *)sender{
    SecondViewController * second = [[SecondViewController alloc]init];
    second.delegate = self;
    [self.navigationController pushViewController:second animated:YES];
}

-(void)changeColor:(UIColor *)color{
    _delegateBtn.backgroundColor = color;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
