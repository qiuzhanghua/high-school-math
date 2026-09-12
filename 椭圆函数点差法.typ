#import "template.typ": *

#set document(title: [圆锥曲线点差法])

#template(
  heading2-align: left,
  page-footer: "第 1 页",
)[

== 椭圆

点差法是处理圆锥曲线中点弦问题的常用方法，其核心在于利用平方差公式将弦的中点与斜率联系起来。

设椭圆方程为： $x^2 / a^2 + y^2 / b^2 = 1$，弦 $A B$ 的中点为 $M(x_0, y_0)$，弦 $A B$ 的斜率为 $k$。

#set math.equation(numbering: none)

设 $A(x_1, y_1)$，$B(x_2, y_2)$，则 $x_1 + x_2 = 2x_0$，$y_1 + y_2 = 2y_0$。

将 $A$、$B$ 两点坐标分别代入椭圆方程：

#set math.equation(numbering: "(1)")

$ x_1^2 / a^2 + y_1^2 / b^2 = 1 $

$ x_2^2 / a^2 + y_2^2 / b^2 = 1 $

#set math.equation(numbering: none)

两式相减：

#set math.equation(numbering: "(1)")

$ (x_1^2 - x_2^2) / a^2 + (y_1^2 - y_2^2) / b^2 = 0 $

#set math.equation(numbering: none)

利用平方差公式：

#set math.equation(numbering: "(1)")

$ ((x_1 - x_2)(x_1 + x_2)) / a^2 + ((y_1 - y_2)(y_1 + y_2)) / b^2 = 0 $

#set math.equation(numbering: none)

代入 $x_1 + x_2 = 2x_0$，$y_1 + y_2 = 2y_0$，并移项：

#set math.equation(numbering: "(1)")

$ (2x_0 (x_1 - x_2)) / a^2 + (2y_0 (y_1 - y_2)) / b^2 = 0 $

#set math.equation(numbering: none)

将 $(y_1 - y_2) / (x_1 - x_2) = k$ 代入：

#set math.equation(numbering: "(1)")

$ k dot y_0 / x_0 = - b^2 / a^2 $

#set math.equation(numbering: none)

即得到椭圆点差法的核心结论：

#set math.equation(numbering: "(1)")

$ k = - (b^2 x_0) / (a^2 y_0) $

#set math.equation(numbering: none)

其中 $k$ 为弦 $A B$ 的斜率，$(x_0, y_0)$ 为弦 $A B$ 的中点坐标。


#line(length: 100%, stroke: 0.5pt + gray)

== 双曲线

设双曲线方程为： $x^2 / a^2 - y^2 / b^2 = 1$，弦 $A B$ 的中点为 $M(x_0, y_0)$，弦 $A B$ 的斜率为 $k$。

#set math.equation(numbering: none)

同理，将 $A$、$B$ 两点坐标分别代入双曲线方程并相减，可得：

#set math.equation(numbering: "(1)")

$ k dot y_0 / x_0 = b^2 / a^2 $

#set math.equation(numbering: none)

即：

#set math.equation(numbering: "(1)")

$ k = (b^2 x_0) / (a^2 y_0) $


#line(length: 100%, stroke: 0.5pt + gray)

== 抛物线

设抛物线方程为： $y^2 = 2p x$（$p > 0$），弦 $A B$ 的中点为 $M(x_0, y_0)$，弦 $A B$ 的斜率为 $k$。

#set math.equation(numbering: none)

设 $A(x_1, y_1)$，$B(x_2, y_2)$，则 $y_1 + y_2 = 2y_0$。

将 $A$、$B$ 两点坐标分别代入抛物线方程：

#set math.equation(numbering: "(1)")

$ y_1^2 = 2p x_1 $

$ y_2^2 = 2p x_2 $

#set math.equation(numbering: none)

两式相减：

#set math.equation(numbering: "(1)")

$ y_1^2 - y_2^2 = 2p (x_1 - x_2) $

#set math.equation(numbering: none)

即：

#set math.equation(numbering: "(1)")

$ (y_1 - y_2)(y_1 + y_2) = 2p (x_1 - x_2) $

#set math.equation(numbering: none)

代入 $y_1 + y_2 = 2y_0$，并令 $k = (y_1 - y_2) / (x_1 - x_2)$：

#set math.equation(numbering: "(1)")

$ k = p / y_0 $


#line(length: 100%, stroke: 0.5pt + gray)

== 使用条件与注意事项

#set math.equation(numbering: none)

- #text(fill: red)[曲线必须为标准形式]（中心在原点，对称轴为坐标轴）

- 弦的中点必须在曲线内部，即对于椭圆有 $x_0^2/a^2 + y_0^2/b^2 < 1$

- 对于椭圆和双曲线，要求 $y_0 != 0$，否则斜率不存在或需单独讨论

- 当 $y_0 = 0$ 时，弦为水平直径，斜率不存在，此时点差法不适用

- 双曲线中点不能在渐近线上，否则弦与双曲线可能只有单交点



#line(length: 100%, stroke: 0.5pt + gray)

== 典型例题

#set math.equation(numbering: none)

#strong[例 1]：已知椭圆 $x^2/16 + y^2/4 = 1$，一条弦的中点为 $M(2, 1)$，求弦所在直线的方程。

#set math.equation(numbering: none)

解：由椭圆点差法结论 $k = -(b^2 x_0)/(a^2 y_0)$，代入 $a^2 = 16$，$b^2 = 4$，$x_0 = 2$，$y_0 = 1$，得：

#set math.equation(numbering: "(1)")

$ k = -(4 times 2)/(16 times 1) = -1/2 $

#set math.equation(numbering: none)

所以弦的方程为：

#set math.equation(numbering: "(1)")

$ y - 1 = -1/2 (x - 2) $

#set math.equation(numbering: none)

即：

#set math.equation(numbering: "(1)")

$ x + 2y - 4 = 0 $

#set math.equation(numbering: none)

#strong[例 2]：已知椭圆 $x^2/9 + y^2/4 = 1$，斜率为 $1$ 的弦的中点在直线 $y = 2x$ 上，求弦中点的轨迹方程。

#set math.equation(numbering: none)

解：由椭圆点差法结论 $k = -(b^2 x_0)/(a^2 y_0)$，代入 $k = 1$，$a^2 = 9$，$b^2 = 4$：

#set math.equation(numbering: "(1)")

$ 1 = -(4 x_0)/(9 y_0) $

#set math.equation(numbering: none)

整理得：

#set math.equation(numbering: "(1)")

$ 9 y_0 = -4 x_0 $

#set math.equation(numbering: none)

即中点轨迹方程为：

#set math.equation(numbering: "(1)")

$ 4x + 9y = 0 $

]
