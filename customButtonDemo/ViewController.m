//
//  ViewController.m
//  customButtonDemo
//
//  Created by otto on 2018/6/6.
//  Copyright © 2018年 otto. All rights reserved.
//

#import "ViewController.h"
#import "CustomButton.h"
#import "LargeButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CustomButton * customButton = [[CustomButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    customButton.backgroundColor = [UIColor colorWithRed:176/255.0 green:196/255.0 blue:222/255.0 alpha:1];
    customButton.highlightColor = [UIColor colorWithRed:60/255.0 green:179/255.0 blue:113/255.0 alpha:1];
    [customButton setDownClick:^{
        NSLog(@"customButton click----");
    }];
    [self.view addSubview:customButton];
    
    LargeButton *largeBtn = [[LargeButton alloc] init];
    largeBtn.frame = CGRectMake(100, 250, 100, 50);
    largeBtn.backgroundColor = [UIColor colorWithRed:52/255.0 green:123/255.0 blue:165/255.0 alpha:1];
    [largeBtn addTarget:self action:@selector(largeAction:) forControlEvents:UIControlEventTouchUpInside];
    largeBtn.widthDelta = 30;
    largeBtn.heightDelta = 20;
    [self.view addSubview:largeBtn];
}

- (void)largeAction:(UIButton *)btn{
    NSLog(@"~largeBtn click~");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
