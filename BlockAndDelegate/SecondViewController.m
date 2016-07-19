//
//  SecondViewController.m
//  BlockAndDelegate
//
//  Created by 高青松 on 16/7/15.
//  Copyright © 2016年 高青松. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (nonatomic,strong)UITextField *tf;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    self.tf = [[UITextField alloc]initWithFrame:CGRectMake(100, 200, 100, 30)];
    self.tf.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.tf];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake(100, 230, 100, 30)];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnAction
{
//    if (self.delegate && [self.delegate respondsToSelector:@selector(pssTFString:)]) {
//        [self.delegate pssTFString:self.tf.text];
//    }
    if (self.myBlock) {
        self.myBlock(self.tf.text);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
