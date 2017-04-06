//
//  SecondViewController.h
//  block
//
//  Created by songlin on 2017/4/6.
//  Copyright © 2017年 songlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewControllerDelegate <NSObject>

-(void)changeColor:(UIColor*)color;

@end

@interface SecondViewController : UIViewController
@property(weak,nonatomic)id<SecondViewControllerDelegate>delegate;

@end
