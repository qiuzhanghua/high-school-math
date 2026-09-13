#import "template.typ": *

#set document(title: [圆锥曲线硬解定理])

#template(
  heading2-align: left,
  page-footer: "第 1 页",
)[
  圆锥曲线均取标准方程：椭圆 $x^2 / a^2 + y^2 / b^2 = 1$、双曲线 $x^2 / a^2 - y^2 / b^2 = 1$（实轴在 $x$ 轴），其中 $a, b > 0$；抛物线 $y^2 = 2 p x$（$p > 0$，开口向右）。直线按两种设法与曲线联立：设法一 $y = k x + m$（斜率式），设法二 $x = t y + m$（横截式，含竖直线 $t = 0$）。设直线与曲线的交点为 $A(x_1, y_1)$、$B(x_2, y_2)$，则弦长 $|A B| = sqrt(1 + k^2) |x_1 - x_2|$（设法一）或 $|A B| = sqrt(1 + t^2) |y_1 - y_2|$（设法二）。双曲线焦点在 $y$ 轴、抛物线开口向左或上下开口的情形可经交换 $x, y$ 或 $x mapsto -x$ 化归，参见《双曲焦半径》《抛物焦半径》。

  == 直线 $y = k x + m$

  === 椭圆 $x^2 / a^2 + y^2 / b^2 = 1$, 直线方程为：$y = k x + m$。

  *1. 联立方程。* 将直线方程代入椭圆方程，消去 $y$，整理可得关于 $x$ 的一元二次方程：
  #set math.equation(numbering: "(1)")
  $ (a^2 k^2 + b^2) x^2 + 2 a^2 k m x + a^2 (m^2 - b^2) = 0 $
  #set math.equation(numbering: none)

  *2. 判别式。*
  #set math.equation(numbering: "(1)")
  $ Delta = 4 a^2 b^2 (a^2 k^2 + b^2 - m^2) $
  #set math.equation(numbering: none)
  $ Omega = a^2 k^2 + b^2 - m^2 $

  因二次项系数 $a^2 k^2 + b^2 > 0$ 恒正，直线与椭圆交于两点当且仅当 $Delta > 0$。

  *3. 常用结论。* 设直线与椭圆交于两点 $A(x_1, y_1)$、$B(x_2, y_2)$，计 $D=a^2 k^2 + b^2$，由韦达定理有：
  #set math.equation(numbering: "(1)")
  $ x_1 + x_2 = (-2 a^2 k m) / D $

  $ x_1 x_2 = (a^2 (m^2 - b^2)) / D $
  #set math.equation(numbering: none)
  $ y_1 + y_2 = k (x_1 + x_2) + 2m $
  #set math.equation(numbering: "(1)")
  $ y_1 + y_2 = (2 b^2 m) / D $
  #set math.equation(numbering: none)
  $ y_1 y_2 = (k x_1 + m)(k x_2 + m) = k^2 x_1 x_2 + k m (x_1 + x_2) + m^2 $
  #set math.equation(numbering: "(1)")
  $ y_1 y_2 = (b^2 (m^2 - a^2 k^2)) / D $
  #set math.equation(numbering: none)
  $ x_1 y_2 + x_2 y_1 = 2 k x_1 x_2 + m (x_1 + x_2) $
  #set math.equation(numbering: "(1)")
  $ x_1 y_2 + x_2 y_1 = (-2 a^2 b^2 k) / D $
  #set math.equation(numbering: none)
  $ |x_1 - x_2| = sqrt((x_1 + x_2)^2 - 4 x_1 x_2) $
  #set math.equation(numbering: "(1)")
  $ |x_1 - x_2| = (2 a b sqrt(Omega)) / D $
  $ |y_1 - y_2| = |k| |x_1 - x_2| $
  #set math.equation(numbering: "(1)")

  弦长公式:

  $ |A B| = sqrt(1 + k^2) dot |x_1 - x_2| $

  === 双曲线 $x^2 / a^2 - y^2 / b^2 = 1$

  将直线 $y = k x + m$ 代入双曲线方程 $x^2 / a^2 - y^2 / b^2 = 1$（消去 $y$ 后乘以 $a^2 b^2$ 整理）：

  *1. 联立方程。* 得到关于 $x$ 的一元二次方程
  #set math.equation(numbering: "(1)")
  $ (a^2 k^2 - b^2) x^2 + 2 a^2 k m x + a^2 (m^2 + b^2) = 0 $
  #set math.equation(numbering: none)

  *2. 判别式。*
  #set math.equation(numbering: "(1)")
  $ Delta = 4 a^2 b^2 (m^2 + b^2 - a^2 k^2) $
  #set math.equation(numbering: none)
  $ Omega = m^2 + b^2 - a^2 k^2 $

  直线与双曲线交于两个不同点当且仅当 $Delta > 0$。记 $D = a^2 k^2 - b^2$；若 $D = 0$，即 $k = plus.minus b / a$（直线与渐近线平行），方程为一次方程，至多一个交点，以下公式不适用。

  *3. 常用结论。* 设两交点为 $A(x_1, y_1)$、$B(x_2, y_2)$，记 $D = a^2 k^2 - b^2 != 0$，由韦达定理有：
  #set math.equation(numbering: "(1)")
  $ x_1 + x_2 = (-2 a^2 k m) / D $

  $ x_1 x_2 = (a^2 (m^2 + b^2)) / D $
  #set math.equation(numbering: none)
  $ y_1 + y_2 = k (x_1 + x_2) + 2m $
  #set math.equation(numbering: "(1)")
  $ y_1 + y_2 = (-2 b^2 m) / D $
  #set math.equation(numbering: none)
  $ y_1 y_2 = (k x_1 + m)(k x_2 + m) = k^2 x_1 x_2 + k m (x_1 + x_2) + m^2 $
  #set math.equation(numbering: "(1)")
  $ y_1 y_2 = (b^2 (a^2 k^2 - m^2)) / D $
  #set math.equation(numbering: none)
  $ x_1 y_2 + x_2 y_1 = 2 k x_1 x_2 + m (x_1 + x_2) $
  #set math.equation(numbering: "(1)")
  $ x_1 y_2 + x_2 y_1 = (2 a^2 b^2 k) / D $
  #set math.equation(numbering: none)
  $ |x_1 - x_2| = sqrt((x_1 + x_2)^2 - 4 x_1 x_2) = sqrt(Delta) / (|D|) $
  #set math.equation(numbering: "(1)")
  $ |x_1 - x_2| = (2 a b sqrt(Omega)) / (|D|) $
  $ |y_1 - y_2| = |k| |x_1 - x_2| $

  弦长公式：

  $ |A B| = sqrt(1 + k^2) dot |x_1 - x_2| $

  === 抛物线 $y^2 = 2 p x$（$p > 0$）

  以开口向右的抛物线 $y^2 = 2 p x$（$p > 0$）为准；其余开口方向按文首说明化归。

  *1. 联立方程。* 将 $y = k x + m$ 代入抛物线方程，消去 $y$，得关于 $x$ 的一元二次方程（此设法要求 $k != 0$；$k = 0$ 时水平直线与抛物线至多一个交点）：
  #set math.equation(numbering: "(1)")
  $ k^2 x^2 + 2 (k m - p) x + m^2 = 0 $
  #set math.equation(numbering: none)

  *2. 判别式。*
  #set math.equation(numbering: "(1)")
  $ Delta = 4 p (p - 2 k m) $
  #set math.equation(numbering: none)

  因 $p > 0$，直线与抛物线交于两个不同点当且仅当 $p - 2 k m > 0$。

  *3. 常用结论。* 设两交点为 $A(x_1, y_1)$、$B(x_2, y_2)$（$k != 0$），由韦达定理有：
  #set math.equation(numbering: "(1)")
  $ x_1 + x_2 = (2 (p - k m)) / k^2 $

  $ x_1 x_2 = m^2 / k^2 $
  #set math.equation(numbering: none)
  $ y_1 + y_2 = k (x_1 + x_2) + 2m $
  #set math.equation(numbering: "(1)")
  $ y_1 + y_2 = (2 p) / k $
  #set math.equation(numbering: none)
  $ y_1 y_2 = (k x_1 + m)(k x_2 + m) = k^2 x_1 x_2 + k m (x_1 + x_2) + m^2 $
  #set math.equation(numbering: "(1)")
  $ y_1 y_2 = (2 p m) / k $
  #set math.equation(numbering: none)
  $ x_1 y_2 + x_2 y_1 = 2 k x_1 x_2 + m (x_1 + x_2) $
  #set math.equation(numbering: "(1)")
  $ x_1 y_2 + x_2 y_1 = (2 p m) / k^2 $
  #set math.equation(numbering: none)
  $ |x_1 - x_2| = sqrt((x_1 + x_2)^2 - 4 x_1 x_2) $
  #set math.equation(numbering: "(1)")
  $ |x_1 - x_2| = (2 sqrt(p (p - 2 k m))) / k^2 $
  #set math.equation(numbering: none)
  $ |y_1 - y_2| = |k| |x_1 - x_2| $
  #set math.equation(numbering: "(1)")
  $ |y_1 - y_2| = (2 sqrt(p (p - 2 k m))) / (|k|) $

  弦长公式：

  $ |A B| = sqrt(1 + k^2) dot |x_1 - x_2| $


  #line(length: 100%, stroke: 0.5pt + gray)

  == 直线 $x = t y + m$

  === 椭圆 $x^2 / a^2 + y^2 / b^2 = 1$, 直线方程为：$x = t y + m$。

  *1. 联立方程。* 将直线方程代入椭圆方程，消去 $x$，整理可得关于 $y$ 的一元二次方程：
  #set math.equation(numbering: "(1)")
  $ (a^2 + b^2 t^2) y^2 + 2 b^2 m t y + b^2 (m^2 - a^2) = 0 $
  #set math.equation(numbering: none)

  *2. 判别式。*
  #set math.equation(numbering: "(1)")
  $ Delta = 4 a^2 b^2 (a^2 + b^2 t^2 - m^2) $

  #set math.equation(numbering: none)
  $ Omega = a^2 + b^2 t^2 - m^2 $

  因二次项系数 $a^2 + b^2 t^2 > 0$ 恒正，直线与椭圆交于两点当且仅当 $Delta > 0$。

  *3. 常用结论。* 设直线与椭圆交于两点 $A(x_1, y_1)$、$B(x_2, y_2)$，计 $D = a^2 + b^2 t^2$，由韦达定理有：
  #set math.equation(numbering: "(1)")
  $ y_1 + y_2 = (-2 b^2 m t) / D $

  $ y_1 y_2 = (b^2 (m^2 - a^2)) / D $
  #set math.equation(numbering: none)
  $ x_1 + x_2 = t (y_1 + y_2) + 2m $
  #set math.equation(numbering: "(1)")
  $ x_1 + x_2 = (2 a^2 m) / D $
  #set math.equation(numbering: none)
  $ x_1 x_2 = (t y_1 + m)(t y_2 + m) = t^2 y_1 y_2 + t m (y_1 + y_2) + m^2 $
  #set math.equation(numbering: "(1)")
  $ x_1 x_2 = (a^2 (m^2 - b^2 t^2)) / D $
  #set math.equation(numbering: none)
  $ x_1 y_2 + x_2 y_1 = 2 t y_1 y_2 + m (y_1 + y_2) $
  #set math.equation(numbering: "(1)")
  $ x_1 y_2 + x_2 y_1 = (-2 a^2 b^2 t) / D $
  #set math.equation(numbering: none)
  $ |y_1 - y_2| = sqrt((y_1 + y_2)^2 - 4 y_1 y_2) $
  #set math.equation(numbering: "(1)")
  $ |y_1 - y_2| = (2 a b sqrt(Omega)) / D $
  #set math.equation(numbering: none)
  $ |x_1 - x_2| = |t| |y_1 - y_2| $

  弦长公式：

  $ |A B| = sqrt(1 + t^2) dot |y_1 - y_2| $

  === 双曲线 $x^2 / a^2 - y^2 / b^2 = 1$

  将直线 $x = t y + m$ 代入双曲线方程 $x^2 / a^2 - y^2 / b^2 = 1$（消去 $x$ 后乘以 $a^2 b^2$ 整理）：

  *1. 联立方程。* 得到关于 $y$ 的一元二次方程
  #set math.equation(numbering: "(1)")
  $ (b^2 t^2 - a^2) y^2 + 2 b^2 m t y + b^2 (m^2 - a^2) = 0 $
  #set math.equation(numbering: none)

  *2. 判别式。*
  #set math.equation(numbering: "(1)")
  $ Delta = 4 a^2 b^2 (m^2 + b^2 t^2 - a^2) $
  #set math.equation(numbering: none)
  $ Omega = m^2 + b^2 t^2 - a^2 $

  直线与双曲线交于两个不同点当且仅当 $Delta > 0$。记 $D = b^2 t^2 - a^2$；若 $D = 0$，即 $t = plus.minus a / b$（直线与渐近线平行），方程为一次方程，至多一个交点，以下公式不适用。

  *3. 常用结论。* 设两交点为 $A(x_1, y_1)$、$B(x_2, y_2)$，记 $D = b^2 t^2 - a^2 != 0$，由韦达定理有：
  #set math.equation(numbering: "(1)")
  $ y_1 + y_2 = (-2 b^2 m t) / D $

  $ y_1 y_2 = (b^2 (m^2 - a^2)) / D $
  #set math.equation(numbering: none)
  $ x_1 + x_2 = t (y_1 + y_2) + 2m $
  #set math.equation(numbering: "(1)")
  $ x_1 + x_2 = (-2 a^2 m) / D $
  #set math.equation(numbering: none)
  $ x_1 x_2 = (t y_1 + m)(t y_2 + m) = t^2 y_1 y_2 + t m (y_1 + y_2) + m^2 $
  #set math.equation(numbering: "(1)")
  $ x_1 x_2 = (-a^2 (m^2 + b^2 t^2)) / D $
  #set math.equation(numbering: none)
  $ x_1 y_2 + x_2 y_1 = 2 t y_1 y_2 + m (y_1 + y_2) $
  #set math.equation(numbering: "(1)")
  $ x_1 y_2 + x_2 y_1 = (-2 a^2 b^2 t) / D $
  #set math.equation(numbering: none)
  $ |y_1 - y_2| = sqrt((y_1 + y_2)^2 - 4 y_1 y_2) = sqrt(Delta) / (|D|) $
  #set math.equation(numbering: "(1)")
  $ |y_1 - y_2| = (2 a b sqrt(Omega)) / (|D|) $
  #set math.equation(numbering: none)
  $ |x_1 - x_2| = |t| |y_1 - y_2| $


  弦长公式：

  $ |A B| = sqrt(1 + t^2) dot |y_1 - y_2| $

  === 抛物线 $y^2 = 2 p x$（$p > 0$）

  以开口向右的抛物线 $y^2 = 2 p x$（$p > 0$）为准；其余开口方向按文首说明化归。

  *1. 联立方程。* 将 $x = t y + m$ 代入抛物线方程，消去 $x$，得关于 $y$ 的一元二次方程（$t$ 可为任意实数，$t = 0$ 即竖直线 $x = m$）：
  #set math.equation(numbering: "(1)")
  $ y^2 - 2 p t y - 2 p m = 0 $
  #set math.equation(numbering: none)

  *2. 判别式。*
  #set math.equation(numbering: "(1)")
  $ Delta = 4 p (p t^2 + 2 m) $
  #set math.equation(numbering: none)

  因 $p > 0$，直线与抛物线交于两个不同点当且仅当 $p t^2 + 2 m > 0$。

  *3. 常用结论。* 设两交点为 $A(x_1, y_1)$、$B(x_2, y_2)$，由韦达定理有：
  #set math.equation(numbering: "(1)")
  $ y_1 + y_2 = 2 p t $

  $ y_1 y_2 = -2 p m $
  #set math.equation(numbering: none)
  $ x_1 + x_2 = t (y_1 + y_2) + 2m $
  #set math.equation(numbering: "(1)")
  $ x_1 + x_2 = 2 p t^2 + 2 m $
  #set math.equation(numbering: none)
  $ x_1 x_2 = (t y_1 + m)(t y_2 + m) = t^2 y_1 y_2 + t m (y_1 + y_2) + m^2 $
  #set math.equation(numbering: "(1)")
  $ x_1 x_2 = m^2 $
  #set math.equation(numbering: none)
  $ x_1 y_2 + x_2 y_1 = 2 t y_1 y_2 + m (y_1 + y_2) $
  #set math.equation(numbering: "(1)")
  $ x_1 y_2 + x_2 y_1 = -2 p m t $
  #set math.equation(numbering: none)
  $ |y_1 - y_2| = sqrt((y_1 + y_2)^2 - 4 y_1 y_2) $
  #set math.equation(numbering: "(1)")
  $ |y_1 - y_2| = 2 sqrt(p (p t^2 + 2 m)) $

  $ |x_1 - x_2| = |t| |y_1 - y_2| $

  弦长公式:

  $ |A B| = sqrt(1 + t^2) dot |y_1 - y_2| $
]
