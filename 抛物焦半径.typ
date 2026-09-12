#import "template.typ": *

#set document(title: [抛物线焦半径公式])

#template(
  heading2-align: left,
  page-footer: "第 1 页",
)[

=== 一、基本定义

#set math.equation(numbering: none)

设抛物线方程为：

#set math.equation(numbering: "(1)")

$ y^2 = 2p x $（$p > 0$）

#set math.equation(numbering: none)

其焦点为：

$F(p/2, 0)$，准线方程为：$x = -p/2$。

抛物线上任意一点 $P(x, y)$，连接 $P$ 与焦点 $F$ 的线段 $P F$ 称为焦半径。

#line(length: 100%, stroke: 0.5pt + gray)

=== 二、焦半径公式

#set math.equation(numbering: none)

对于抛物线上任意一点 $P(x, y)$，焦半径公式如下：

#set math.equation(numbering: "(1)")

$ |P F| = x + p/2 $

#set math.equation(numbering: none)

等价地，利用抛物线方程 $y^2 = 2p x$，也可写成：

#set math.equation(numbering: "(1)")

$ |P F| = y^2/(2p) + p/2 $

#line(length: 100%, stroke: 0.5pt + gray)

=== 三、几何意义

#set math.equation(numbering: none)

焦半径公式的几何意义：

- 由抛物线定义可知：抛物线上的点到焦点的距离等于到准线的距离

- 点 $P(x, y)$ 到准线 $x = -p/2$ 的距离为 $x + p/2$

- 因此 $|P F| = x + p/2$，与抛物线定义完全一致

- 当 $P$ 在顶点 $(0, 0)$ 时：$|P F| = p/2$

- 抛物线的焦半径随点 $P$ 的横坐标 $x$ 线性增长

#line(length: 100%, stroke: 0.5pt + gray)

=== 四、公式证明

#set math.equation(numbering: none)

#strong[证法一]：利用两点间距离公式。

由 $F(p/2, 0)$，得：

#set math.equation(numbering: "(1)")

$ |P F|^2 = (x - p/2)^2 + y^2 $

#set math.equation(numbering: none)

由抛物线方程 $y^2 = 2p x$，代入：

#set math.equation(numbering: "(1)")

$ |P F|^2 = (x - p/2)^2 + 2p x $

#set math.equation(numbering: none)

展开：

#set math.equation(numbering: "(1)")

$ |P F|^2 = x^2 - p x + p^2/4 + 2p x = x^2 + p x + p^2/4 = (x + p/2)^2 $

#set math.equation(numbering: none)

由于 $|P F| > 0$，$x + p/2 > 0$，所以：

#set math.equation(numbering: "(1)")

$ |P F| = x + p/2 $

#set math.equation(numbering: none)

#strong[证法二]：利用抛物线定义。

抛物线定义：到定点（焦点）与到定直线（准线）距离相等的点的轨迹。

点 $P(x, y)$ 到准线 $x = -p/2$ 的距离为：

#set math.equation(numbering: "(1)")

$ d = |x + p/2| = x + p/2 $

#set math.equation(numbering: none)

由定义：$|P F| = d$，所以：

#set math.equation(numbering: "(1)")

$ |P F| = x + p/2 $

#set math.equation(numbering: none)

证毕。

#line(length: 100%, stroke: 0.5pt + gray)

=== 五、重要推论

#set math.equation(numbering: none)

#strong[推论 1]：焦半径与纵坐标的关系

#set math.equation(numbering: "(1)")

$ |P F| = y^2/(2p) + p/2 $

#set math.equation(numbering: none)

#strong[推论 2]：焦半径的范围

由于 $x >= 0$，所以：

#set math.equation(numbering: "(1)")

$ |P F| >= p/2 $

#set math.equation(numbering: none)

当且仅当 $P$ 在顶点 $(0, 0)$ 时取到最小值 $p/2$，无最大值。

#strong[推论 3]：过焦点的弦长（焦点弦）

设过焦点 $F$ 的弦 $A B$ 两端点横坐标分别为 $x_1$、$x_2$，则：

#set math.equation(numbering: "(1)")

$ |A B| = |A F| + |B F| = (x_1 + p/2) + (x_2 + p/2) = x_1 + x_2 + p $

#set math.equation(numbering: none)

特别地，对于垂直于对称轴的焦点弦（通径）：

当 $x = p/2$ 时，$y = plus.minus p$，弦长 $= 2p$。

#line(length: 100%, stroke: 0.5pt + gray)

=== 六、公式汇总

#set math.equation(numbering: none)

#figure(
  table(
    columns: 3,
    stroke: none,
    [抛物线方程], [焦点坐标], [焦半径公式],
    [$y^2 = 2p x$], [$F(p/2, 0)$], [$|P F| = x + p/2$],
    [$y^2 = -2p x$], [$F(-p/2, 0)$], [$|P F| = -x + p/2$],
    [$x^2 = 2p y$], [$F(0, p/2)$], [$|P F| = y + p/2$],
    [$x^2 = -2p y$], [$F(0, -p/2)$], [$|P F| = -y + p/2$],
  ),
  caption: [抛物线焦半径公式汇总（四种标准形式）],
)

