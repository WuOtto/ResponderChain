# 响应链的一些简单应用
## 扩大按钮的响应区域
### 引言
有些时候UI设计的按钮，但是产品觉得响应区域不够大，用户体验不好，这种时候就需要去扩展按钮的响应区域。  

### 解决方法
重写方法：  
```
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent*)event
```

作用：  
判断下传入过来的点在不在方法调用者的坐标系上  

具体详见`LargeButton`

## 如何设计一个圆形的按钮，点击区域也是圆形的
### 引言
需求的来源是一道面试题，这里贴一下我的实现方法：  
自定义`View`，使用`block`做点击事件的回调，通过`touchesBegan`传递事件响应

### 实现过程中的问题分析
1. 对`View`执行切圆角操作后发现，点击切掉的圆角区域，还是会响应`touchesBegan`事件，所以需要进行一个点击位置的筛选。  
我使用的方法是：  
判断触摸点的位置到圆心的距离是否大于圆的半径；  

2. 实现按钮**高亮**的效果  
> 1. 增加属性`highlightColor`，在`touchesBegan`方法内，保存当前的背景颜色`normalColor`，修改`View`的背景颜色为`highlightColor`;  
> 2. 在`touchesBegan`方法内，修改`View`的背景颜色为`normalColor`;   

具体详见`CustomButton`