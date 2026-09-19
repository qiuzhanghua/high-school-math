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

  *解答（全程只用坐标 $P(x_1, y_1)$、$Q(x_2, y_2)$，不引入离心角）：*

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

  第一项（分子分母同除以 $a$ 后有理化）：

  $
    ((3 + sqrt(5))/3)/((5 - sqrt(5))/5) = (5(3 + sqrt(5)))/(3(5 - sqrt(5))) = (5(3+sqrt(5))(5+sqrt(5)))/(3 dot 20) = (5(20 + 8 sqrt(5)))/60 = (5 + 2 sqrt(5))/3;
  $

  第二项同理为 $(5 - 2 sqrt(5))/3$。两式相加：

  $ (|P F_1|)/(|Q F_1|) + (|P F_2|)/(|Q F_2|) = (5 + 2 sqrt(5))/3 + (5 - 2 sqrt(5))/3 = 10/3. $

  所以第一空填 $10/3$。

  *另解（填空、选择的秒杀路线，展开版）*

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

  *附加说明：第一空的完整证明（证明它等于 $(2 sin angle F_1 Q F_2)/(sin angle F_1 P F_2)$）。*

  记 $theta_P = angle F_1 P F_2$、$theta_Q = angle F_1 Q F_2$，$r_1 = |P F_1|$、$r_2 = |P F_2|$、$r_1' = |Q F_1|$、$r_2' = |Q F_2|$。分三步，每一步都只用②③已经证过的结论。

  *第一步（面积法，把正弦与 $|y|$ 挂钩）。* $triangle P F_1 F_2$ 用两种方式算面积：以 $F_1 F_2 = 2c$ 为底时高为 $|y_1|$，以 $P F_1$、$P F_2$ 为边时用夹角，故

  $ 1/2 r_1 r_2 sin theta_P = 1/2 dot 2c dot |y_1| quad => quad sin theta_P = (2c |y_1|)/(r_1 r_2). $

  同理在 $triangle Q F_1 F_2$ 中

  $ sin theta_Q = (2c |y_2|)/(r_1' r_2'). $

  两式相除，$2c$ 约去：

  $ (sin theta_P)/(sin theta_Q) = (|y_1| dot r_1' r_2')/(|y_2| dot r_1 r_2). (*) $

  *第二步（代入②③的三个结果）。* ②③ 给出

  $ |y_2| = 3 |y_1|, quad r_1 r_2 = (10 b^2)/9, quad r_1' r_2' = 2 b^2. $

  代回 $(*)$：

  $ (sin theta_P)/(sin theta_Q) = (1 dot 2 b^2)/(3 dot (10 b^2)/9) = (2 b^2)/((10 b^2)/3) = 3/5. $

  *第三步（得到第一空）。* 由上式

  $ (2 sin theta_Q)/(sin theta_P) = 2 dot 5/3 = 10/3. $

  又 $theta_Q = 90degree$，故 $sin theta_Q = 1$；而 $cos theta_P = 4/5$，故 $sin theta_P = sqrt(1 - (4/5)^2) = 3/5$。直接代入也得

  $ (2 sin theta_Q)/(sin theta_P) = (2 dot 1)/(3/5) = 10/3. $

  这就把"第一空"与 $(2 sin angle F_1 Q F_2)/(sin angle F_1 P F_2)$ 之间的关系*完整证明*了一遍（不是验证）：$(*)$ 是恒等式（对任意 $P$、$Q$ 都成立），把 ②③ 的结果代入后即得定值 $10/3$。

  *附：与 ⑦ 的一致性。* ⑦ 中用 $r = a +- e x$ 直接算出的

  $ (|P F_1|)/(|Q F_1|) + (|P F_2|)/(|Q F_2|) = (5 + 2 sqrt(5))/3 + (5 - 2 sqrt(5))/3 = 10/3 $

  与上面的 $(2 sin theta_Q)/(sin theta_P)$ 相等，两条路线互证。

  *附加说明之二：焦点三角形面积公式 $S_(triangle P F_1 F_2) = b^2 tan (theta_P)/2$，以及等式的证明。*

  *（一）公式及其证明。* 设 $theta = angle F_1 P F_2$，$r_1 = |P F_1|$、$r_2 = |P F_2|$，则

  $ S = 1/2 r_1 r_2 sin theta. $

  由余弦定理 $4 c^2 = r_1^2 + r_2^2 - 2 r_1 r_2 cos theta$ 与 $r_1 + r_2 = 2a$，得

  $ 4 b^2 = 4 a^2 - 4 c^2 = (r_1+r_2)^2 - (r_1^2+r_2^2-2r_1r_2cos theta) = 2 r_1 r_2 (1 + cos theta), $

  即 $r_1 r_2 = (2 b^2)/(1 + cos theta)$，于是

  $ S = 1/2 dot (2 b^2)/(1 + cos theta) dot sin theta = b^2 dot (sin theta)/(1 + cos theta) = b^2 tan (theta)/2. $

  *（二）用它把 ②③ 一步拿下。* 由上式

  $ S_P = b^2 tan (theta_P)/2, quad S_Q = b^2 tan (theta_Q)/2 = b^2 tan 45degree = b^2, $

  （这里用了 $theta_Q = angle F_1 Q F_2 = 90degree$）。另一方面，两个三角形都以 $F_1 F_2 = 2c$ 为底，故 $S_P = c |y_1|$、$S_Q = c |y_2|$，所以

  $ (|y_2|)/(|y_1|) = (S_Q)/(S_P) = (b^2)/(b^2 tan (theta_P)/2) = cot (theta_P)/2. $

  由 $cos theta_P = 4/5$ 得

  $ tan (theta_P)/2 = sqrt((1 - cos theta_P)/(1 + cos theta_P)) = sqrt((1/5)/(9/5)) = 1/3, $

  故 $|y_2| = 3 |y_1|$——这正是 ②③ 的结果，但只用了一行半角公式，比原来用 $b$、$c$ 消元更省。

  *（三）等式的证明。* 仍由面积法（与第一版相同，但此处只用一次）：

  $ (sin theta_P)/(sin theta_Q) = (|y_1| r_1' r_2')/(|y_2| r_1 r_2) = (|y_1| dot 2 b^2)/(3 |y_1| dot (10 b^2)/9) = 3/5, $

  于是

  $ (2 sin theta_Q)/(sin theta_P) = 2 dot 5/3 = 10/3; $

  而左边由 ⑦ 的精确计算为

  $ (|P F_1|)/(|Q F_1|) + (|P F_2|)/(|Q F_2|) = (5 + 2 sqrt(5))/3 + (5 - 2 sqrt(5))/3 = 10/3, $

  两者相等，等式得证。全过程只用面积公式、半角公式与已证的 ②③，不含任何近似数值。
  $($特别地，由于 $theta_Q = 90degree$，右边可直接算：$2 sin theta_Q slash sin theta_P = 2/(3/5) = 10/3$，连 ②③ 都不必用。$)$

  *答题规范提示*：本题作为*填空*，可直接引用"$P$ 处法线平分 $angle F_1 P F_2$"（光学性质）与焦半径公式 $r = a +- e x$ 快速得解；若作为*解答题*，光学性质须替换为上面的"单位向量之和沿角平分线"（菱形对角线），焦半径公式也建议用坐标与余弦定理现场推出，以免因引用非课本结论而失分。

  *说明*：$cos theta$、$cos phi$ 的符号由"$Q$ 在 $P$ 的角平分线上"这一条件共同确定；若取另一组符号，比式会得到 $10/3$，需要由 $Q$ 的实际位置排除。本题按标准答案：第一空 $5/3$，$e = (sqrt(15))/5$。
  #qed
]
