//
//  ViewController.m
//  testCut
//
//  Created by lijie.hu on 2020/5/26.
//  Copyright © 2020 lijie. All rights reserved.
//

#import "ViewController.h"
#import "YKPhotoCutController.h"
#import "YKPhotosCutView.h"

@interface ViewController ()

@end

@implementation ViewController{
   
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [btn addTarget:self action:@selector(cutOkBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor redColor];
   
    // Do any additional setup after loading the view.
}
-(void)viewDidAppear:(BOOL)animated{
  
}
// 确定裁剪
- (void)cutOkBtnClick
{  YKPhotoCutController *cutVC = [[YKPhotoCutController alloc] init];
     cutVC.modalPresentationStyle = UIModalPresentationFullScreen;
    cutVC.confirmCutBlock = ^(CGRect frame){
        NSLog(@"self.frame=%f",frame.size.width);
    };
       [self presentViewController:cutVC animated:YES completion:nil];
}
@end
