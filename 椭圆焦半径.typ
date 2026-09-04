#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
)

#set text(
  font: ("Noto Serif CJK SC", "DejaVu Sans"),
  size: 11pt,
)

#set math.equation(numbering: "(1)")

= 椭圆焦半径公式

== 一、基本定义

#set math.equation(numbering: none)

设椭圆方程为：

#set math.equation(numbering: "(1)")

$ x^2 / a^2 + y^2 / b^2 = 1 $（$a > b > 0$）  <eq1>

#set math.equation(numbering: none)

其左、右焦点分别为：

$F_1(-c, 0)$，$F_2(c, 0)$，其中 $c^2 = a^2 - b^2$。

椭圆上任意一点 $P(x, y)$，连接 $P$ 与焦点的线段 $P F_1$、$P F_2$ 称为焦半径。

焦半径公式给出了椭圆上一点到两个焦点的距离表达式。

== 二、焦半径公式

#set math.equation(numbering: none)

对于椭圆上任意一点 $P(x, y)$，焦半径公式如下：

#set math.equation(numbering: "(1)")

$ |P F_1| = a + e x $  <eq2>

$ |P F_2| = a - e x $  <eq3>

#set math.equation(numbering: none)

其中 $e = c/a$ 为椭圆的离心率（$0 < e < 1$）。

等价地，利用 $e = c/a$，也可以写成：

#set math.equation(numbering: "(1)")

$ |P F_1| = a + (c/a) x = a + c x / a $  <eq4>

$ |P F_2| = a - (c/a) x = a - c x / a $  <eq5>

#set math.equation(numbering: none)

此外，也可用焦准距 $p = b^2/c$ 表示：

#set math.equation(numbering: "(1)")

$ |P F_1| = e (x + a/e) $  <eq6>

$ |P F_2| = e (a/e - x) $  <eq7>


== 三、几何意义

#set math.equation(numbering: none)

焦半径公式的几何意义：

- 椭圆的焦半径随点 $P$ 的横坐标 $x$ 线性变化

- 当 $P$ 在右顶点 $(a, 0)$ 时：$|P F_1| = a + c$，$|P F_2| = a - c$

- 当 $P$ 在左顶点 $(-a, 0)$ 时：$|P F_1| = a - c$，$|P F_2| = a + c$

- 当 $P$ 在上顶点 $(0, b)$ 或下顶点 $(0, -b)$ 时：$|P F_1| = |P F_2| = a$

- 由椭圆定义可知：$|P F_1| + |P F_2| = 2a$（恒成立）

#set math.equation(numbering: "(1)")

$ (a + e x) + (a - e x) = 2a $  <eq8>

#set math.equation(numbering: none)

这一结论与椭圆定义完全一致，验证了公式的正确性。

== 四、公式证明（代数法）

#set math.equation(numbering: none)

#strong[证法一]：利用两点间距离公式。

由 $F_2(c, 0)$，得：

#set math.equation(numbering: "(1)")

$ |P F_2|^2 = (x - c)^2 + y^2 $  <eq9>

#set math.equation(numbering: none)

由椭圆方程 $x^2/a^2 + y^2/b^2 = 1$，解得：

#set math.equation(numbering: "(1)")

$ y^2 = b^2 (1 - x^2/a^2) $  <eq10>

#set math.equation(numbering: none)

代入 <eq9>：

#set math.equation(numbering: "(1)")

$ |P F_2|^2 = (x - c)^2 + b^2 (1 - x^2/a^2) $  <eq11>

#set math.equation(numbering: none)

展开并利用 $b^2 = a^2 - c^2$：

#set math.equation(numbering: "(1)")

$ |P F_2|^2 = x^2 - 2c x + c^2 + b^2 - (b^2/a^2)x^2 $  <eq12>

#set math.equation(numbering: none)

将 $b^2 = a^2 - c^2$ 代入：

#set math.equation(numbering: "(1)")

$ |P F_2|^2 = x^2 - 2c x + c^2 + a^2 - c^2 - ((a^2 - c^2)/a^2)x^2 $  <eq13>

#set math.equation(numbering: none)

化简：

#set math.equation(numbering: "(1)")

$ |P F_2|^2 = x^2 - 2c x + a^2 - x^2 + (c^2/a^2)x^2 $  <eq14>

#set math.equation(numbering: none)

即：

#set math.equation(numbering: "(1)")

$ |P F_2|^2 = a^2 - 2c x + (c^2/a^2)x^2 = (a - c x/a)^2 $  <eq15>

#set math.equation(numbering: none)

由于 $|P F_2| > 0$，$a - c x/a > 0$（因为 $|x| <= a$，$c/a = e < 1$，所以 $a - e x > 0$），所以：

#set math.equation(numbering: "(1)")

$ |P F_2| = a - c x/a = a - e x $  <eq16>

#set math.equation(numbering: none)

同理可证：

#set math.equation(numbering: "(1)")

$ |P F_1| = a + c x/a = a + e x $  <eq17>

== 五、公式证明（几何法）

#set math.equation(numbering: none)

#strong[证法二]：利用椭圆第二定义。

椭圆的第二定义：椭圆是到定点（焦点）与到定直线（准线）的距离之比为常数 $e$（$0 < e < 1$）的点的轨迹。

左准线方程为：$x = -a/e$，右准线方程为：$x = a/e$。

点 $P(x, y)$ 到右准线的距离为：

#set math.equation(numbering: "(1)")

