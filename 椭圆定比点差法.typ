#import "template.typ": *
#set document(title: [椭圆定比点差法])
#template(page-footer: "第 1 页")[
  #set math.equation(numbering: "(1)")

  = 椭圆定比点差法：一个公式证明

  设椭圆
  $ frac(x^2, a^2) + frac(y^2, b^2) = 1 $
  上两点为 $A(x_1, y_1)$、$B(x_2, y_2)$。

  $P$ 为内分点，满足
  $ arrow(A P) = lambda arrow(P B) $
  $Q$ 为外分点，满足
  $ arrow(A Q) = - lambda arrow(Q B) $

  则有
  $
    frac(x_P x_Q, a^2) + frac(y_P y_Q, b^2) = 1
  $

  证明如下：

  $
    &quad frac(x_P x_Q, a^2) + frac(y_P y_Q, b^2) \
    &= frac(1, a^2) dot frac(x_1 + lambda x_2, 1 + lambda) dot frac(x_1 - lambda x_2, 1 - lambda)
    + frac(1, b^2) dot frac(y_1 + lambda y_2, 1 + lambda) dot frac(y_1 - lambda y_2, 1 - lambda) \
    &= frac(1, 1 - lambda^2) dot frac((x_1 + lambda x_2)(x_1 - lambda x_2), a^2)
    + frac(1, 1 - lambda^2) dot frac((y_1 + lambda y_2)(y_1 - lambda y_2), b^2) \
    &= frac(1, 1 - lambda^2) dot frac(x_1^2 - lambda^2 x_2^2, a^2)
    + frac(1, 1 - lambda^2) dot frac(y_1^2 - lambda^2 y_2^2, b^2) \
    &= frac(1, 1 - lambda^2) dot [ frac(x_1^2, a^2) + frac(y_1^2, b^2) - lambda^2 ( frac(x_2^2, a^2) + frac(y_2^2, b^2) ) ] \
    &= frac(1, 1 - lambda^2) dot (1 - lambda^2) \
    &= 1.
  $

  其中用到：

  - 内分点公式：
    $ x_P = frac(x_1 + lambda x_2, 1 + lambda) $
    $ y_P = frac(y_1 + lambda y_2, 1 + lambda) $

  - 外分点公式：
    $ x_Q = frac(x_1 - lambda x_2, 1 - lambda) $
    $ y_Q = frac(y_1 - lambda y_2, 1 - lambda) $

  - 椭圆方程：
    $ frac(x_1^2, a^2) + frac(y_1^2, b^2) = 1 $
    $ frac(x_2^2, a^2) + frac(y_2^2, b^2) = 1 $

  证毕。



  #line(length: 100%, stroke: 0.5pt + gray)

  = 1.  椭圆定比点差法综合应用

  *题目：*
  已知椭圆 $frac(x^2, a^2) + frac(y^2, b^2) = 1 (a > b > 0)$ 的左、右焦点分别为 $F_1, F_2$，离心率为 $frac(1, 2)$，$M$ 是 $C$ 上一点，$|M F_1| = 2$，且 $|M F_1| |M F_2| = 2 arrow(M F_1) dot arrow(M F_2)$。
  (1) 求椭圆 $C$ 的标准方程；
  (2) 当过点 $P(4,1)$ 的动直线 $l$ 与椭圆 $C$ 相交于不同的两点 $A, B$，在线段 $A B$ 上取点 $Q$，且点 $Q$ 满足 $|arrow(A P)| |arrow(Q B)| = |arrow(A Q)| |arrow(P B)|$，证明点 $Q$ 总在某直线上，并求出该定直线的方程。

  #line(length: 100%, stroke: 0.5pt + gray)

  *解：*

  *(1) 求椭圆 $C$ 的标准方程*

  由题意，椭圆离心率 $e = frac(c, a) = frac(1, 2)$，所以
  $ a = 2c $
  又因为 $b^2 = a^2 - c^2 = 4c^2 - c^2 = 3c^2$，所以椭圆方程可设为
  $ frac(x^2, 4c^2) + frac(y^2, 3c^2) = 1 $

  设 $angle F_1 M F_2 = theta$。由题意
  $ |M F_1| |M F_2| = 2 arrow(M F_1) dot arrow(M F_2) $
  即
  $ |M F_1| |M F_2| = 2 |M F_1| |M F_2| cos theta $
  因为 $|M F_1| |M F_2| eq 0$，所以
  $ cos theta = frac(1, 2) $

  $ theta = 60 degree $

  在 $triangle F_1 M F_2$ 中，由余弦定理：
  $ |F_1 F_2|^2 = |M F_1|^2 + |M F_2|^2 - 2 |M F_1| |M F_2| cos 60 degree $
  $ (2c)^2 = |M F_1|^2 + |M F_2|^2 - |M F_1| |M F_2| $

  又由椭圆定义 $|M F_1| + |M F_2| = 2a$。已知 $|M F_1| = 2$，所以
  $ |M F_2| = 2a - 2 $
  代入上式：
  $ 4c^2 = 2^2 + (2a - 2)^2 - 2(2a - 2) $

  $ 4c^2 = 4a^2 - 12a + 12 $

  将 $a = 2c$ 代入：

  $ a^2 = 4a^2 - 12a + 12 $
  $ (a - 2)^2 = 0 $
  解得
  $ a = 2 $
  $ c = frac(a, 2) = 1 $
  $ b^2 = a^2 - c^2 = 4 - 1 = 3 $
  所以椭圆 $C$ 的标准方程为
  $ frac(x^2, 4) + frac(y^2, 3) = 1 $

  *(2) 证明点 $Q$ 总在某直线上*

  设 $A(x_1, y_1)$, $B(x_2, y_2)$, $Q(x, y)$, $P(4, 1)$。
  由题意，$A, Q, B, P$ 四点共线，且 $Q$ 在线段 $A B$ 上。
  已知条件
  $ |arrow(A P)| |arrow(Q B)| = |arrow(A Q)| |arrow(P B)| $
  可以转化为线段比：
  $ frac(|A P|, |P B|) = frac(|A Q|, |Q B|) $
  这意味着点 $Q$ 和点 $P$ 对线段 $A B$ 的分割比相同，但一个是内分，一个是外分。
  设这个比值为 $lambda$，则有
  $ arrow(A Q) = lambda arrow(Q B) $
  $ arrow(A P) = -lambda arrow(P B) $

  由内分点公式：
  $ x = frac(x_1 + lambda x_2, 1 + lambda)， y = frac(y_1 + lambda y_2, 1 + lambda) $
  即
  $ x_1 + lambda x_2 = (1 + lambda) x ， y_1 + lambda y_2 = (1 + lambda) y $

  由外分点公式：
  $ 4 = frac(x_1 - lambda x_2, 1 - lambda) ， 1 = frac(y_1 - lambda y_2, 1 - lambda) $
  即
  $ x_1 - lambda x_2 = (1 - lambda) 4 ， y_1 - lambda y_2 = (1 - lambda) 1 $

  因为 $A, B$ 在椭圆 $frac(x^2, 4) + frac(y^2, 3) = 1$ 上，所以
  $ frac(x_1^2, 4) + frac(y_1^2, 3) = 1 $
  $ frac(x_2^2, 4) + frac(y_2^2, 3) = 1 $

  将第一式减去第二式乘以 $lambda^2$：
  $ frac(x_1^2 - lambda^2 x_2^2, 4) + frac(y_1^2 - lambda^2 y_2^2, 3) = 1 - lambda^2 $
  利用平方差公式展开：
  $ frac((x_1 + lambda x_2)(x_1 - lambda x_2), 4) + frac((y_1 + lambda y_2)(y_1 - lambda y_2), 3) = 1 - lambda^2 $

  将前面得到的定比分点关系代入：
  $ frac((1 + lambda)x dot (1 - lambda)4, 4) + frac((1 + lambda)y dot (1 - lambda)1, 3) = 1 - lambda^2 $
  $ x(1 - lambda^2) + frac(y, 3)(1 - lambda^2) = 1 - lambda^2 $

  因为 $lambda eq 1$，所以 $1 - lambda^2 eq 0$，两边同除以 $1 - lambda^2$：
  $ x + frac(y, 3) = 1 $
  即
  $ 3x + y - 3 = 0 $

  所以，点 $Q$ 总在定直线 $3x + y - 3 = 0$ 上。


  *(3) 如果直接套用公式*
  $ frac(x_P x_Q, a^2) + frac(y_P y_Q, b^2) = 1 $

  $ frac(4x, 4) + frac(1 dot y, 3) = 1 $

  $ x + frac(y, 3) = 1 $

  $ 3x + y = 3 $



  == 2. 定比点差法：求 $m$ 的值

  *题目：*
  已知点 $P(0, 1)$，椭圆 $frac(x^2, 4) + y^2 = m (m > 1)$ 上两点 $A, B$ 满足 $arrow(A P) = 2 arrow(P B)$，则当 $m = underline(quad)$ 时，点 $B$ 横坐标的绝对值最大。

  #line(length: 100%, stroke: 0.5pt + gray)

  *解：*

  椭圆方程化为标准形式：
  $ frac(x^2, 4m) + frac(y^2, m) = 1 $
  所以
  $ a^2 = 4m, quad b^2 = m $

  由 $arrow(A P) = 2 arrow(P B)$ 知 $P$ 是弦 $A B$ 的内分点，分比 $lambda = 2$。
  设 $A(x_1, y_1)$, $B(x_2, y_2)$, $P(x_P, y_P) = (0, 1)$。
  由内分点公式：
  $ x_P = frac(x_1 + 2x_2, 3), quad y_P = frac(y_1 + 2y_2, 3) $
  即
  $ x_1 + 2x_2 = 0, quad y_1 + 2y_2 = 3 $

  因为 $A, B$ 在椭圆上，所以
  $ frac(x_1^2, 4m) + frac(y_1^2, m) = 1 $
  $ frac(x_2^2, 4m) + frac(y_2^2, m) = 1 $

  将第一式减去第二式乘以 $4$：
  $ frac(x_1^2 - 4x_2^2, 4m) + frac(y_1^2 - 4y_2^2, m) = 1 - 4 $
  即
  $ frac((x_1 - 2x_2)(x_1 + 2x_2), 4m) + frac((y_1 - 2y_2)(y_1 + 2y_2), m) = -3 $

  代入 $x_1 + 2x_2 = 0$，$y_1 + 2y_2 = 3$：
  $ frac(3(y_1 - 2y_2), m) = -3 $
  所以
  $ y_1 - 2y_2 = -m $

  联立
  $ y_1 + 2y_2 = 3 $
  $ y_1 - 2y_2 = -m $
  解得
  $ y_1 = frac(3 - m, 2), quad y_2 = frac(3 + m, 4) $

  由 $x_1 + 2x_2 = 0$，设 $x_2 = t$，则 $x_1 = -2t$。
  代入椭圆方程：
  $ frac(4t^2, 4m) + frac((frac(3 - m, 2))^2, m) = 1 $
  即
  $ frac(t^2, m) + frac((3 - m)^2, 4m) = 1 $
  两边乘以 $4m$：
  $ 4t^2 + (3 - m)^2 = 4m $
  所以
  $ t^2 = m - frac((3 - m)^2, 4) $

  令
  $ f(m) = m - frac((3 - m)^2, 4), quad m > 1 $
  展开得
  $ f(m) = -frac(1, 4)(m^2 - 10m + 9) $
  这是开口向下的二次函数，对称轴为 $m = 5$。
  所以当 $m = 5$ 时，$t^2$ 最大，即点 $B$ 横坐标的绝对值最大。




  == 设外分点为 $Q$，套公式求 $m$


  *解：*

  椭圆化为标准形式：
  $ frac(x^2, 4m) + frac(y^2, m) = 1 $
  所以
  $ a^2 = 4m, quad b^2 = m $

  由 $arrow(A P) = 2 arrow(P B)$ 知 $P$ 是内分点，分比 $lambda = 2$。
  设 $A B$ 延长线上的外分点为 $Q$，且 $frac(A Q, B Q) = 2$。

  套用定比点差法公式：
  $ frac(x_P x_Q, a^2) + frac(y_P y_Q, b^2) = 1 $
  代入 $P(0, 1)$, $a^2 = 4m$, $b^2 = m$：
  $ frac(0 dot x_Q, 4m) + frac(1 dot y_Q, m) = 1 $
  所以
  $ y_Q = m $

  由内分点公式：
  $ P = frac(A + 2B, 3) $
  所以
  $ A + 2B = 3P = (0, 3) $
  而外分点满足
  $ Q = frac(A - 2B, 1 - 2) = 2B - A $
  因为 $A = 3P - 2B$，所以
  $ Q = 2B - (3P - 2B) = 4B - 3P $
  即
  $ Q = 4B - (0, 3) $
  所以
  $ B = frac(Q + (0, 3), 4) $
  因为 $Q = (x_Q, m)$，所以
  $ B = (frac(x_Q, 4), frac(m + 3, 4)) $

  因为 $B$ 在椭圆上：
  $ frac(x_B^2, 4m) + frac(y_B^2, m) = 1 $
  代入 $x_B = frac(x_Q, 4)$, $y_B = frac(m + 3, 4)$：
  $ frac((frac(x_Q, 4))^2, 4m) + frac((frac(m + 3, 4))^2, m) = 1 $
  即
  $ frac(x_Q^2, 64m) + frac((m + 3)^2, 16m) = 1 $
  两边乘以 $64m$：
  $ x_Q^2 + 4(m + 3)^2 = 64m $
  所以
  $ x_Q^2 = 64m - 4(m + 3)^2 $
  于是
  $ x_B^2 = frac(x_Q^2, 16) = 4m - frac((m + 3)^2, 4) $

  令
  $ f(m) = 4m - frac((m + 3)^2, 4), quad m > 1 $
  展开得
  $ f(m) = -frac(1, 4)(m^2 - 10m + 9) $
  这是开口向下的二次函数，对称轴为 $m = 5$。
  所以当 $m = 5$ 时，$x_B^2$ 最大，即点 $B$ 横坐标的绝对值最大。



  = 3. 定比点差法：求直线 $l$ 的斜率

  *题目：*
  已知椭圆 $frac(x^2, 10) + frac(y^2, 6) = 1$ 和点 $M(1, 0)$，直线 $l$ 过椭圆的左焦点 $F$，且与椭圆分别交于 $A, B$，直线 $A M$, $B M$ 与椭圆的另一个交点分别为点 $C, D$。若
  $ frac(|M A|, |M C|) + frac(|M B|, |M D|) = 3 $
  求直线 $l$ 的斜率。

  #line(length: 100%, stroke: 0.5pt + gray)

  *解：*

  椭圆 $frac(x^2, 10) + frac(y^2, 6) = 1$ 中，
  $ a^2 = 10, quad b^2 = 6, quad c = 2 $
  左焦点为
  $ F(-2, 0) $

  设直线 $l$ 的斜率为 $k$，参数方程为
  $ x = -2 + t, quad y = k t $
  代入椭圆方程：
  $ frac((-2 + t)^2, 10) + frac(k^2 t^2, 6) = 1 $
  整理得
  $ (3 + 5k^2)t^2 - 12t - 18 = 0 $
  设 $A, B$ 对应的参数分别为 $t_1, t_2$，则由韦达定理
  $ t_1 + t_2 = frac(12, 3 + 5k^2) $

  由定比点差法，$M(1, 0)$ 对应的外分点 $Q$ 满足
  $ frac(1 dot x_Q, 10) = 1 quad => quad x_Q = 10 $
  由此可得
  $ lambda_1 = frac(|M A|, |M C|) = frac(15 - 2t_1, 9), quad lambda_2 = frac(|M B|, |M D|) = frac(15 - 2t_2, 9) $

  题目条件 $lambda_1 + lambda_2 = 3$，代入得
  $ frac(15 - 2t_1, 9) + frac(15 - 2t_2, 9) = 3 $
  $ 30 - 2(t_1 + t_2) = 27 $
  $ t_1 + t_2 = frac(3, 2) $

  $ frac(12, 3 + 5k^2) = frac(3, 2) $
  $ 24 = 9 + 15k^2 $
  $ k^2 = 1 $

  所以直线 $l$ 的斜率为
  $ k = plus.minus 1 $
]
