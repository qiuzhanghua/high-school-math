#import "template.typ": *

#set document(title: [圆锥曲线仿射变换])

#template(heading2-align: left, page-footer: "第 1 页")[

  == 一、把椭圆"压"成圆

  椭圆 $x^2/a^2 + y^2/b^2 = 1$ 与单位圆 $x^2 + y^2 = 1$ 之间有一个很简单的对应：把椭圆*横向缩为原来的 $1/a$、纵向缩为原来的 $1/b$*（即令 $x' = x/a$、$y' = y/b$），它就变成了单位圆：

  $ x^2/a^2 + y^2/b^2 = 1 quad <==> quad x'^2 + y'^2 = 1 $

  反过来，把单位圆*横向伸为 $a$ 倍、纵向伸为 $b$ 倍*（$x = a x'$、$y = b y'$）就得到椭圆。这种"沿两个坐标轴方向分别按固定比例伸缩"的变换叫做*仿射变换*。

  它的价值在于一条"底层逻辑"：*椭圆里不好算的东西，先压成圆、在圆里算，再按规则换算回椭圆*——圆里的几何（平行、共线、比例、面积、正三角形）都特别简单。

  #align(center)[
    #block(breakable: false, width: 230pt, height: 265pt)[
      // ——— 上：椭圆 ———
      #place(dx: 30pt, dy: 15pt, ellipse(width: 120pt, height: 80pt, stroke: 0.9pt))
      #place(dx: 60pt, dy: 20.4pt, line(end: (76pt, 60.3pt), stroke: 0.9pt))
      #place(dx: 150pt, dy: 55pt, line(end: (-119.1pt, 7pt), stroke: 0.9pt))
      #place(dx: 58pt, dy: 18.4pt, circle(radius: 2pt, fill: black))
      #place(dx: 134pt, dy: 78.7pt, circle(radius: 2pt, fill: black))
      #place(dx: 148pt, dy: 53pt, circle(radius: 2pt, fill: black))
      #place(dx: 28.9pt, dy: 60pt, circle(radius: 2pt, fill: black))
      #place(dx: 104.8pt, dy: 55.5pt, circle(radius: 2pt, fill: rgb("#c7362e")))
      #place(dx: 48pt, dy: 8pt)[$A$]
      #place(dx: 140pt, dy: 78pt)[$B$]
      #place(dx: 153pt, dy: 47pt)[$C$]
      #place(dx: 18pt, dy: 56pt)[$D$]
      #place(dx: 110pt, dy: 60pt)[$E$]
      // ——— 中间：换算说明 ———
      #place(dx: 62pt, dy: 110pt)[↓ 横缩 $1/a$、纵缩 $1/b$]
      // ——— 下：单位圆 ———
      #place(dx: 50pt, dy: 165pt, circle(radius: 40pt, stroke: 0.9pt))
      #place(dx: 70pt, dy: 170.4pt, line(end: (50.6pt, 60.3pt), stroke: 0.9pt))
      #place(dx: 130pt, dy: 205pt, line(end: (-79.4pt, 6.95pt), stroke: 0.9pt))
      #place(dx: 68pt, dy: 168.4pt, circle(radius: 2pt, fill: black))
      #place(dx: 118.6pt, dy: 228.7pt, circle(radius: 2pt, fill: black))
      #place(dx: 128pt, dy: 203pt, circle(radius: 2pt, fill: black))
      #place(dx: 48.6pt, dy: 209.95pt, circle(radius: 2pt, fill: black))
      #place(dx: 99.2pt, dy: 205.5pt, circle(radius: 2pt, fill: rgb("#c7362e")))
      #place(dx: 58pt, dy: 158pt)[$A'$]
      #place(dx: 124pt, dy: 226pt)[$B'$]
      #place(dx: 134pt, dy: 196pt)[$C'$]
      #place(dx: 36pt, dy: 208pt)[$D'$]
      #place(dx: 105pt, dy: 210pt)[$E'$]
    ]
  ]

  #line(length: 100%, stroke: 0.5pt + gray)

  == 二、斜率怎么变

  设椭圆上的两点 $A(x_1, y_1)$、$B(x_2, y_2)$ 压成单位圆后对应 $A'(x_1/a, y_1/b)$、$B'(x_2/a, y_2/b)$，则

  $ k_("A'B'") = ((y_1 - y_2)/b)/((x_1 - x_2)/a) = a/b dot (y_1 - y_2)/(x_1 - x_2) = a/b k_("AB") $

  也就是

  $ k_("AB") = b/a k_("A'B'") quad (即 k_("A'B'") = a/b k_("AB")) $

  一句话：*圆里的斜率乘 $b/a$，才是椭圆里的斜率*（反过来要乘 $a/b$）。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 三、仿射变换保持了什么

  沿坐标轴按固定比例伸缩，一定保持下面三件事：

  - *保平行*：原来平行的两条直线，变换后仍然平行；
  - *保共线*：原来共线的点，变换后仍然共线；
  - *保共线三点的比例*：若 $A$、$E$、$B$ 三点共线，则

  $ (|A E|)/(|B E|) = (|A' E'|)/(|B' E'|) $

  由此立刻得到两个常用推论：*中点还是中点*；*定比分点的比值不变*。所以"中点弦""定点分弦""重心"这类问题最欢迎仿射变换。

  *不保持的*：*弦长*（两个方向的伸缩比不同，长度没有统一的换算关系，所以求弦长时不能用仿射变换）、角度、焦点与准线等。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 四、面积怎么变

  把椭圆压成单位圆时，横向缩了 $1/a$、纵向缩了 $1/b$，所以*面积缩为原来的 $1/(a b)$*：设原图形面积为 $S$、压扁后像的面积为 $S'$，则

  $ S = a b S' quad (即 S' = S/(a b)) $

  几个常用结论：

  - *椭圆的面积*：单位圆的面积是 $pi$，所以椭圆的面积为 $a b dot pi = pi a b$；
  - *面积比不变*：$S_1 : S_2 = S_1' : S_2'$（两边同乘 $a b$ 就约掉了），所以*比值型的面积问题*可以直接搬到圆里算；
  - *面积最值*：$S = a b S'$ 中 $a b$ 是常数，所以*求椭圆里面积的最大值，只需在单位圆里求最大值、再乘 $a b$*。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 五、例 1：椭圆内接三角形面积的最大值

  *【例 1】* 求椭圆 $x^2/16 + y^2/9 = 1$ 的内接三角形面积的最大值。

  === 解析

  这里 $a = 4$、$b = 3$。

  *① 压成单位圆。* 作仿射变换：横向缩为 $1/4$、纵向缩为 $1/3$。椭圆的*内接*三角形与单位圆的*内接*三角形一一对应（顶点都落在曲线上），且面积满足

  $ S = a b S' = 12 S' $

  *② 在圆里求最大面积。* 单位圆的内接三角形中，*正三角形*面积最大：它的边长是 $sqrt(3)$，故面积为

  $ S' = sqrt(3)/4 dot (sqrt(3))^2 = (3 sqrt(3))/4 $

  *③ 换算回椭圆。*

  $ S = 12 times (3 sqrt(3))/4 = 9 sqrt(3) $

  所以所求最大面积为 $9 sqrt(3)$。

  （提醒：压扁之后，正三角形的"像"一般不再是正三角形，但这不影响面积——我们只用面积的倍数关系。）

  #line(length: 100%, stroke: 0.5pt + gray)

  == 六、习题（都可以用仿射变换解决）

  *【习题 1】* 已知椭圆 $C: x^2/a^2 + y^2/b^2 = 1$（$a > b > 0$），直线 $l$ 经过原点且与 $C$ 交于 $A$、$B$ 两点，$P$ 为椭圆上除 $A$、$B$ 外的任一点，求证

  $ k_("PA") dot k_("PB") = -(b^2)/(a^2) $

  *证明（仿射变换）*：把椭圆压成单位圆（横缩 $1/a$、纵缩 $1/b$）。

  - $l$ 过原点，所以它的像 $l'$ 也过圆心，$A'$、$B'$ 是单位圆的*一条直径*的两个端点；
  - 圆中"直径所对的圆周角是直角"，即 $k_("PA'") dot k_("PB'") = -1$；
  - 再用斜率换算 $k = b/a k'$：

  $ k_("PA") dot k_("PB") = (b/a k_("PA'")) (b/a k_("PB'")) = (b^2)/(a^2) dot (-1) = -(b^2)/(a^2) $

  证毕。（这正是第四节的"椭圆周角定理"，只是换成仿射变换来证。）

  *另证（坐标点差）*：设 $A(x_1, y_1)$，则 $B(-x_1, -y_1)$，$P(x_0, y_0)$，于是

  $ k_("PA") dot k_("PB") = (y_0 - y_1)/(x_0 - x_1) dot (y_0 + y_1)/(x_0 + x_1) = (y_0^2 - y_1^2)/(x_0^2 - x_1^2) $

  由 $P$、$A$ 都在椭圆上，两式相减得 $(x_0^2 - x_1^2)/a^2 + (y_0^2 - y_1^2)/b^2 = 0$，于是

  $ (y_0^2 - y_1^2)/(x_0^2 - x_1^2) = -(b^2)/(a^2) $

  结论成立。

  #line(length: 100%, stroke: 0.5pt + gray)

  *【习题 2】* 已知椭圆 $C: x^2/4 + y^2/3 = 1$，若 $A$、$B$ 为椭圆上任意两点，则 $S_(triangle A B O)$ 的最大值为 #box(width: 4em, stroke: (bottom: 0.5pt)) 。

  *解答（仿射变换）*：这里 $a = 2$、$b = sqrt(3)$，压成单位圆后

  $ S = a b S' = 2 sqrt(3) S' $

  圆心 $O$ 与圆上两点 $A'$、$B'$ 组成的三角形，当 $O A' perp O B'$ 时面积最大：

  $ S' = 1/2 dot 1 dot 1 dot sin 90 degree = 1/2 $

  所以

  $ S = 2 sqrt(3) dot 1/2 = sqrt(3) $

  故最大值为 $sqrt(3)$。

  *另解（参数法）*：设 $A(2 cos alpha, sqrt(3) sin alpha)$、$B(2 cos beta, sqrt(3) sin beta)$，则

  $ S = 1/2 |x_A y_B - x_B y_A| = 1/2 dot 2 sqrt(3) |sin (beta - alpha)| <= sqrt(3) $

  当 $|sin (beta - alpha)| = 1$ 时取到最大值 $sqrt(3)$。

  #line(length: 100%, stroke: 0.5pt + gray)

  *【习题 3】* 设椭圆 $y^2/a^2 + x^2/b^2 = 1$（$a > b > 0$）经过点 $P(1, sqrt(2))$，离心率 $e = sqrt(2)/2$。

  （1）求椭圆的方程；

  （2）直线 $l_1: y = sqrt(2) x + m$（$m in R$）与椭圆交于 $A$、$B$ 两点，且 $triangle P A B$ 的面积为 $sqrt(2)$，求 $m$ 的值。

  *解答*：

  *（1）* 这里长轴在 $y$ 轴上，$c^2 = a^2 - b^2$，由 $e^2 = 1 - b^2/a^2 = 1/2$ 得 $b^2 = a^2/2$。把 $P(1, sqrt(2))$ 代入椭圆方程：

  $ 2/a^2 + 1/b^2 = 1 quad => quad 2/a^2 + 2/a^2 = 1 quad => quad a^2 = 4, quad b^2 = 2 $

  所以椭圆方程为 $y^2/4 + x^2/2 = 1$。

  *（2）* 把 $y = sqrt(2) x + m$ 代入 $x^2/2 + y^2/4 = 1$：

  $ 4 x^2 + 2 sqrt(2) m x + m^2 - 4 = 0 $

  设两根为 $x_1, x_2$，则

  $ x_1 + x_2 = -(sqrt(2) m)/2, quad x_1 x_2 = (m^2 - 4)/4, quad Delta = 8 (8 - m^2) > 0 $

  于是

  $ |A B| = sqrt(1 + 2) |x_1 - x_2| = sqrt(3) dot sqrt(Delta)/4 = sqrt(6)/2 sqrt(8 - m^2) $

  点 $P(1, sqrt(2))$ 到 $l_1$（即 $sqrt(2) x - y + m = 0$）的距离为

  $ d = (|sqrt(2) - sqrt(2) + m|)/(sqrt(3)) = (|m|)/(sqrt(3)) $

  由面积条件

  $ 1/2 dot sqrt(6)/2 sqrt(8 - m^2) dot (|m|)/(sqrt(3)) = sqrt(2) quad => quad |m| sqrt(8 - m^2) = 4 $

  两边平方并令 $u = m^2$：

  $ u (8 - u) = 16 quad => quad (u - 4)^2 = 0 quad => quad u = 4 quad => quad m = +- 2 $

  两个值都满足 $Delta > 0$，故 $m = +- 2$。

  *另解（仿射变换，把弦变成斜率 $1$ 的直线）*：作 $x' = x/(sqrt(2))$、$y' = y/2$，把椭圆压成单位圆（这里 $a = 2$、$b = sqrt(2)$，故 $a b = 2 sqrt(2)$）。

  - 点 $P(1, sqrt(2))$ 的像是 $P'(sqrt(2)/2, sqrt(2)/2)$，它在单位圆上；
  - 直线 $l_1: y = sqrt(2) x + m$ 的像是

  $ y' = x' + m/2 $

  记 $c = m/2$，即 $x' - y' + c = 0$——*斜率恒为 $1$*，与 $m$ 无关；
  - 圆心到它的距离是 $(|c|)/(sqrt(2))$，所以弦长

  $ |A'B'| = 2 sqrt(1 - (c^2)/2) $

  - 又 $P'$ 恰在直线 $y' = x'$ 上，故 $P'$ 到 $l_1'$ 的距离也等于 $(|c|)/(sqrt(2))$，于是

  $ S' = 1/2 dot 2 sqrt(1 - (c^2)/2) dot (|c|)/(sqrt(2)) = (|c|)/(sqrt(2)) sqrt(1 - (c^2)/2) $

  由面积条件 $S = a b S' = 2 sqrt(2) S' = sqrt(2)$，得

  $ |c| sqrt(1 - (c^2)/2) = sqrt(2)/2 $

  两边平方并令 $v = c^2$：

  $ v (1 - v/2) = 1/2 quad => quad v^2 - 2 v + 1 = 0 quad => quad (v - 1)^2 = 0 quad => quad v = 1 quad => quad c = +- 1 $

  故 $m = 2 c = +- 2$，与上面结果一致。

  （顺带看到仿射的好处：在圆里"弦的斜率恒为 $1$、$P'$ 在 $45 degree$ 方向"这些结构一目了然，面积式子里只剩一个参数 $c$。）


  #line(length: 100%, stroke: 0.5pt + gray)

  *【习题 4】* 已知椭圆 $C: x^2/4 + y^2/3 = 1$，若 $triangle A B C$ 是这个椭圆的内接三角形，且原点 $O$ 恰为 $triangle A B C$ 的重心，则此三角形的面积为 #box(width: 4em, stroke: (bottom: 0.5pt)) 。

  *解答（仿射变换）*：$a = 2$、$b = sqrt(3)$，压成单位圆后

  $ S = a b S' = 2 sqrt(3) S' $

  并且*重心还是重心*（仿射变换保持共线三点的比例）。所以圆的内接三角形 $A'B'C'$ 的重心也是圆心；圆的内接三角形若重心与圆心重合，它就是*正三角形*，面积为

  $ S' = sqrt(3)/4 dot (sqrt(3))^2 = (3 sqrt(3))/4 $

  于是

  $ S = 2 sqrt(3) times (3 sqrt(3))/4 = 9/2 $

  故面积为 $9/2$。

  （顺带说明：第五节例 1 中"内接三角形面积最大"的那种情形，重心恰好落在中心——因为最大面积就是由正三角形的像给出的。）

  #line(length: 100%, stroke: 0.5pt + gray)

  *【习题 5】* 已知双曲线 $M: x^2/2 - y^2/3 = 1$，过双曲线 $M$ 上一点 $P$ 向双曲线 $N: x^2/2 - y^2/3 = lambda$ 作切线 $l_1$、$l_2$，其斜率分别为 $k_1$、$k_2$。请问是否存在这样的 $lambda$，使得 $k_1 dot k_2$ 为定值？若存在，求出 $lambda$ 的值和定值；若不存在，请说明理由。

  *解答*：

  *① 把"相切"翻译成 $k$ 的方程。* 设 $P(x_0, y_0)$ 在 $M$ 上，即

  $ x_0^2/2 - y_0^2/3 = 1 quad => quad y_0^2 = 3/2 x_0^2 - 3 $

  过 $P$ 且斜率为 $k$ 的直线写作 $y = k x + t$，则 $t = y_0 - k x_0$。把它代入 $N$ 的方程并令判别式为 $0$（相切）：

  $ t^2 = lambda (2 k^2 - 3) $

  再把 $t = y_0 - k x_0$ 代入，整理得

  $ (x_0^2 - 2 lambda) k^2 - 2 x_0 y_0 k + (y_0^2 + 3 lambda) = 0 $

  两条切线的斜率 $k_1$、$k_2$ 正是这个方程的两个根。

  *② 假设 $k_1 k_2$ 为定值。* 由韦达定理，并代入 $y_0^2 = 3/2 x_0^2 - 3$：

  $ k_1 k_2 = (y_0^2 + 3 lambda)/(x_0^2 - 2 lambda) = (3/2 x_0^2 + 3 lambda - 3)/(x_0^2 - 2 lambda) $

  要使它与 $P$ 无关，需要有常数 $c$ 使

  $ 3/2 x_0^2 + 3 lambda - 3 = c (x_0^2 - 2 lambda) $

  比较系数得 $c = 3/2$，且 $3 lambda - 3 = -3 lambda$，解得 $lambda = 1/2$（此时形式上 $k_1 k_2 = 3/2$）。

  *③ 检验两条切线是否真的存在。* 斜率方程有实根要求

  $ Delta = 4 x_0^2 y_0^2 - 4 (x_0^2 - 2 lambda)(y_0^2 + 3 lambda) = 24 lambda (lambda - 1) >= 0 $

  即 $lambda <= 0$ 或 $lambda >= 1$。而"定值"要求 $lambda = 1/2$，代入得 $Delta = -6 < 0$——过 $P$ 的两条切线的斜率根本不存在（双曲线 $N$ 整套"缩"在 $M$ 的内部，$M$ 上的点引不出 $N$ 的切线）。

  *结论*：*不存在* 这样的 $lambda$。能让 $k_1 k_2$ 为定值的 $lambda$ 只有 $1/2$，但此时两条切线不存在；而当 $lambda <= 0$ 或 $lambda >= 1$（切线确实存在）时，$k_1 k_2$ 又随 $P$ 而变化。

  #line(length: 100%, stroke: 0.5pt + gray)

  === 方法总结

  - *两个方向的公式*：椭圆 $->$ 单位圆用 $x' = x/a$、$y' = y/b$；单位圆 $->$ 椭圆用 $x = a x'$、$y = b y'$。
  - *斜率换算*：$k_("AB") = b/a k_("A'B'")$（圆里的斜率乘 $b/a$）。
  - *三个保持*：保平行、保共线、保共线三点的比例不变（中点是中点、定比不变）。
  - *面积换算*：$S = a b S'$；面积比不变；椭圆面积为 $pi a b$。
  - *最适合仿射的四类问题*：① 中点弦、平行弦的中点轨迹；② 比值／比例型定值；③ 面积比值与面积最值；④ 平行、共线关系的证明。
  - *五道习题正好覆盖五类用法*：习题 1 证斜率之积（周角定理的仿射证明）、习题 2 求面积最值（`(1/2)ab`）、习题 3 综合题里的弦与面积（先定椭圆再算弦长、点线距；也可仿射到单位圆，把弦变成"斜率恒为 $1$"的直线，只剩一个参数）、习题 5 提醒"存在性"要先验证再作答、习题 4 说明重心条件推出定面积。
  - *"存在性"问题务必回代检验*（习题 5）：由"乘积为定值"解出 $lambda = 1/2$ 只是*形式*上的解，还要看切线是否真的存在（判别式 $Delta = 24 lambda (lambda - 1) >= 0$）；$lambda = 1/2$ 时 $Delta < 0$，所以答案是不存在。
  - *两个用不了*：① *弦长*（不同方向伸缩比不同，长度没有简单换算）；② *焦点、准线、离心率*（它们不是仿射不变量，压成圆后无从谈起）。
]
