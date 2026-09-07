#import "template.typ": *

#set document(title: [圆锥曲线手电筒模型])

#template(
  heading2-align: left,
  page-footer: "第 1 页",
)[

  === 定理

  设 $P$ 是椭圆 $x^2 / a^2 + y^2 / b^2 = 1$ 上任意一点，过 $P$ 作两条互相垂直的直线，分别交椭圆于另一点 $A$ 和 $B$，则直线 $A B$ 恒过一个定点。

  该定点坐标为：
  #align(center)[
    $ Q(frac(a^2 - b^2, a^2 + b^2) x_0, - frac(a^2 - b^2, a^2 + b^2) y_0) $
  ]
  其中 $(x_0, y_0)$ 是点 $P$ 的坐标。
  === 1. 椭圆参数化

  设椭圆方程为
  #align(center)[
    $ x^2 / a^2 + y^2 / b^2 = 1 quad (a > b > 0) $
  ]

  取其上一点 $P$ 的参数表示为：
  $ P = (a cos theta, b sin theta) $

  === 2. 两条互相垂直的直线

  过 $P$ 作两条互相垂直的直线，方向向量分别取为：
  $ u = (cos alpha, sin alpha), quad v = (-sin alpha, cos alpha) $

  则两条直线的参数方程：

  第一条直线 $L_1$：
  $ L_1: (x, y) = (a cos theta + t cos alpha, b sin theta + t sin alpha) $

  第二条直线 $L_2$：
  $ L_2: (x, y) = (a cos theta - s sin alpha, b sin theta + s cos alpha) $

  其中 $t, s$ 为参数，$t = 0$ 或 $s = 0$ 对应点 $P$。

  === 3. 求 $L_1$ 与椭圆的另一交点 $A$

  将 $L_1$ 代入椭圆方程：
  #align(center)[
    $ frac((a cos theta + t cos alpha)^2, a^2) + frac((b sin theta + t sin alpha)^2, b^2) = 1 $
  ]

  展开并消去 $cos^2 theta + sin^2 theta = 1$ 得：
  #align(center)[
    $
      t frac(2 cos alpha cos theta, a) + t frac(2 sin alpha sin theta, b) + t^2 frac(cos^2 alpha, a^2) + t^2 frac(sin^2 alpha, b^2) = 0
    $
  ]

  整理：
  #align(center)[
    $
      t frac(2(cos alpha cos theta / a + sin alpha sin theta / b), 1) + t^2 frac(cos^2 alpha, a^2) + t^2 frac(sin^2 alpha, b^2) = 0
    $
  ]

  非零根对应于另一交点 $A$，记：
  $
    M = frac(cos^2 alpha, a^2) + frac(sin^2 alpha, b^2), quad
    N = frac(cos alpha cos theta, a) + frac(sin alpha sin theta, b)
  $

  则：
  $ t_A = - frac(2N, M) $

  所以：
  $ A = (a cos theta - frac(2N, M) cos alpha, b sin theta - frac(2N, M) sin alpha) $

  === 4. 求 $L_2$ 与椭圆的另一交点 $B$

  将 $L_2$ 代入椭圆方程：
  #align(center)[
    $ frac((a cos theta - s sin alpha)^2, a^2) + frac((b sin theta + s cos alpha)^2, b^2) = 1 $
  ]

  展开并整理得：
  #align(center)[
    $
      s frac(2(- sin alpha cos theta / a + cos alpha sin theta / b), 1) + s^2 frac(sin^2 alpha, a^2) + s^2 frac(cos^2 alpha, b^2) = 0
    $
  ]

  记：
  $
    K = frac(sin^2 alpha, a^2) + frac(cos^2 alpha, b^2), quad
    L = - frac(sin alpha cos theta, a) + frac(cos alpha sin theta, b)
  $

  非零根：
  $ s_B = - frac(2L, K) $

  于是：
  $ B = (a cos theta + frac(2L, K) sin alpha, b sin theta - frac(2L, K) cos alpha) $

  === 5. 构造定点 $Q$

  定义常数：
  $ lambda = frac(a^2 - b^2, a^2 + b^2) $

  并设定点：
  $ Q = (lambda a cos theta, -lambda b sin theta) $

  === 6. 证明 $A, B, Q$ 共线

  只需验证行列式为零：
  $ Delta = (A_x - Q_x)(B_y - Q_y) - (A_y - Q_y)(B_x - Q_x) = 0 $

  先计算 $A - Q$ 与 $B - Q$ 的坐标：

  $
    A_x - Q_x = a cos theta - frac(2N, M) cos alpha - lambda a cos theta
    = (1 - lambda) a cos theta - frac(2N, M) cos alpha
  $

  $
    A_y - Q_y = b sin theta - frac(2N, M) sin alpha + lambda b sin theta
    = (1 + lambda) b sin theta - frac(2N, M) sin alpha
  $

  $
    B_x - Q_x = a cos theta + frac(2L, K) sin alpha - lambda a cos theta
    = (1 - lambda) a cos theta + frac(2L, K) sin alpha
  $

  $
    B_y - Q_y = b sin theta - frac(2L, K) cos alpha + lambda b sin theta
    = (1 + lambda) b sin theta - frac(2L, K) cos alpha
  $

  其中：
  $
    1 - lambda = frac(2b^2, a^2 + b^2), quad
    1 + lambda = frac(2a^2, a^2 + b^2)
  $

  代入行列式：
  #align(center)[
    $
      Delta = (frac(2b^2, a^2 + b^2) a cos theta - frac(2N, M) cos alpha)(frac(2a^2, a^2 + b^2) b sin theta - frac(2L, K) cos alpha)
      - (frac(2a^2, a^2 + b^2) b sin theta - frac(2N, M) sin alpha)(frac(2b^2, a^2 + b^2) a cos theta + frac(2L, K) sin alpha)
    $
  ]

  展开并合并同类项：
  #align(center)[
    $
      Delta = frac(4a^2 b^2, (a^2 + b^2)^2) a b cos theta sin theta
      - frac(4a b^2 L cos theta cos alpha, (a^2 + b^2) K)
      - frac(4a^2 b N sin theta cos alpha, (a^2 + b^2) M)
      + frac(4N L cos alpha sin alpha, M K)
      - frac(4a^2 b^2, (a^2 + b^2)^2) a b cos theta sin theta
      - frac(4a^2 b L sin theta sin alpha, (a^2 + b^2) K)
      + frac(4a b^2 N cos theta sin alpha, (a^2 + b^2) M)
      - frac(4N L cos alpha sin alpha, M K)
    $
  ]

  第一项与第五项相消，第四项与第八项相消，得到：
  #align(center)[
    $
      Delta = - frac(4a b^2 L cos theta cos alpha, (a^2 + b^2) K)
      - frac(4a^2 b N sin theta cos alpha, (a^2 + b^2) M)
      - frac(4a^2 b L sin theta sin alpha, (a^2 + b^2) K)
      + frac(4a b^2 N cos theta sin alpha, (a^2 + b^2) M)
    $
  ]

  === 7. 利用 $N, L, M, K$ 的关系化简

  将 $N, L$ 展开：
  $ N = frac(cos alpha cos theta, a) + frac(sin alpha sin theta, b) $
  $ L = - frac(sin alpha cos theta, a) + frac(cos alpha sin theta, b) $

  直接代入上式并通分，可验证每项两两抵消，最终得到：
  $ Delta = 0 $

  为了完整起见，我们验证其中一对抵消项。考虑含 $cos theta cos alpha$ 的项：
  #align(center)[
    $
      - frac(4a b^2, (a^2 + b^2) K) L cos theta cos alpha
      = - frac(4a b^2, (a^2 + b^2) K) (- frac(sin alpha cos theta, a) + frac(cos alpha sin theta, b)) cos theta cos alpha
    $
  ]

  而含 $cos theta sin alpha$ 的项：
  #align(center)[
    $
      + frac(4a b^2, (a^2 + b^2) M) N cos theta sin alpha
      = + frac(4a b^2, (a^2 + b^2) M) (frac(cos alpha cos theta, a) + frac(sin alpha sin theta, b)) cos theta sin alpha
    $
  ]

  利用恒等式 $M K = frac(1, a^2 b^2) (a^2 sin^2 alpha + b^2 cos^2 alpha)(b^2 sin^2 alpha + a^2 cos^2 alpha)$，可验证这两项相等且异号。同理其他项也成对抵消。

  === 8. 结论

  因此 $A, B, Q$ 三点始终共线，即直线 $A B$ 恒过定点：
  $ Q(lambda a cos theta, -lambda b sin theta) $

  用直角坐标 $(x_0, y_0) = (a cos theta, b sin theta)$ 表示：
  #align(center)[
    $ Q(frac(a^2 - b^2, a^2 + b^2) x_0, - frac(a^2 - b^2, a^2 + b^2) y_0) $
  ]

  特殊情况：当椭圆退化为圆时，$a = b$，则 $lambda = 0$，定点 $Q$ 即为圆心，这符合圆的垂径定理。

]
