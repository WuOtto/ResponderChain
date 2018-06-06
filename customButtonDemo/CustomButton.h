//
//  CustomButton.h
//  customButtonDemo
//
//  Created by otto on 2018/6/6.
//  Copyright © 2018年 otto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomButton : UIView
{
    void (^DownClick)(void);//声明下按键block
}

@property (nonatomic,strong) UIColor *highlightColor;

-(void)setDownClick:(void(^)(void)) downClick;

@end
