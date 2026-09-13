#import "template.typ": *

#set document(title: [圆锥曲线焦半径])

#template(heading2-align: left, page-footer: "第 1 页")[

  == 一、椭圆

  === 一、基本定义

  #set math.equation(numbering: none)

  设椭圆方程为：

  #set math.equation(numbering: "(1)")

  $ x^2 / a^2 + y^2 / b^2 = 1 $（$a > b > 0$）

  #set math.equation(numbering: none)

  其左、右焦点分别为：

  $F_1(-c, 0)$，$F_2(c, 0)$，其中 $c^2 = a^2 - b^2$。

  椭圆上任意一点 $P(x, y)$，连接 $P$ 与焦点的线段 $P F_1$、$P F_2$ 称为焦半径。

  焦半径公式给出了椭圆上一点到两个焦点的距离表达式。

  #line(length: 100%, stroke: 0.5pt + gray)

  === 二、焦半径公式

  #set math.equation(numbering: none)

  对于椭圆上任意一点 $P(x, y)$，焦半径公式如下：

  #set math.equation(numbering: "(1)")

  $ |P F_1| = a + e x $

  $ |P F_2| = a - e x $

  #set math.equation(numbering: none)

  其中 $e = c/a$ 为椭圆的离心率（$0 < e < 1$）。

  等价地，利用 $e = c/a$，也可以写成：

  #set math.equation(numbering: "(1)")

  $ |P F_1| = a + (c/a) x = a + c x / a $

  $ |P F_2| = a - (c/a) x = a - c x / a $

  #set math.equation(numbering: none)

  此外，也可用焦准距 $p = b^2/c$ 表示：

  #set math.equation(numbering: "(1)")

  $ |P F_1| = e (x + a/e) $

  $ |P F_2| = e (a/e - x) $


  #line(length: 100%, stroke: 0.5pt + gray)

  === 三、几何意义

  #set math.equation(numbering: none)

  焦半径公式的几何意义：

  - 椭圆的焦半径随点 $P$ 的横坐标 $x$ 线性变化

  - 当 $P$ 在右顶点 $(a, 0)$ 时：$|P F_1| = a + c$，$|P F_2| = a - c$

  - 当 $P$ 在左顶点 $(-a, 0)$ 时：$|P F_1| = a - c$，$|P F_2| = a + c$

  - 当 $P$ 在上顶点 $(0, b)$ 或下顶点 $(0, -b)$ 时：$|P F_1| = |P F_2| = a$

  - 由椭圆定义可知：$|P F_1| + |P F_2| = 2a$（恒成立）

  #set math.equation(numbering: "(1)")

  $ (a + e x) + (a - e x) = 2a $

  #set math.equation(numbering: none)

  这一结论与椭圆定义完全一致，验证了公式的正确性。

  #line(length: 100%, stroke: 0.5pt + gray)

  === 四、公式证明（代数法）

  #set math.equation(numbering: none)

  #strong[证法一]：利用两点间距离公式。

  由 $F_2(c, 0)$，得：

  #set math.equation(numbering: "(1)")

  $ |P F_2|^2 = (x - c)^2 + y^2 $

  #set math.equation(numbering: none)

  由椭圆方程 $x^2/a^2 + y^2/b^2 = 1$，解得：

  #set math.equation(numbering: "(1)")

  $ y^2 = b^2 (1 - x^2/a^2) $

  #set math.equation(numbering: none)

  将上式代入两点间距离公式 $|P F_2|^2 = (x - c)^2 + y^2$，得：

  #set math.equation(numbering: "(1)")

  $ |P F_2|^2 = (x - c)^2 + b^2 (1 - x^2/a^2) $

  #set math.equation(numbering: none)

  展开并利用 $b^2 = a^2 - c^2$：

  #set math.equation(numbering: "(1)")

  $ |P F_2|^2 = x^2 - 2c x + c^2 + b^2 - (b^2/a^2)x^2 $

  #set math.equation(numbering: none)

  将 $b^2 = a^2 - c^2$ 代入：

  #set math.equation(numbering: "(1)")

  $ |P F_2|^2 = x^2 - 2c x + c^2 + a^2 - c^2 - ((a^2 - c^2)/a^2)x^2 $

  #set math.equation(numbering: none)

  化简：

  #set math.equation(numbering: "(1)")

  $ |P F_2|^2 = x^2 - 2c x + a^2 - x^2 + (c^2/a^2)x^2 $

  #set math.equation(numbering: none)

  即：

  #set math.equation(numbering: "(1)")

  $ |P F_2|^2 = a^2 - 2c x + (c^2/a^2)x^2 = (a - c x/a)^2 $

  #set math.equation(numbering: none)

  由于 $|P F_2| > 0$，$a - c x/a > 0$（因为 $|x| <= a$，$c/a = e < 1$，所以 $a - e x > 0$），所以：

  #set math.equation(numbering: "(1)")

  $ |P F_2| = a - c x/a = a - e x $

  #set math.equation(numbering: none)

  同理可证：

  #set math.equation(numbering: "(1)")

  $ |P F_1| = a + c x/a = a + e x $

  #line(length: 100%, stroke: 0.5pt + gray)

  === 五、公式证明（几何法）

  #set math.equation(numbering: none)

  #strong[证法二]：利用椭圆第二定义。

  椭圆的第二定义：椭圆是到定点（焦点）与到定直线（准线）的距离之比为常数 $e$（$0 < e < 1$）的点的轨迹。

  左准线方程为：$x = -a/e$，右准线方程为：$x = a/e$。

  点 $P(x, y)$ 到右准线的距离为：

  #set math.equation(numbering: "(1)")

  $ d(P, x = a/e) = |x - a/e| = a/e - x $（因为 $x <= a < a/e$）

  #set math.equation(numbering: none)

  由第二定义：

  #set math.equation(numbering: "(1)")

  $ (|P F_2|) / (a/e - x) = e $

  #set math.equation(numbering: none)

  所以：

  #set math.equation(numbering: "(1)")

  $ |P F_2| = e (a/e - x) = a - e x $

  #set math.equation(numbering: none)

  同理，点 $P$ 到左准线的距离为 $x + a/e$，由第二定义：

  #set math.equation(numbering: "(1)")

  $ |P F_1| = e (x + a/e) = a + e x $

  #set math.equation(numbering: none)

  证毕。

  #line(length: 100%, stroke: 0.5pt + gray)

  === 六、重要推论

  #set math.equation(numbering: none)

  #strong[推论 1]：焦半径之积

  #set math.equation(numbering: "(1)")

  $ |P F_1| dot |P F_2| = (a + e x)(a - e x) = a^2 - e^2 x^2 $

  #set math.equation(numbering: none)

  利用 $a^2 = b^2 + c^2$、$e^2 = c^2/a^2$ 和椭圆方程（$1 - x^2/a^2 = y^2/b^2$），焦半径之积还可进一步化为仅含 $y^2$ 的形式（选学）：

  #set math.equation(numbering: "(1)")

  $ |P F_1| dot |P F_2| = a^2 - e^2 x^2 = b^2 + c^2 (1 - x^2/a^2) = b^2 + (c^2/b^2) y^2 $

  #set math.equation(numbering: none)

  #strong[推论 2]：焦半径的范围

  #set math.equation(numbering: "(1)")

  $ a - c <= |P F_1| <= a + c ， a - c <= |P F_2| <= a + c $

  #set math.equation(numbering: none)

  当且仅当 $P$ 在左右顶点时取到最值：

  - 右顶点 $(a, 0)$：$|P F_1| = a + c$（最大），$|P F_2| = a - c$（最小）

  - 左顶点 $(-a, 0)$：$|P F_1| = a - c$（最小），$|P F_2| = a + c$（最大）

  #strong[推论 3]：焦点弦中点与焦半径的关系

  设过焦点 $F_2$ 的弦 $A B$ 两端点横坐标分别为 $x_1$、$x_2$，则：

  #set math.equation(numbering: "(1)")

  $ |A F_2| + |B F_2| = (a - e x_1) + (a - e x_2) = 2a - e(x_1 + x_2) $

  #strong[推论 4]：焦点弦长公式（第二定义的应用）

  设过焦点 $F_2(c, 0)$ 的弦 $A B$ 与长轴正方向所成的角为 $theta$，则

  #set math.equation(numbering: "(1)")

  $ |A B| = (2 a b^2)/(a^2 - c^2 cos^2 theta) $

  #set math.equation(numbering: none)

  #strong[证明]（用第二定义）：

  以 $F_2$ 为极点、$x$ 轴正方向为极轴建立极坐标系，设椭圆上一点 $P$ 的极坐标为 $(r, phi)$，其中 $r = |P F_2|$，$phi$ 为 $F_2 P$ 与 $x$ 轴正方向所成的角。

  相应于右焦点 $F_2$ 的准线为 $x = a/e$。点 $P$ 的直角坐标为 $(c + r cos phi, r sin phi)$，故 $P$ 到该准线的距离为

  $ a/e - (c + r cos phi) = a/e - c - r cos phi $

  由第二定义（椭圆上点到焦点的距离与到相应准线的距离之比等于离心率 $e$）：

  $ r = e (a/e - c - r cos phi) = a - e c - e r cos phi $

  所以

  $ r (1 + e cos phi) = a - e c = a - c^2/a = (a^2 - c^2)/a = b^2/a $

  即椭圆的极坐标方程为

  $ r = (b^2/a)/(1 + e cos phi) $

  （校验：$phi = 0$ 时 $r = (b^2/a)/(1 + e) = b^2/(a + c) = a - c$，恰为右顶点处的焦半径。）

  于是过焦点、与长轴成角 $theta$ 的弦 $A B$ 的两段焦半径为 $|F_2 A| = r(theta)$、$|F_2 B| = r(theta + pi)$，从而

  $
    |A B| = r(theta) + r(theta + pi) = (b^2/a) (1/(1 + e cos theta) + 1/(1 - e cos theta)) = (2 b^2)/(a (1 - e^2 cos^2 theta))
  $

  又

  $ 1 - e^2 cos^2 theta = 1 - (c^2/a^2) cos^2 theta = (a^2 - c^2 cos^2 theta)/a^2 $

  所以

  $ |A B| = (2 b^2)/(a dot (a^2 - c^2 cos^2 theta)/a^2) = (2 a b^2)/(a^2 - c^2 cos^2 theta) $

  证毕。

  验证：

  - $theta = 0$（弦为长轴）时 $|A B| = (2 a b^2)/(a^2 - c^2) = 2a$；
  - $theta = pi/2$（弦为通径）时 $|A B| = (2 a b^2)/a^2 = (2 b^2)/a$。

  均与图形一致。

  #line(length: 100%, stroke: 0.5pt + gray)

  === 七、公式汇总

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

  过焦点、与长轴正方向成角 $theta$ 的焦点弦长（见推论 4）：

  #set math.equation(numbering: "(1)")

  $ |A B| = (2 a b^2)/(a^2 - c^2 cos^2 theta) $

  #set math.equation(numbering: none)

  #line(length: 100%, stroke: 0.5pt + gray)

  === 八、注意事项

  #set math.equation(numbering: none)

  - #text(fill: red)[公式中的 $x$ 为椭圆上点的横坐标]，焦点在 $x$ 轴上（适用于标准方程）

  - 若焦点在 $y$ 轴上（$x^2/b^2 + y^2/a^2 = 1$，$a > b > 0$），焦半径公式变为：

    $|P F_1| = a + e y$，$|P F_2| = a - e y$（其中 $F_1(0, -c)$，$F_2(0, c)$）

  - 焦半径公式只适用于椭圆的标准形式

  - 公式中的符号：$|P F_1| = a + e x$ 中 $x$ 前为正号，因为 $F_1$ 在左侧；$|P F_2| = a - e x$ 中 $x$ 前为负号，因为 $F_2$ 在右侧

  - 若交换 $F_1$、$F_2$ 的编号，公式中的正负号也会相应交换

  #line(length: 100%, stroke: 0.5pt + gray)

  === 九、典型应用

  #set math.equation(numbering: none)

  #strong[应用 1]：求椭圆上点到焦点的距离

  已知椭圆 $x^2/25 + y^2/9 = 1$ 上一点 $P$ 的横坐标为 $x = 3$，求 $|P F_1|$ 和 $|P F_2|$。

  #set math.equation(numbering: none)

  解：$a^2 = 25$，$b^2 = 9$，$c^2 = a^2 - b^2 = 16$，所以 $a = 5$，$c = 4$，$e = c/a = 4/5$。

  #set math.equation(numbering: "(1)")

  $ |P F_1| = a + e x = 5 + (4/5) times 3 = 5 + 12/5 = 37/5 $

  $ |P F_2| = a - e x = 5 - (4/5) times 3 = 5 - 12/5 = 13/5 $

  #set math.equation(numbering: none)

  验证：$|P F_1| + |P F_2| = 37/5 + 13/5 = 50/5 = 10 = 2a$，符合椭圆定义。

  #strong[应用 2]：求椭圆上点到焦点的距离范围

  已知椭圆 $x^2/16 + y^2/7 = 1$，求椭圆上点到左焦点距离的最小值和最大值。

  #set math.equation(numbering: none)

  解：$a^2 = 16$，$b^2 = 7$，$c^2 = a^2 - b^2 = 9$，所以 $a = 4$，$c = 3$，$e = 3/4$。

  $|P F_1| = a + e x$，其中 $x in [-a, a] = [-4, 4]$。

  #set math.equation(numbering: "(1)")

  $ |P F_1|_min = a + e(-a) = a - c = 4 - 3 = 1 $

  $ |P F_1|_max = a + e(a) = a + c = 4 + 3 = 7 $

  #set math.equation(numbering: none)

  所以椭圆上点到左焦点的距离范围为 $[1, 7]$。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 二、双曲线

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

  $ (|P F_2|) / (x - a/e) = e $

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

  $ |P F_1| >= a + c , quad |P F_2| >= c - a $

  #set math.equation(numbering: none)

  左支（$x <= -a$）：

  #set math.equation(numbering: "(1)")

  $ |P F_1| >= c - a ，|P F_2| >= a + c $

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

  #strong[推论 4]：焦点弦长公式（第二定义的应用）

  设过右焦点 $F_2(c, 0)$ 的弦 $A B$ 与实轴（$x$ 轴正方向）所成的角为 $theta$，则

  #set math.equation(numbering: "(1)")

  $ |A B| = (2 a b^2)/(|a^2 - c^2 cos^2 theta|) $

  #set math.equation(numbering: none)

  #strong[证明]（用双曲线第二定义）：

  以 $F_2$ 为极点、$x$ 轴正方向为极轴建立极坐标系，设双曲线上一点 $P$ 的极坐标为 $(r, phi)$，其中 $r = |P F_2|$，$phi$ 为 $F_2 P$ 与 $x$ 轴正方向所成的角。

  先看右支上的点（$x >= a$）：它到右准线 $x = a/e$ 的距离为 $x - a/e$；又 $P$ 的直角坐标为 $(c + r cos phi, r sin phi)$，由第二定义（到焦点的距离与到相应准线的距离之比为 $e$）：

  $ r = e (c + r cos phi - a/e) = e c - a + e r cos phi $

  所以

  $ r (1 - e cos phi) = e c - a = c^2/a - a = (c^2 - a^2)/a = b^2/a $

  即右支的极坐标方程为

  $ r = (b^2/a)/(1 - e cos phi) $

  （校验：$phi = pi$ 时 $r = (b^2/a)/(1 + e) = b^2/(a + c) = c - a$，恰为右顶点到右焦点的距离。若把极径看作带符号的量（$r < 0$ 表示点在极角 $phi$ 的反方向上），该方程也表示双曲线的左支。）

  于是过焦点、与实轴成角 $theta$ 的弦 $A B$ 在极角 $theta$、$theta + pi$ 两个方向上，弦长为

  $
    |A B| = |r(theta) + r(theta + pi)| = (b^2/a) |1/(1 - e cos theta) + 1/(1 + e cos theta)| = (2 b^2)/(a |1 - e^2 cos^2 theta|)
  $

  又

  $ 1 - e^2 cos^2 theta = 1 - (c^2/a^2) cos^2 theta = (a^2 - c^2 cos^2 theta)/a^2 $

  所以

  $ |A B| = (2 b^2)/a dot (a^2)/(|a^2 - c^2 cos^2 theta|) = (2 a b^2)/(|a^2 - c^2 cos^2 theta|) $

  证毕。

  验证：

  - $theta = 0$（弦在实轴所在的直线上）时 $|A B| = (2 a b^2)/(|a^2 - c^2|) = (2 a b^2)/b^2 = 2a$，正是两顶点间的距离；
  - $theta = pi/2$（弦为通径）时 $|A B| = (2 a b^2)/a^2 = (2 b^2)/a$。

  当 $|cos theta| > a/c$（弦的倾角小于渐近线的倾角，此时 $a^2 - c^2 cos^2 theta < 0$）时，弦与两支各交于一点，上式中的*绝对值不能省略*；当 $|cos theta| <= a/c$ 时弦与同一支交于两点，绝对值可直接去掉。

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

  $ |P F_2| = 4 $（右支）或 $|P F_2| = 12$（左支）

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

  #line(length: 100%, stroke: 0.5pt + gray)

  == 三、抛物线

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

