#set page(
  paper: "a4",
)
#set text(
  font: ("Noto Serif CJK SC", "DejaVu Sans"),
)

#set math.equation(numbering: "(1)")

== 圆锥曲线硬解定理（直线 $y = k x + m$）

设椭圆方程为： $x^2 / a^2 + y^2 / b^2 = 1$，直线方程为：$y = k x + m$。

=== 1. 联立方程
将直线方程代入椭圆方程，消去 $y$，整理可得关于 $x$ 的一元二次方程：

$ (a^2 k^2 + b^2) x^2 + 2 a^2 k m x + a^2 (m^2 - b^2) = 0 $

=== 2. 判别式
$ Delta = 4 a^2 b^2 (a^2 k^2 + b^2 - m^2) $

=== 3. 常用结论
设直线与椭圆交于两点 $A(x_1, y_1)$, $B(x_2, y_2)$，由韦达定理有：

$ x_1 + x_2 = (-2 a^2 k m) / (a^2 k^2 + b^2) $

$ x_1 x_2 = (a^2 (m^2 - b^2)) / (a^2 k^2 + b^2) $
#set math.equation(numbering: none)
$ y_1 + y_2 = k (x_1 + x_2) + 2m $
#set math.equation(numbering: "(1)")
$ y_1 + y_2 = (2 b^2 m) / (a^2 k^2 + b^2) $
#set math.equation(numbering: none)
$ y_1 y_2 = (k x_1 + m)(k x_2 + m) = k^2 x_1 x_2 + k m (x_1 + x_2) + m^2 $
#set math.equation(numbering: "(1)")
$ y_1 y_2 = (b^2 (m^2 - a^2 k^2)) / (a^2 k^2 + b^2) $
#set math.equation(numbering: none)
$ x_1 y_2 + x_2 y_1 = k (x_1 x_2 + x_1 x_2) + m (x_1 + x_2) = 2k x_1 x_2 + m(x_1 + x_2) $
#set math.equation(numbering: "(1)")
$ x_1 y_2 + x_2 y_1 = (-2 a^2 b^2 k) / (a^2 k^2 + b^2) $
#set math.equation(numbering: none)
$ |x_1 - x_2| = sqrt((x_1 + x_2)^2 - 4x_1 x_2) $
#set math.equation(numbering: "(1)")
$ |x_1 - x_2| = (2 a b sqrt(a^2 k^2 + b^2 - m^2)) / (a^2 k^2 + b^2) $
#set math.equation(numbering: none)
$ |y_1 - y_2| = |k| |x_1 - x_2| $
#set math.equation(numbering: "(1)")
$ |y_1 - y_2| = (2 a b |k| sqrt(a^2 k^2 + b^2 - m^2)) / (a^2 k^2 + b^2) $

由弦长公式 $|A B| = sqrt(1 + k^2) sqrt((x_1 + x_2)^2 - 4 x_1 x_2)$，代入并化简，可得：

$ |A B| = (2 a b sqrt(a^2 k^2 + b^2 - m^2)) / (a^2 k^2 + b^2) $

#pagebreak()

= 圆锥曲线硬解定理（直线 $x = t y + m$）

设椭圆方程为： $x^2 / a^2 + y^2 / b^2 = 1$，直线方程为：$x = t y + m$。

=== 1. 联立方程
将直线方程代入椭圆方程，消去 $x$，整理可得关于 $y$ 的一元二次方程：

$ (a^2 + b^2 t^2) y^2 + 2 b^2 m t y + b^2 (m^2 - a^2) = 0 $

=== 2. 判别式
$ Delta = 4 a^2 b^2 (a^2 + b^2 t^2 - m^2) $

=== 3. 常用结论
设直线与椭圆交于两点 $A(x_1, y_1)$, $B(x_2, y_2)$，由韦达定理有：

$ y_1 + y_2 = (-2 b^2 m t) / (a^2 + b^2 t^2) $

$ y_1 y_2 = (b^2 (m^2 - a^2)) / (a^2 + b^2 t^2) $
#set math.equation(numbering: none)
$ x_1 + x_2 = t (y_1 + y_2) + 2m $
#set math.equation(numbering: "(1)")
$ x_1 + x_2 = (2 a^2 m) / (a^2 + b^2 t^2) $
#set math.equation(numbering: none)
$ x_1 x_2 = (t y_1 + m)(t y_2 + m) = t^2 y_1 y_2 + t m (y_1 + y_2) + m^2 $
#set math.equation(numbering: "(1)")
$ x_1 x_2 = (a^2 (m^2 - b^2 t^2)) / (a^2 + b^2 t^2) $
#set math.equation(numbering: none)
$ x_1 y_2 + x_2 y_1 = (t y_1 + m) y_2 + (t y_2 + m) y_1 = 2t y_1 y_2 + m(y_1 + y_2) $
#set math.equation(numbering: "(1)")
$ x_1 y_2 + x_2 y_1 = (-2 a^2 b^2 t) / (a^2 + b^2 t^2) $
#set math.equation(numbering: none)
$ |y_1 - y_2| = sqrt((y_1 + y_2)^2 - 4y_1 y_2) $
#set math.equation(numbering: "(1)")
$ |y_1 - y_2| = (2 a b sqrt(a^2 + b^2 t^2 - m^2)) / (a^2 + b^2 t^2) $
#set math.equation(numbering: none)
$ |x_1 - x_2| = |t| |y_1 - y_2| $
#set math.equation(numbering: "(1)")
$ |x_1 - x_2| = (2 a b |t| sqrt(a^2 + b^2 t^2 - m^2)) / (a^2 + b^2 t^2) $


由弦长公式 $|A B| = sqrt(1 + t^2) sqrt((y_1 + y_2)^2 - 4 y_1 y_2)$，代入并化简，可得：

$
  |A B| = (2 a b sqrt(a^2 + b^2 t^2 - m^2)) / (a^2 + b^2 t^2)
$
