//
//  ViewController.m
//  hellowebview
//
//  Created by jilong5 on 2017/11/1.
//  Copyright © 2017年 jilong5. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testbtn:(id)sender {
    // NSLog 输出控制台log日志
    NSLog(@"Hello, world!");
    //[]相当于运行方法，alertControllerWithTitle 方法名，第一个参数hello 第二个参数 hello world! 第三个参数UIAlertControllerStyleAlert
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Hello" message:@"Hello, world!" preferredStyle:UIAlertControllerStyleAlert];
    //对应注册函数处理
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        NSLog(@"Cancle Action");
    }];
    //对应注册函数处理
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSLog(@"OK Action");
    }];
    // 以下是两个负值操作
    [alertController addAction:cancelAction];
    [alertController addAction:okAction];
    // 执行显示在页面上？
    [self presentViewController:alertController animated:YES completion:nil];

}

@end
