//
//  secondViewController.h
//  block
//
//  Created by songlin on 2017/4/6.
//  Copyright © 2017年 songlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondViewController : UIViewController
typedef void (^changeColor)(id);

@property(nonatomic,copy)changeColor backgroud;
@end