$ d(P, x = a/e) = |x - a/e| = a/e - x $（因为 $x <= a < a/e$）  <eq18>

#set math.equation(numbering: none)

由第二定义：

#set math.equation(numbering: "(1)")

$ |P F_2| / (a/e - x) = e $  <eq19>

#set math.equation(numbering: none)

所以：

#set math.equation(numbering: "(1)")

$ |P F_2| = e (a/e - x) = a - e x $  <eq20>

#set math.equation(numbering: none)

同理，点 $P$ 到左准线的距离为 $x + a/e$，由第二定义：

#set math.equation(numbering: "(1)")

$ |P F_1| = e (x + a/e) = a + e x $  <eq21>

#set math.equation(numbering: none)

证毕。

== 六、重要推论

#set math.equation(numbering: none)

#strong[推论 1]：焦半径之积

#set math.equation(numbering: "(1)")

$ |P F_1| dot |P F_2| = (a + e x)(a - e x) = a^2 - e^2 x^2 $  <eq22>

#set math.equation(numbering: none)

利用 $e^2 = c^2/a^2$ 和椭圆方程，可进一步化简（选学）：

#set math.equation(numbering: "(1)")

$ |P F_1| dot |P F_2| = b^2 + (e^2 x^2 -? ) $（略）  <eq23>

#set math.equation(numbering: none)

#strong[推论 2]：焦半径的范围

#set math.equation(numbering: "(1)")

$ a - c <= |P F_1| <= a + c $，$ a - c <= |P F_2| <= a + c $  <eq24>

#set math.equation(numbering: none)

当且仅当 $P$ 在左右顶点时取到最值：

- 右顶点 $(a, 0)$：$|P F_1| = a + c$（最大），$|P F_2| = a - c$（最小）

- 左顶点 $(-a, 0)$：$|P F_1| = a - c$（最小），$|P F_2| = a + c$（最大）

#strong[推论 3]：焦点弦中点与焦半径的关系

设过焦点 $F_2$ 的弦 $A B$ 两端点横坐标分别为 $x_1$、$x_2$，则：

#set math.equation(numbering: "(1)")

$ |A F_2| + |B F_2| = (a - e x_1) + (a - e x_2) = 2a - e(x_1 + x_2) $  <eq25>


== 七、公式汇总

#set math.equation(numbering: none)

#figure(
  table(
    columns: 3,
    stroke: none,
    [焦点], [焦半径公式], [范围],
    [$F_1(-c, 0)$], [$|P F_1| = a + e x$], [$[a-c, a+c]$],
    [$F_2(c, 0)$], [$|P F_2| = a - e x$], [$[a-c, a+c]$],
  ),
  caption: [椭圆焦半径公式汇总],
)

其中 $e = c/a$，$c^2 = a^2 - b^2$，$0 < e < 1$。

== 八、注意事项

#set math.equation(numbering: none)

- #text(fill: red)[公式中的 $x$ 为椭圆上点的横坐标]，焦点在 $x$ 轴上（适用于标准方程）

- 若焦点在 $y$ 轴上（$x^2/b^2 + y^2/a^2 = 1$，$a > b > 0$），焦半径公式变为：
  
  $|P F_1| = a + e y$，$|P F_2| = a - e y$（其中 $F_1(0, -c)$，$F_2(0, c)$）

- 焦半径公式只适用于椭圆的标准形式

- 公式中的符号：$|P F_1| = a + e x$ 中 $x$ 前为正号，因为 $F_1$ 在左侧；$|P F_2| = a - e x$ 中 $x$ 前为负号，因为 $F_2$ 在右侧

- 若交换 $F_1$、$F_2$ 的编号，公式中的正负号也会相应交换

== 九、典型应用

#set math.equation(numbering: none)

#strong[应用 1]：求椭圆上点到焦点的距离

已知椭圆 $x^2/25 + y^2/9 = 1$ 上一点 $P$ 的横坐标为 $x = 3$，求 $|P F_1|$ 和 $|P F_2|$。

#set math.equation(numbering: none)

解：$a^2 = 25$，$b^2 = 9$，$c^2 = a^2 - b^2 = 16$，所以 $a = 5$，$c = 4$，$e = c/a = 4/5$。

#set math.equation(numbering: "(1)")

$ |P F_1| = a + e x = 5 + (4/5) times 3 = 5 + 12/5 = 37/5 $

$ |P F_2| = a - e x = 5 - (4/5) times 3 = 5 - 12/5 = 13/5 $  <eq26>

#set math.equation(numbering: none)

验证：$|P F_1| + |P F_2| = 37/5 + 13/5 = 50/5 = 10 = 2a$，符合椭圆定义。

#strong[应用 2]：求椭圆上点到焦点的距离范围

已知椭圆 $x^2/16 + y^2/7 = 1$，求椭圆上点到左焦点距离的最小值和最大值。

#set math.equation(numbering: none)

解：$a^2 = 16$，$b^2 = 7$，$c^2 = a^2 - b^2 = 9$，所以 $a = 4$，$c = 3$，$e = 3/4$。

$|P F_1| = a + e x$，其中 $x in [-a, a] = [-4, 4]$。

#set math.equation(numbering: "(1)")

$ |P F_1|_min = a + e(-a) = a - c = 4 - 3 = 1 $

$ |P F_1|_max = a + e(a) = a + c = 4 + 3 = 7 $  <eq27>

#set math.equation(numbering: none)

所以椭圆上点到左焦点的距离范围为 $[1, 7]$。