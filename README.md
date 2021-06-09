# flutter_autosize
计算百分比的屏幕适配库

## pub

[Pub地址](https://pub.flutter-io.cn/packages/flutter_autosize)

## Getting Started
基于UI给定的设计图，以宽度或高度为基准，动态计算拉伸的逻辑像素，达到保持拉伸不变形

默认以宽度为基准适配，适用于滑动页面，设计图宽度全部显示，高度保持比例拉伸
## 代码接入

在程序启动初始化UI设计图的宽高

```
AutoSize().initSetting(context, 750, 1334);

```

传入设计图的标注的宽高像素值
```
AutoSize().width(375)
AutoSize().height(340)
```

修改适配方式

true:按宽度适配

false:按高度适配

```
AutoSize().setAdapterMode(false);
```