其中 $p > 0$ 为焦参数。

#line(length: 100%, stroke: 0.5pt + gray)

=== 七、注意事项

#set math.equation(numbering: none)

- #text(fill: red)[抛物线焦半径公式最为简单]，是椭圆和双曲线焦半径公式在 $e = 1$ 时的极限情形

- 抛物线只有唯一一个焦点和一条准线，因此焦半径只有一个公式

- 公式中的符号取决于抛物线的开口方向（汇总表已给出四种形式）

- 抛物线的焦半径没有最大值，有最小值 $p/2$

- 抛物线的离心率 $e = 1$

#line(length: 100%, stroke: 0.5pt + gray)

=== 八、典型应用

#set math.equation(numbering: none)

#strong[应用 1]：求抛物线上点到焦点的距离

已知抛物线 $y^2 = 8x$ 上一点 $P$ 的横坐标为 $x = 2$，求 $|P F|$。

#set math.equation(numbering: none)

解：$y^2 = 8x$，所以 $2p = 8$，$p = 4$，$p/2 = 2$。

#set math.equation(numbering: "(1)")

$ |P F| = x + p/2 = 2 + 2 = 4 $

#set math.equation(numbering: none)

#strong[应用 2]：利用焦半径求点的坐标

已知抛物线 $y^2 = 4x$ 上一点 $P$ 到焦点的距离为 $5$，求点 $P$ 的横坐标。

#set math.equation(numbering: none)

解：$y^2 = 4x$，所以 $2p = 4$，$p = 2$，$p/2 = 1$。

#set math.equation(numbering: "(1)")

$ |P F| = x + p/2 = x + 1 = 5 $

#set math.equation(numbering: none)

解得：

#set math.equation(numbering: "(1)")

$ x = 4 $

#set math.equation(numbering: none)

代入抛物线方程 $y^2 = 4 times 4 = 16$，得 $y = plus.minus 4$。

所以 $P(4, 4)$ 或 $P(4, -4)$。

#strong[应用 3]：焦点弦长问题

已知抛物线 $y^2 = 6x$ 的焦点为 $F$，过焦点 $F$ 的弦 $A B$ 的端点横坐标分别为 $x_1 = 1$，$x_2 = 9$，求弦长 $|A B|$。

#set math.equation(numbering: none)

解：$y^2 = 6x$，所以 $2p = 6$，$p = 3$，$p/2 = 3/2$。

#set math.equation(numbering: "(1)")

$ |A B| = x_1 + x_2 + p = 1 + 9 + 3 = 13 $

#set math.equation(numbering: none)

#strong[应用 4]：焦半径最小值

已知抛物线 $y^2 = 12x$，求抛物线上点到焦点距离的最小值。

#set math.equation(numbering: none)

解：$y^2 = 12x$，所以 $2p = 12$，$p = 6$，$p/2 = 3$。

#set math.equation(numbering: "(1)")

$ |P F|_min = p/2 = 3 $

#set math.equation(numbering: none)

当 $P$ 在顶点 $(0, 0)$ 时取到。

#line(length: 100%, stroke: 0.5pt + gray)

=== 九、三种圆锥曲线焦半径对比

#set math.equation(numbering: none)

#figure(
  table(
    columns: 4,
    stroke: none,
    [曲线类型], [离心率 $e$], [焦半径公式（焦点在 $x$ 轴）], [范围],
    [椭圆], [$0 < e < 1$], [$|P F_1| = a + e x$，$|P F_2| = a - e x$], [$[a-c, a+c]$],
    [双曲线], [$e > 1$], [$|P F_1| = |e x + a|$，$|P F_2| = |e x - a|$], [$[c-a, +infinity)$],
    [抛物线], [$e = 1$], [$|P F| = x + p/2$], [$[p/2, +infinity)$],
  ),
  caption: [三种圆锥曲线焦半径公式对比],
)
]
