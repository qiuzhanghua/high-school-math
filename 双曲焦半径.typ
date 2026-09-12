#import "template.typ": *

#set document(title: [双曲线焦半径公式])

#template(
  heading2-align: left,
  page-footer: "第 1 页",
)[


=== 一、基本定义

#set math.equation(numbering: none)

设双曲线方程为：

#set math.equation(numbering: "(1)")

$ x^2 / a^2 - y^2 / b^2 = 1 $（$a > 0$，$b > 0$）

#set math.equation(numbering: none)

其左、右焦点分别为：

$F_1(-c, 0)$，$F_2(c, 0)$，其中 $c^2 = a^2 + b^2$。

双曲线上任意一点 $P(x, y)$，连接 $P$ 与焦点的线段 $P F_1$、$P F_2$ 称为焦半径。

#line(length: 100%, stroke: 0.5pt + gray)

=== 二、焦半径公式

#set math.equation(numbering: none)

对于双曲线上任意一点 $P(x, y)$，焦半径公式如下：

#set math.equation(numbering: "(1)")

$ |P F_1| = |e x + a| $

$ |P F_2| = |e x - a| $

#set math.equation(numbering: none)

其中 $e = c/a > 1$ 为双曲线的离心率。

#set math.equation(numbering: none)

由于双曲线上的点满足 $x >= a$（右支）或 $x <= -a$（左支），因此可以去掉绝对值，得到两支上的具体公式：

#set math.equation(numbering: none)

#strong[右支]（$x >= a$）：

#set math.equation(numbering: "(1)")

$ |P F_1| = e x + a $

$ |P F_2| = e x - a $

#set math.equation(numbering: none)

#strong[左支]（$x <= -a$）：

#set math.equation(numbering: "(1)")

$ |P F_1| = - (e x + a) = -e x - a $

$ |P F_2| = - (e x - a) = -e x + a $

#set math.equation(numbering: none)

利用 $e = c/a$，也可写成：

#strong[右支]：

#set math.equation(numbering: "(1)")

$ |P F_1| = a + (c/a) x $

$ |P F_2| = -a + (c/a) x $

#set math.equation(numbering: none)

#strong[左支]：

#set math.equation(numbering: "(1)")

$ |P F_1| = -a - (c/a) x $

$ |P F_2| = a - (c/a) x $

#line(length: 100%, stroke: 0.5pt + gray)

=== 三、几何意义

#set math.equation(numbering: none)

焦半径公式的几何意义：

- 由双曲线定义可知：$||P F_1| - |P F_2|| = 2a$（恒成立）

#set math.equation(numbering: "(1)")

$ |(e x + a) - (e x - a)| = 2a $（右支）

$ |(-e x - a) - (-e x + a)| = 2a $（左支）

#set math.equation(numbering: none)

这一结论与双曲线定义完全一致。

- 当 $P$ 在右顶点 $(a, 0)$ 时：

  $|P F_1| = a + c$，$|P F_2| = c - a$

- 当 $P$ 在左顶点 $(-a, 0)$ 时：

  $|P F_1| = c - a$，$|P F_2| = a + c$

- 双曲线的焦半径随点 $P$ 的横坐标 $x$ 线性变化（各支内）

#line(length: 100%, stroke: 0.5pt + gray)

=== 四、公式证明（代数法）

#set math.equation(numbering: none)

#strong[证法一]：利用两点间距离公式。

由 $F_2(c, 0)$，得：

#set math.equation(numbering: "(1)")

$ |P F_2|^2 = (x - c)^2 + y^2 $

#set math.equation(numbering: none)

由双曲线方程 $x^2/a^2 - y^2/b^2 = 1$，解得：

#set math.equation(numbering: "(1)")

$ y^2 = b^2 (x^2/a^2 - 1) $

#set math.equation(numbering: none)

将上式代入两点间距离公式 $|P F_2|^2 = (x - c)^2 + y^2$，得：

#set math.equation(numbering: "(1)")

$ |P F_2|^2 = (x - c)^2 + b^2 (x^2/a^2 - 1) $

#set math.equation(numbering: none)

展开并利用 $b^2 = c^2 - a^2$：

#set math.equation(numbering: "(1)")

$ |P F_2|^2 = x^2 - 2c x + c^2 + (c^2 - a^2)(x^2/a^2 - 1) $

#set math.equation(numbering: none)

化简：

#set math.equation(numbering: "(1)")

$ |P F_2|^2 = x^2 - 2c x + c^2 + (c^2/a^2)x^2 - c^2 - x^2 + a^2 $

#set math.equation(numbering: none)

即：

#set math.equation(numbering: "(1)")

$ |P F_2|^2 = (c^2/a^2)x^2 - 2c x + a^2 = (c x/a - a)^2 $

#set math.equation(numbering: none)

因此：

#set math.equation(numbering: "(1)")

$ |P F_2| = |c x/a - a| = |e x - a| $

#set math.equation(numbering: none)

同理可证：

#set math.equation(numbering: "(1)")

$ |P F_1| = |c x/a + a| = |e x + a| $

#line(length: 100%, stroke: 0.5pt + gray)

=== 五、公式证明（几何法）

#set math.equation(numbering: none)

#strong[证法二]：利用双曲线第二定义。

双曲线的第二定义：双曲线是到定点（焦点）与到定直线（准线）的距离之比为常数 $e$（$e > 1$）的点的轨迹。

左准线方程为：$x = -a/e$，右准线方程为：$x = a/e$。

对于右支上的点 $P(x, y)$（$x >= a$），点 $P$ 到右准线的距离为 $x - a/e$。

由第二定义：

#set math.equation(numbering: "(1)")

$ |P F_2| / (x - a/e) = e $

#set math.equation(numbering: none)

所以：

#set math.equation(numbering: "(1)")

$ |P F_2| = e (x - a/e) = e x - a $

#set math.equation(numbering: none)

同理，点 $P$ 到左准线的距离为 $x + a/e$，由第二定义：

#set math.equation(numbering: "(1)")

$ |P F_1| = e (x + a/e) = e x + a $

#set math.equation(numbering: none)

对于左支上的点，同理可得带绝对值的公式。证毕。

#line(length: 100%, stroke: 0.5pt + gray)

=== 六、重要推论

#set math.equation(numbering: none)

#strong[推论 1]：焦半径之积

对于右支上的点：

#set math.equation(numbering: "(1)")

$ |P F_1| dot |P F_2| = (e x + a)(e x - a) = e^2 x^2 - a^2 $

#set math.equation(numbering: none)

#strong[推论 2]：焦半径的范围

右支（$x >= a$）：

#set math.equation(numbering: "(1)")

$ |P F_1| >= a + c $，$|P F_2| >= c - a $

#set math.equation(numbering: none)

左支（$x <= -a$）：

#set math.equation(numbering: "(1)")

$ |P F_1| >= c - a $，$|P F_2| >= a + c $

#set math.equation(numbering: none)

当且仅当 $P$ 在相应顶点时取到最小值。

#strong[推论 3]：焦半径之差

右支：

#set math.equation(numbering: "(1)")

$ |P F_1| - |P F_2| = (e x + a) - (e x - a) = 2a $

#set math.equation(numbering: none)

左支：

#set math.equation(numbering: "(1)")

$ |P F_1| - |P F_2| = (-e x - a) - (-e x + a) = -2a $

#set math.equation(numbering: none)

统一为：$||P F_1| - |P F_2|| = 2a$。

#line(length: 100%, stroke: 0.5pt + gray)

=== 七、公式汇总

#set math.equation(numbering: none)

#figure(
  table(
    columns: 4,
    stroke: none,
    [位置], [焦点], [焦半径公式], [范围],
    [右支], [$F_1(-c, 0)$], [$|P F_1| = e x + a$], [$[a+c, +infinity)$],
    [右支], [$F_2(c, 0)$], [$|P F_2| = e x - a$], [$[c-a, +infinity)$],
    [左支], [$F_1(-c, 0)$], [$|P F_1| = -e x - a$], [$[c-a, +infinity)$],
    [左支], [$F_2(c, 0)$], [$|P F_2| = -e x + a$], [$[a+c, +infinity)$],
  ),
  caption: [双曲线焦半径公式汇总],
)

