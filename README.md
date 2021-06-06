[![Pub]](https://pub.flutter-io.cn/packages/flutter_autosize)
# flutter_autosize
计算百分比的屏幕适配库

## Getting Started
基于UI给定的设计图，以宽度或高度为基准，动态计算拉伸的逻辑像素，达到保持拉伸不变形

## 代码接入

在程序启动初始化UI设计图的宽高,默认以宽度为基准适配

```
AutoSize().initSetting(context, 750, 1334);
```

修改适配方式

```
AutoSize().setAdapterMode(false);
```

根据屏幕占比，动态计算宽高，返回的是逻辑像素

```
AutoSize().width(760)
AutoSize().height(340)
```