# Zelda

[![CI Status](https://img.shields.io/travis/ljunb/Zelda.svg?style=flat)](https://travis-ci.org/ljunb/Zelda)
[![Version](https://img.shields.io/cocoapods/v/Zelda.svg?style=flat)](https://cocoapods.org/pods/Zelda)
[![License](https://img.shields.io/cocoapods/l/Zelda.svg?style=flat)](https://cocoapods.org/pods/Zelda)
[![Platform](https://img.shields.io/cocoapods/p/Zelda.svg?style=flat)](https://cocoapods.org/pods/Zelda)

`Zelda` 是一个支持链式语法的 FlexBox 布局库，是针对 [YogaKit](https://github.com/facebook/yoga/tree/main/YogaKit) 的二次封装，可以快速的让 iOS 原生开发人员使用 FlexBox 技术进行
UI 布局。

## 安装
```ruby
pod 'Zelda'
```

## 简单使用
```objc
#import <Zelda/UIView+Zelda.h>

UIView *container = [UIView new];
container.backgroundColor = UIColor.redColor;
[self.view addSubview:container];
container
    .zelda
    .flexDirection(ZDFlexDirectionRow)
    .alignItems(ZDAlignCenter)
    .margin(100)
    .height(100)
    .width(100);

UIView *view1 = [UIView new];
view1.backgroundColor = UIColor.grayColor;
[container addSubview:view1];
view1.zelda.height(30).width(30);

UIView *view2 = [UIView new];
view2.backgroundColor = UIColor.blueColor;
[container addSubview:view2];
view2.zelda.height(30).width(30).marginHorizontal(10);

[container.zelda applyLayout];
```

以 `per_` 开头使用百分比数值：
```objc
UIView *view = [UIView new];
// 代表宽高分别占据父组件的30%、10%
view.zelda.per_width(30).per_height(10);
```

以 `zd_` 开头获取当前组件的布局数值：
```objc
UIView *view = [UIView new];
view.zelda.width(30).height(30);
CGFloat height = view.zelda.zd_height;
// todo something...

```
## 运行示例
```shell
git clone git@github.com:ljunb/Zelda.git
cd Zelda/Example && pod install
```
