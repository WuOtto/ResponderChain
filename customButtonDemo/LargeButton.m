//
//  LargeButton.m
//  customButtonDemo
//
//  Created by zly on 2018/6/6.
//  Copyright © 2018年 otto. All rights reserved.
//

#import "LargeButton.h"

@implementation LargeButton

//重写此方法
// 作用:判断下传入过来的点在不在方法调用者的坐标系上
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    
    CGRect bounds =CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
    
    CGFloat widthDelta = self.widthDelta;
    CGFloat heightDelta = self.heightDelta;
    
    //相当于bounds 上下左右都增加了10的额外
    bounds =CGRectInset(bounds, -0.5*widthDelta, -0.5* heightDelta);//注意这里是负数，扩大了之前的bounds的范围
    
    //点击的点是否在这个范围
    return CGRectContainsPoint(bounds, point);
}

@end