#strong[推论 4]：焦点弦长的角度形式（第二定义的应用）

设过焦点 $F$ 的弦 $A B$ 与对称轴（$x$ 轴正方向）所成的角为 $theta$，则

#set math.equation(numbering: "(1)")

$ |A B| = (2 p)/(sin^2 theta) $

#set math.equation(numbering: none)

#strong[证明]（用抛物线定义，即 $e = 1$ 的第二定义）：

以 $F$ 为极点、$x$ 轴正方向为极轴建立极坐标系，设抛物线上一点 $P$ 的极坐标为 $(r, phi)$，其中 $r = |P F|$，$phi$ 为 $F P$ 与 $x$ 轴正方向所成的角。

$P$ 的直角坐标为 $(p/2 + r cos phi, r sin phi)$，而准线为 $x = -p/2$，故 $P$ 到准线的距离为

$ (p/2 + r cos phi) - (-p/2) = p + r cos phi $

由抛物线定义（到焦点的距离等于到准线的距离，即第二定义中 $e = 1$ 的情形）：

$ r = p + r cos phi quad => quad r (1 - cos phi) = p $

即抛物线的极坐标方程为

$ r = p/(1 - cos phi) $

（$phi = 0$ 时分母为 $0$，说明从焦点沿对称轴正方向的射线与抛物线不相交：抛物线上越远的点，其方向越接近对称轴。）

于是过焦点、与对称轴成角 $theta$（$0 < theta < pi$）的弦 $A B$ 的两端点分别位于极角 $theta$、$theta + pi$ 的方向上，弦长为

$ |A B| = r(theta) + r(theta + pi) = p (1/(1 - cos theta) + 1/(1 + cos theta)) = (2 p)/(1 - cos^2 theta) = (2 p)/(sin^2 theta) $

证毕。

验证：当 $theta = pi/2$（弦垂直于对称轴，即通径）时 $|A B| = 2p$，与推论 3 的结果一致。

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
