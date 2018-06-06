//
//  LargeButton.h
//  customButtonDemo
//
//  Created by zly on 2018/6/6.
//  Copyright © 2018年 otto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LargeButton : UIButton

/**
 宽希望扩展的范围
 */
@property (nonatomic,assign) CGFloat widthDelta;

/**
 高希望扩展的范围
 */
@property (nonatomic,assign) CGFloat heightDelta;

@end
