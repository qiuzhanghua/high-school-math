#import "template.typ": *

#set document(title: [圆锥曲线练习题])

#template(heading2-align: left, page-footer: "第 1 页")[
  #set math.equation(numbering: "(1)")

  *第一题* (原18题17分)

  已知双曲线 $E: x^2/a^2 - y^2/b^2 = 1$ ($a > 0, b > 0$) 的右焦点为 $F$，左顶点为 $A(-1, 0)$，离心率为 $2$，过点 $F$ 且斜率存在的直线 $l$ 与 $E$ 的右支交于 $P, Q$ 两点（点 $P$ 在第一象限），$M$ 是 $P Q$ 的中点，$O$ 为坐标原点。

  (1) 求 $E$ 的方程；

  (2) 证明：$angle P F A = 2 angle P A F$；

  (3) 过点 $F$ 且与 $l$ 垂直的直线 $m$ 交直线 $O M$ 于点 $N$，证明：

  $triangle N P Q "的面积大于" 9/2$

  *解:*

  *(1) 求 $E$ 的方程*

  由左顶点 $A(-1, 0)$ 得 $a = 1$。又离心率 $e = c/a = 2$，故 $c = 2$。

  由 $b^2 = c^2 - a^2 = 4 - 1 = 3$，得双曲线方程为：

  $ x^2 - y^2/3 = 1 $

  *(2) 证明：$angle P F A = 2 angle P A F$*

  设 $P(x_1, y_1)$（$x_1 > 1, y_1 > 0$），直线 $l$ 的倾斜角为 $theta$，直线 $P A$ 的倾斜角为 $alpha$。

  则 $tan theta = y_1/(2 - x_1)$，$tan alpha = y_1/(x_1 + 1)$。

  由 $P$ 在双曲线上，$y_1^2 = 3(x_1^2 - 1)$。计算：

  $ tan 2alpha = (2 tan alpha)/(1 - tan^2 alpha) = (2 y_1 (x_1 + 1))/((x_1 + 1)^2 - y_1^2) $

  代入 $y_1^2 = 3(x_1^2 - 1)$，分母化简为：

  $ (x_1 + 1)^2 - 3(x_1^2 - 1) = -2(x_1 - 2)(x_1 + 1) $

  故：

  $ tan 2alpha = (2 y_1 (x_1 + 1))/(-2(x_1 - 2)(x_1 + 1)) = - y_1/(x_1 - 2) = y_1/(2 - x_1) = tan theta $

  又 $theta, 2alpha in (0, pi/2)$，故 $theta = 2alpha$。

  而 $angle P F A = theta$（$F P$ 与 $F A$ 的夹角），$angle P A F = alpha$，所以 $angle P F A = 2 angle P A F$。 $quad square$

  *(3) 证明：$triangle N P Q$ 的面积大于 $9/2$*

  设 $l: y = k(x - 2)$（$k > sqrt(3)$），代入 $3x^2 - y^2 = 3$：

  $ (3 - k^2)x^2 + 4k^2 x - (4k^2 + 3) = 0 $

  设 $P(x_1, y_1), Q(x_2, y_2)$，由韦达定理：

  $ x_1 + x_2 = (4k^2)/(k^2 - 3), quad x_1 x_2 = (4k^2 + 3)/(k^2 - 3) $

  中点 $M$ 的坐标：

  $ x_M = (2k^2)/(k^2 - 3), quad y_M = k(x_M - 2) = (6k)/(k^2 - 3) $

  直线 $O M$ 的斜率 $k_(O M) = y_M/x_M = 3/k$，即 $O M: y = 3/k x$。

  直线 $m$ 过 $F$ 且与 $l$ 垂直：$m: y = -1/k (x - 2)$。

  联立 $m$ 与 $O M$ 解得 $N$ 点坐标：

  $ N(1/2, 3/(2k)) $

  弦长 $|P Q|$：

  $ |P Q| = sqrt(1 + k^2) |x_1 - x_2| = sqrt(1 + k^2) sqrt((x_1 + x_2)^2 - 4 x_1 x_2) = (6(1 + k^2))/(k^2 - 3) $

  点 $N$ 到直线 $l: k x - y - 2k = 0$ 的距离：

  $ d = (|k dot 1/2 - 3/(2k) - 2k|)/(sqrt(k^2 + 1)) = (3 sqrt(k^2 + 1))/(2k) $

  所以 $triangle N P Q$ 的面积为：

  $ S = 1/2 |P Q| d = (9 (k^2 + 1)^(3/2))/(2k(k^2 - 3)) $

  要证 $S > 9/2$，只需证 $(k^2 + 1)^(3/2) > k(k^2 - 3)$。两边平方：

  $ (k^2 + 1)^3 - k^2 (k^2 - 3)^2 = (3k^2 - 1)^2 > 0 $

  故 $triangle N P Q$ 的面积大于 $9/2 。$
  #qed
]

