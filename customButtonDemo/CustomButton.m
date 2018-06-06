//
//  CustomButton.m
//  customButtonDemo
//
//  Created by otto on 2018/6/6.
//  Copyright © 2018年 otto. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton
{
    UIColor *_normalColor;
    BOOL _isMoveBegin;
}

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        self.layer.cornerRadius = frame.size.width / 2.0;
        self.layer.masksToBounds = YES;
    }
    return self;
}

-(void)setDownClick:(void (^)(void))downClick{
    DownClick=downClick;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event//判断点击的位置处理响应的事件
{
    CGPoint clickPoint = [[touches anyObject] locationInView:self];
    
    BOOL isInView = [self touchInView:clickPoint];
    
    if (isInView) {
        _normalColor = self.backgroundColor;
        self.backgroundColor = self.highlightColor;
        _isMoveBegin = YES;
    }else{
        _isMoveBegin = NO;
    }
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesEnded:touches withEvent:event];
    CGPoint clickPoint = [[touches anyObject] locationInView:self];
    
    BOOL isInView = [self touchInView:clickPoint];
    
    if (isInView) {
        if(DownClick!=NULL)
            DownClick();
        self.backgroundColor = _normalColor;
    }else{
        
        if (_isMoveBegin) {
            self.backgroundColor = _normalColor;
        }
    }
}

- (CGFloat)distanceWithPoint:(CGPoint)first toPoint:(CGPoint) second{
    CGFloat deltaX = second.x - first.x;
    CGFloat deltaY = second.y - first.y;
    return sqrt(deltaX*deltaX + deltaY*deltaY );
}

- (BOOL)touchInView:(CGPoint)touchPoint{
    CGFloat centerX = self.frame.size.width / 2.0;
    
    CGFloat r = self.frame.size.width / 2.0;
    
    CGPoint centerP = CGPointMake(centerX, centerX);
    
    CGFloat distance = [self distanceWithPoint:touchPoint toPoint:centerP];
    
    if (distance > r) {
        return NO;
    }else{
        return YES;
    }
}

@end
