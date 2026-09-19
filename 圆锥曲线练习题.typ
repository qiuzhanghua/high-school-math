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

  #line(length: 100%, stroke: 0.5pt + gray)

  *（2027 届武汉九调 T14）* 记椭圆 $Gamma: x^2/a^2 + y^2/b^2 = 1$（$a > b > 0$）的左、右焦点分别为 $F_1$、$F_2$。已知椭圆上的点 $P$ 满足 $cos angle F_1 P F_2 = 4/5$。记 $angle F_1 P F_2$ 的平分线与椭圆交于另一点 $Q$。若 $angle F_1 Q F_2 = 90degree$，则 $(|P F_1|) / (|Q F_1|) + (|P F_2|)/(|Q F_2|) = underline(#h(3em))$，离心率 $e = underline(#h(3em))$。


  #align(center)[
    #block(breakable: false, width: 260pt, height: 268pt)[
      // 椭圆（a = 95, b = 60, 中心 (150,150)）与两条坐标轴
      #place(dx: 55pt, dy: 90pt, ellipse(width: 190pt, height: 120pt, stroke: 0.8pt))
      #place(dx: 150pt, dy: 35pt, line(end: (0pt, 230pt), stroke: (paint: gray, thickness: 0.4pt)))   // y 轴
      #place(dx: 20pt, dy: 150pt, line(end: (260pt, 0pt), stroke: (paint: gray, thickness: 0.4pt)))   // x 轴
      // 焦半径 PF1、PF2、QF1、QF2
      #place(dx: 241pt, dy: 134pt, line(end: (-165pt, 16pt), stroke: 0.8pt))      // P→F1
      #place(dx: 241pt, dy: 134pt, line(end: (-17pt, 16pt), stroke: 0.8pt))       // P→F2
      #place(dx: 95pt, dy: 199pt, line(end: (-19pt, -49pt), stroke: (paint: rgb("#c7362e"), thickness: 1.1pt)))  // Q→F1
      #place(dx: 95pt, dy: 199pt, line(end: (129pt, -49pt), stroke: (paint: rgb("#c7362e"), thickness: 1.1pt)))  // Q→F2
      // 角平分线 PQ（虚线）
      #place(dx: 95pt, dy: 199pt, line(end: (146pt, -65pt), stroke: (
        paint: rgb("#1f6feb"),
        thickness: 1.1pt,
        dash: "dashed",
      )))
      // 点
      #place(dx: 76pt, dy: 150pt, circle(radius: 1.8pt, fill: black))             // F1
      #place(dx: 224pt, dy: 150pt, circle(radius: 1.8pt, fill: black))            // F2
      #place(dx: 239pt, dy: 132pt, circle(radius: 1.8pt, fill: black))            // P
      #place(dx: 93pt, dy: 197pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))    // Q
      // 标签
      #place(dx: 66pt, dy: 154pt)[$F_1$]
      #place(dx: 226pt, dy: 154pt)[$F_2$]
      #place(dx: 244pt, dy: 124pt)[$P$]
      #place(dx: 76pt, dy: 202pt)[#text(fill: rgb("#c7362e"))[$Q$]]
      #place(dx: 252pt, dy: 140pt)[$x$]
      #place(dx: 156pt, dy: 40pt)[$y$]
    ]
  ]

  #v(8pt)

  图中 $P$、$Q$ 都在椭圆上，$F_1$、$F_2$ 是左、右焦点；蓝色虚线 $P Q$ 是 $angle F_1 P F_2$ 的平分线（即椭圆在 $P$ 处的法线），红线为 $Q$ 到两焦点的连线。

  *答案*：第一空 $10/3$；第二空 $e = (sqrt(15))/5$。

  *解法一（符号推导 + 韦达定理化简，一般情形；推荐解法）。*

  *(一) 一般情形的符号推导*（不代入 $cos alpha$，也不代入 $angle F_1 Q F_2$ 的具体值）：

  记号：$alpha = angle F_1 P F_2$，$gamma = angle F_1 Q F_2$，$r_1 = |P F_1|$、$r_2 = |P F_2|$、$r_1' = |Q F_1|$、$r_2' = |Q F_2|$，$beta_1 = angle P Q F_1$、$beta_2 = angle P Q F_2$。全程把 $cos alpha$、$cos gamma$ 当作符号，只在最后一步代值。

  *第一步（角平分线 + 正弦定理）。* $P Q$ 平分 $angle F_1 P F_2$，故 $angle F_1 P Q = angle Q P F_2 = (alpha)/2$。在两个三角形 $P F_1 Q$、$P F_2 Q$ 中用正弦定理：

  $ r_1/r_1' = (sin beta_1)/(sin alpha/2), quad r_2/r_2' = (sin beta_2)/(sin alpha/2). quad (1) $

  又 $P$ 在 $angle F_1 Q F_2$ 内部，故

  $ beta_1 + beta_2 = gamma. quad (2) $

  *第二步（定义平方）。* 由 $r_1 + r_2 = r_1' + r_2' = 2a$：

  $ r_1^2 + r_2^2 + 2 r_1 r_2 = r_1'^2 + r_2'^2 + 2 r_1' r_2'. quad (3) $

  *第三步（两个余弦定理）。* 在 $triangle P F_1 F_2$、$triangle Q F_1 F_2$ 中：

  $ r_1^2 + r_2^2 - 2 r_1 r_2 cos alpha = 4 c^2, quad r_1'^2 + r_2'^2 - 2 r_1' r_2' cos gamma = 4 c^2. quad (4) $

  *第四步（两式相减，消去 $r^2$ 项）。* 由 $(3)$、$(4)$ 分别得

  $ 2 r_1 r_2 (1 + cos alpha) = 4 a^2 - 4 c^2 = 4 b^2, quad 2 r_1' r_2' (1 + cos gamma) = 4 b^2, $

  即

  $
    r_1 r_2 = (2 b^2)/(1 + cos alpha), quad r_1' r_2' = (2 b^2)/(1 + cos gamma), quad (r_1 r_2)/(r_1' r_2') = (1 + cos gamma)/(1 + cos alpha). quad (5)
  $

  结合 $(1)$ 得

  $ sin beta_1 sin beta_2 = sin^2 (alpha/2) (1 + cos gamma)/(1 + cos alpha). quad (6) $

  *第五步（求 $S = r_1/r_1' + r_2/r_2'$，全程符号）。* 由 $(1)$

  $ S = (sin beta_1 + sin beta_2)/(sin alpha/2), quad S^2 = ((sin beta_1 + sin beta_2)^2)/(sin^2 alpha/2). $

  由 $(2)$ 用和差化积：

  $
    sin beta_1 + sin beta_2 = 2 sin (gamma/2) cos ((beta_1 - beta_2))/2, quad sin beta_1 sin beta_2 = (cos(beta_1 - beta_2) - cos gamma)/2.
  $

  于是 $cos(beta_1 - beta_2) = 2 sin beta_1 sin beta_2 + cos gamma$，代入 $(6)$：

  $ cos(beta_1 - beta_2) = (2 sin^2 (alpha/2) (1 + cos gamma))/(1 + cos alpha) + cos gamma. $

  又 $cos^2 ((beta_1 - beta_2))/2 = (1 + cos(beta_1 - beta_2))/2$，故

  $
    (sin beta_1 + sin beta_2)^2 = 4 sin^2 (gamma)/2 dot (1 + cos(beta_1 - beta_2))/2 = 2 sin^2 (gamma)/2 (1 + cos(beta_1 - beta_2)).
  $

  把 $cos(beta_1 - beta_2)$ 代入并用 $1 + cos gamma = 2 cos^2 (gamma)/2$、$sin^2 (alpha/2) = (1 - cos alpha)/2$，化简得

  $
    (sin beta_1 + sin beta_2)^2 = 2 sin^2 (gamma)/2 (1 + cos gamma) dot (1 + (1 - cos alpha)/(1 + cos alpha)) = 2 sin^2 (gamma)/2 (1 + cos gamma) dot 2/(1 + cos alpha).
  $

  再除以 $sin^2 (alpha/2) = (1 - cos alpha)/2$，并注意 $1 - cos^2 alpha = sin^2 alpha$、$1 + cos gamma = 2 cos^2 (gamma)/2$：

  $
    S^2 = (4 sin^2 (gamma)/2 (1 + cos gamma))/(1 - cos^2 alpha) = (4 sin^2 (gamma)/2 dot 2 cos^2 (gamma)/2)/(sin^2 alpha) = (4 sin^2 gamma)/(sin^2 alpha).
  $

  因为 $S > 0$、$sin alpha > 0$，开方得

  $
    S = (2 sin gamma)/(sin alpha), quad "即" quad (|P F_1|)/(|Q F_1|) + (|P F_2|)/(|Q F_2|) = (2 sin angle F_1 Q F_2)/(sin angle F_1 P F_2).
  $

  *第六步（代值）。* 本题 $gamma = 90degree$，$cos alpha = 4/5$，于是 $sin gamma = 1$、$sin alpha = 3/5$，

  $ S = (2 dot 1)/(3/5) = 10/3, $

  即第一空为 $10/3$。


  *(二) 把 $x_1 = (|P F_1|)/(|Q F_1|)$、$x_2 = (|P F_2|)/(|Q F_2|)$ 当作"两根"，用韦达定理化简 $e^2$。*

  记 $q_1 = |Q F_1|$、$q_2 = |Q F_2|$，则 $|P F_1| = x_1 q_1$、$|P F_2| = x_2 q_2$。由椭圆定义得方程组

  $
    cases(x_1 q_1 + x_2 q_2 = 2a, q_1 + q_2 = 2a) quad => quad q_1 = (2(1-x_2))/(x_1-x_2) a, quad q_2 = (2(x_1-1))/(x_1-x_2) a. quad (7)
  $

  而$angle F_1 Q F_2 = 90degree$：

  $ q_1^2 + q_2^2 = |F_1 F_2|^2 = 4 c^2. quad (8) $

  把 $(7)$ 代入 $(8)$：

  $
    ((2a)/(x_1-x_2))^2 [(1-x_2)^2 + (x_1-1)^2] = 4 c^2 quad => quad e^2 = ((1-x_2)^2 + (x_1-1)^2)/((x_1-x_2)^2). quad (9)
  $

  *关键观察：$(9)$ 的右边关于 $x_1$、$x_2$ 是对称的*（交换 $x_1$、$x_2$ 后分子变成 $(1-x_1)^2 + (x_2-1)^2$，与原式相同），所以可以用"两根之和、两根之积"表出，不必把 $x_1$、$x_2$ 分别解出来：

  $ e^2 = ((x_1^2 + x_2^2) - 2(x_1 + x_2) + 2)/((x_1 + x_2)^2 - 4 x_1 x_2). quad (10) $

  *两根之和与两根之积*（由上面 (一) 的符号结果）：

  $ x_1 + x_2 = (sin beta_1 + sin beta_2)/(sin (alpha/2)) = 2/(sin alpha) $

  $
    x_1 x_2 = (|P F_1| |P F_2|)/(|Q F_1| |Q F_2|) = (r_1 r_2)/(r_1' r_2') = 1/(1 + cos alpha) \
    x_1^2 + x_2^2 = (sin^2 beta_1 + sin^2 beta_2)/(sin^2 alpha/2) = 1/(sin^2 alpha/2) = 2/(1 - cos alpha).
  $


  *代入 $(10)$。* 由上一小节的三组结果与 $cos alpha = 4/5$：

  $ x_1 + x_2 = 2/(sin alpha) = 2/(3/5) = 10/3 $
  $ quad x_1 x_2 = 1/(1 + cos alpha) = 1/(9/5) = 5/9 $
  $ quad x_1^2 + x_2^2 = 2/(1 - cos alpha) = 2/(1/5) = 10. $

  于是

  $
    e^2 = (10 - 2 dot (10)/3 + 2)/((10/3)^2 - 4 dot 5/9) = ((30 - 20 + 6)/3)/((100 - 20)/9) = (16/3)/((80)/9) = (16)/3 dot 9/(80) = 3/5,
  $

  故

  $ e = (sqrt(15))/5 $


  *解法二（坐标法，大题规范写法；全程只用 $P(x_1, y_1)$、$Q(x_2, y_2)$，不引入离心角）。*

  *① 一个公共的中间量：用坐标表示 $|P F_1| dot |P F_2|$。* 设 $P(x_1, y_1)$ 在椭圆 $x^2/a^2 + y^2/b^2 = 1$ 上，$F_1(-c, 0)$、$F_2(c, 0)$，$c^2 = a^2 - b^2$。由

  $ |P F_1|^2 + |P F_2|^2 = (x_1+c)^2 + y_1^2 + (x_1-c)^2 + y_1^2 = 2(x_1^2 + y_1^2 + c^2) $

  与 $|P F_1| + |P F_2| = 2a$，得

  $ |P F_1| dot |P F_2| = ((|P F_1| + |P F_2|)^2 - (|P F_1|^2 + |P F_2|^2))/2 = 2a^2 - (x_1^2 + y_1^2 + c^2). $

  把 $x_1^2 = a^2 - (a^2/b^2) y_1^2$（椭圆方程）代入，并用 $a^2 - c^2 = b^2$：

  $ |P F_1| dot |P F_2| = b^2 + (c^2 y_1^2)/(b^2). $

  对 $Q(x_2, y_2)$ 同理有 $|Q F_1| dot |Q F_2| = b^2 + (c^2 y_2^2)/(b^2)$。

  *② 由 $cos angle F_1 P F_2 = 4/5$ 定出 $y_1^2$。* 在 $triangle P F_1 F_2$ 中由余弦定理，并代入 $|P F_1| + |P F_2| = 2a$、$|F_1 F_2| = 2c$：

  $ cos angle F_1 P F_2 = (|P F_1|^2 + |P F_2|^2 - 4c^2)/(2 |P F_1| |P F_2|) = (2 b^2)/(|P F_1| |P F_2|) - 1, $

  故 $|P F_1| |P F_2| = (2 b^2)/(9/5) = (10 b^2)/9$，与①比较得

  $ (c^2 y_1^2)/(b^2) = b^2/9, quad "即" quad y_1^2 = (b^4)/(9 c^2). $

  *③ 由 $angle F_1 Q F_2 = 90degree$ 定出 $y_2^2$。* 此时 $|Q F_1|^2 + |Q F_2|^2 = 4c^2$，故 $2|Q F_1||Q F_2| = 4a^2 - 4c^2 = 4b^2$，即 $|Q F_1||Q F_2| = 2b^2$，与①比较得

  $ (c^2 y_2^2)/(b^2) = b^2, quad "即" quad y_2^2 = (b^4)/(c^2) = 9 y_1^2. $

  于是 $|y_2| = 3|y_1|$。

  *④ 用"单位向量之和"表示角平分线（大题可用）。* 由 $r_1^2 - r_2^2 = 4 c x_1$ 与 $r_1 + r_2 = 2a$ 得 $r_1 = a + e x_1$、$r_2 = a - e x_1$（其中 $r_1 = |P F_1|$ 等）。于是

  $ bold(v) = arrow(P F_1)/r_1 + arrow(P F_2)/r_2 = (1/(r_1 r_2)) (-(2 b^2 x_1)/a, -2 a y_1), $

  即 $bold(v) text(∥) ((b^2 x_1)/a, a y_1)$。由 $P Q$ 是内角平分线得 $arrow(P Q) text(∥) bold(v)$，即

  $ a^2 y_1 (x_2 - x_1) = b^2 x_1 (y_2 - y_1). $

  *⑤ 定符号后代入。* 逐一检验符号可知，只有 *$P$ 在第一象限（$x_1>0$、$y_1>0$）、$Q$ 在第三象限（$x_2<0$、$y_2<0$）* 时 $arrow(P Q)$ 与 $bold(v)$ 同向，故取

  $ y_2 = -3 y_1, quad x_1 = sqrt(1 - y_1^2/b^2) > 0, quad x_2 = -sqrt(1 - y_2^2/b^2) < 0. $

  代入上式并约去 $y_1 > 0$：

  $ a^2 (x_2 - x_1) = -4 b^2 x_1 quad => quad x_2 = x_1 (1 - (4 b^2)/a^2). $

  *⑥ 解出 $e$。* 记 $u = e^2$，则 $b^2 = a^2(1-u)$、$y_1^2/b^2 = b^2/(9c^2) = (1-u)/(9u)$、$y_2^2/b^2 = (1-u)/u$。把 $x_1^2 = 1 - (1-u)/(9u)$、$x_2^2 = 1 - (1-u)/u$ 代入上式并两边平方：

  $ 1 - (1-u)/u = (1 - 4(1-u))^2 (1 - (1-u)/(9u)), $

  即

  $ (2u-1)/u = ((4u-3)^2 (10u-1))/(9u) quad => quad 9(2u-1) = (4u-3)^2 (10u-1). $

  展开整理：

  $ 18u - 9 = 160u^3 - 256u^2 + 114u - 9 quad => quad 5u^2 - 8u + 3 = 0, $

  得 $u = 1$（此时 $b = 0$，舍）或 $u = 3/5$，故

  $ e^2 = 3/5, quad e = (sqrt(15))/5. $

  *⑦ 求第一空。* 由 $r_1 = a + e x_1$（到左焦点 $F_1$）、$r_2 = a - e x_1$（到右焦点 $F_2$），同理 $r_1' = a + e x_2$、$r_2' = a - e x_2$。由 ⑤ 的结果 $x_1 = (5 a)/(3 sqrt(3))$、$x_2 = -a/(sqrt(3))$ 与 $e = (sqrt(15))/5$：

  $
    e x_1 = (sqrt(15))/5 dot (5 a)/(3 sqrt(3)) = (a sqrt(5))/3, quad e x_2 = (sqrt(15))/5 dot (-a/(sqrt(3))) = -(a sqrt(5))/5.
  $

  于是

  $
    (|P F_1|)/(|Q F_1|) + (|P F_2|)/(|Q F_2|) = (a + (a sqrt(5))/3)/(a - (a sqrt(5))/5) + (a - (a sqrt(5))/3)/(a + (a sqrt(5))/5).
  $

  约分，化简得：

  $ (|P F_1|)/(|Q F_1|) + (|P F_2|)/(|Q F_2|) = (5 + 2 sqrt(5))/3 + (5 - 2 sqrt(5))/3 = 10/3. $

  所以第一空填 $10/3$。

  *解法三（填空、选择的秒杀路线，展开版）。*

  *第一步：认出"平分线就是法线"。* 由椭圆的*光学性质*（椭圆上一点处的法线平分两条焦半径的夹角），$angle F_1 P F_2$ 的平分线就是椭圆在 $P$ 处的法线，所以 $P Q$ 沿 $P$ 处法线方向。

  *第二步：用焦半径公式把两个条件写成 $cos theta$、$cos phi$ 的方程。* 记 $P(a cos theta, b sin theta)$、$Q(a cos phi, b sin phi)$，则

  $ r_1 r_2 = |P F_1| dot |P F_2| = a^2 - e^2 x_P^2 = a^2 (1 - e^2 cos^2 theta), $

  $ r_1' r_2' = |Q F_1| dot |Q F_2| = a^2 (1 - e^2 cos^2 phi). $

  由 $cos angle F_1 P F_2 = 4/5$ 及 $cos angle F_1 P F_2 = (2 b^2)/(r_1 r_2) - 1$ 得

  $ a^2 (1 - e^2 cos^2 theta) = (10 b^2)/9, quad "即" quad 1 - e^2 cos^2 theta = (10(1-e^2))/9. quad "（I）" $

  由 $angle F_1 Q F_2 = 90degree$ 及 $r_1' r_2' = 2 b^2$ 得

  $ a^2 (1 - e^2 cos^2 phi) = 2 b^2, quad "即" quad 1 - e^2 cos^2 phi = 2(1 - e^2). quad "（II）" $

  *第三步：加一条"法线条件"。* 椭圆在 $P(a cos theta, b sin theta)$ 处的法线方向为 $((cos theta)/a, (sin theta)/b)$，而 $arrow(P Q)$ 与它平行，故

  $ (a cos phi - a cos theta) dot (sin theta)/b - (b sin phi - b sin theta) dot (cos theta)/a = 0, $

  即

  $ a^2 sin theta (cos phi - cos theta) = b^2 cos theta (sin phi - sin theta). quad "（III）" $

  *第四步：定符号后解出 $e$。* 由（II）得 $cos^2 phi = (2e^2-1)/e^2$，由（I）得 $cos^2 theta = (10e^2-1)/(9e^2)$。注意到（III）要求 $cos phi$ 与 $cos theta$ *异号*（$P$ 在第一象限、$Q$ 在第三象限），于是

  $ cos theta = sqrt((10e^2-1)/(9e^2)), quad cos phi = -sqrt((2e^2-1)/e^2). $

  代入（III）并两边平方，整理得关于 $u = e^2$ 的方程

  $ 5u^2 - 8u + 3 = 0 quad => quad u = 3/5 quad ("舍去" u = 1), $

  即 $e = (sqrt(15))/5$；第一空同正解为 $10/3$。

  *第五步（填空实战：先猜后验更省时间）。* 若已由上述方程结构猜出 $e^2 = 3/5$，只需回代验证：

  $ cos^2 theta = (10 dot 3/5 - 1)/(9 dot 3/5) = 5/9 dot 5/3 = 25/27, quad cos^2 phi = (2 dot 3/5 - 1)/(3/5) = 1/3, $

  取 $cos theta = 5/(3 sqrt(3))$、$cos phi = -1/(sqrt(3))$ 时有

  $ a^2 sin theta (cos phi - cos theta) = b^2 cos theta (sin phi - sin theta), $

  即（III）成立，说明 $e^2 = 3/5$ 确实是答案。填空、选择时用"猜 + 代回验证"两三行即可收工；解答题请用前面的正解（推导完整、无跳步）。

  \

  *答题规范提示*：本题作为*填空*，可直接引用"$P$ 处法线平分 $angle F_1 P F_2$"（光学性质）与焦半径公式 $r = a +- e x$ 快速得解；若作为*解答题*，光学性质须替换为上面的"单位向量之和沿角平分线"（菱形对角线），焦半径公式也建议用坐标与余弦定理现场推出，以免因引用非课本结论而失分。

]
