//
//  ViewController.m
//  BlockAndDelegate
//
//  Created by 高青松 on 16/7/15.
//  Copyright © 2016年 高青松. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()<SecondViewControllerDelegate>
@property (nonatomic,strong)UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 30)];
    self.label.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.label];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    [btn setFrame:CGRectMake(100, 130, 100, 30)];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
}
- (void)btnAction
{
    SecondViewController *scondVc = [[SecondViewController alloc]init];
//    scondVc.delegate = self;
    scondVc.myBlock = ^(NSString *string)
    {
        [self pssTFString:string];
    };
    [self presentViewController:scondVc animated:YES completion:nil];
}

- (void)pssTFString:(NSString *)tfString
{
    self.label.text = tfString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
