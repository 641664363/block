//
//  ViewController.m
//  block
//
//  Created by songlin on 2017/4/6.
//  Copyright © 2017年 songlin. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"
@interface ViewController ()
@property(nonatomic,strong)UILabel * label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor= [UIColor clearColor];
    self.title = @"block";
    [self createUI];
}

-(void)createUI{
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"block" forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 200, self.view.bounds.size.width, 30);
    btn.backgroundColor = [UIColor grayColor];
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    _label = [[UILabel alloc]init];
    _label.frame = CGRectMake(0, 400, self.view.bounds.size.width, 30);
    _label.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_label];
    
}

-(void)click:(UIButton *)sender{
    secondViewController * second = [[secondViewController alloc]init];
    second.backgroud = ^(UIColor * color){
        _label.backgroundColor = color;
    };
    [self.navigationController pushViewController:second animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
