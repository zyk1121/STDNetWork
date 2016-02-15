//
//  ViewController.m
//  STDNetWork
//
//  Created by zhangyuanke on 16/2/15.
//  Copyright © 2016年 kdtm. All rights reserved.
//

#import "ViewController.h"
#import "STDNetWorking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [STDNetWorkManager getFromURLPath:@"http://localhost:8080/index.html" parameter:nil finished:^(id data, NSError *error) {
        NSLog(@"%@",data);
    }];
}

@end
