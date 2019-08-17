# tikz-flowchat

## 介绍
这是一个使用TiKZ绘制传统程序流程图的简单宏包，通过定义`proc`、`test`、`term`等`node`样式实现。该宏包核心代码摘录自[Brent Longborough](http://www.texample.net/tikz/examples/author/brent-longborough/)设计的流程图绘制样例，参考了tikz-imagelabels宏包的设计思路，提供了`\flowchartset`命令以设置绘制参数。

Happy LaTeXing！~

![](./screenshot/flowchart.png)

## 注意

1. 本文档要求 TeXLive、MacTeX、MikTeX 不低于 2018 年的发行版，并且尽可能升级到最新，强烈建议使用TeXLive2019。

2. **不支持** [CTeX 套装](http://www.ctex.org/CTeXDownload)。