其中 $e = c/a > 1$，$c^2 = a^2 + b^2$。

#line(length: 100%, stroke: 0.5pt + gray)

=== 八、注意事项

#set math.equation(numbering: none)

- #text(fill: red)[双曲线焦半径公式需要区分左支和右支]，不能像椭圆那样统一为一个表达式

- 公式中的 $x$ 为双曲线上点的横坐标，焦点在 $x$ 轴上

- 若焦点在 $y$ 轴上（$y^2/a^2 - x^2/b^2 = 1$），需要将公式中的 $x$ 替换为 $y$，并将左右支改为上下支

- 双曲线的离心率 $e > 1$，与椭圆的 $0 < e < 1$ 不同

- 双曲线焦半径没有最大值（范围是 $[a+c, +infinity)$ 或 $[c-a, +infinity)$）

#line(length: 100%, stroke: 0.5pt + gray)

=== 九、典型应用

#set math.equation(numbering: none)

#strong[应用 1]：求双曲线上点到焦点的距离

已知双曲线 $x^2/9 - y^2/16 = 1$ 上一点 $P$ 在右支上，横坐标为 $x = 5$，求 $|P F_1|$ 和 $|P F_2|$。

#set math.equation(numbering: none)

解：$a^2 = 9$，$b^2 = 16$，$c^2 = a^2 + b^2 = 25$，所以 $a = 3$，$c = 5$，$e = c/a = 5/3$。

点 $P$ 在右支上，使用右支公式：

#set math.equation(numbering: "(1)")

$ |P F_1| = e x + a = (5/3) times 5 + 3 = 25/3 + 3 = 34/3 $

$ |P F_2| = e x - a = (5/3) times 5 - 3 = 25/3 - 3 = 16/3 $

#set math.equation(numbering: none)

验证：$|P F_1| - |P F_2| = 34/3 - 16/3 = 18/3 = 6 = 2a$，符合双曲线定义。

#strong[应用 2]：利用焦半径判断点所在支

已知双曲线 $x^2/4 - y^2/5 = 1$ 上一点 $P$ 满足 $|P F_1| = 8$，其中 $F_1$ 为左焦点，判断点 $P$ 在左支还是右支，并求 $|P F_2|$。

#set math.equation(numbering: none)

解：$a^2 = 4$，$b^2 = 5$，$c^2 = a^2 + b^2 = 9$，所以 $a = 2$，$c = 3$，$e = 3/2$。

若 $P$ 在右支，$|P F_1| = e x + a >= a + c = 5$；若 $P$ 在左支，$|P F_1| = -e x - a >= c - a = 1$。

因为 $|P F_1| = 8 >= 5$，点 $P$ 可能在右支，也可能在左支。

#set math.equation(numbering: none)

若在右支：$|P F_2| = |P F_1| - 2a = 8 - 4 = 4$

若在左支：$|P F_2| = |P F_1| + 2a = 8 + 4 = 12$

#set math.equation(numbering: "(1)")

$ |P F_2| = 4 $（右支）或 $|P F_2| = 12 $（左支）

#set math.equation(numbering: none)

需要结合其他条件确定具体位置。

#strong[应用 3]：求双曲线焦半径的最值

已知双曲线 $x^2/16 - y^2/9 = 1$，求右支上点到右焦点距离的最小值。

#set math.equation(numbering: none)

解：$a^2 = 16$，$b^2 = 9$，$c^2 = a^2 + b^2 = 25$，所以 $a = 4$，$c = 5$。

右支上点到右焦点的距离：

#set math.equation(numbering: "(1)")

$ |P F_2| = e x - a = (5/4)x - 4 $，其中 $x >= 4$

#set math.equation(numbering: none)

当 $x = 4$（右顶点）时取最小值：

#set math.equation(numbering: "(1)")

$ |P F_2|_min = c - a = 5 - 4 = 1 $

]
