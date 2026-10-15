#import "template.typ": *

// ============================================================
// 2026 年 10 月 15 日 椭圆与圆一题多解
//   题目（《三点一线·高考一轮总复习 数学》变式 2）：
//     椭圆 W: x²/16 + y²/4 = 1 的左顶点 A 在圆 O: x² + y² = 16 上，
//     P 是 W 上不同于 A 的点，直线 AP 与圆 O 的另一交点为 Q，
//     问是否存在 P 使 |PQ|/|AP| = 3。
//   结论：不存在（3 是取不到的上确界）。
//   四种解法：设斜率+韦达 / 设点+定比分点 / 夹角极坐标 / 比例系数当参数。
//   注意（本仓已踩过的坑）：
//     · 分式里不要写 |u|/|v|，竖线会与分数线粘连，必须写 abs(u)/abs(v)；
//     · 数学模式内不许直接写中文，要 #cjk[...]；
//     · 箭头写 arrow(A B)（不是 \arrow），交集写 inter（不是 sect），
//       希腊字母不加反斜杠（写 lambda、alpha）。
// ============================================================

#set document(title: [2026年10月15日椭圆与圆一题多解])

#template(heading2-align: left, page-footer: "第 1 页")[

= 题目

（《三点一线·高考一轮总复习 数学》变式 2）

已知椭圆 $W: x^2/16 + y^2/4 = 1$，其左顶点 $A$ 在圆 $O: x^2 + y^2 = 16$ 上。点 $P$ 为 $W$ 上不同于 $A$ 的点，直线 $A P$ 与圆 $O$ 的另一个交点为 $Q$。是否存在点 $P$，使得 $abs(P Q)/abs(A P) = 3$？若存在，求出点 $P$ 的坐标；若不存在，说明理由（一题多解）。

#align(center)[
  #block(breakable: false, width: 205pt, height: 202pt)[
    // 圆 O：半径 4 个单位 = 88pt（比例 22pt / 单位），中心 (100, 100)
    #place(dx: 12pt, dy: 12pt, ellipse(width: 176pt, height: 176pt, stroke: 0.9pt))
    // 椭圆 W：半轴 4、2 个单位 = 88pt、44pt，与圆在 (±4, 0) 相碰
    #place(dx: 12pt, dy: 56pt, ellipse(width: 176pt, height: 88pt, stroke: 0.9pt))
    // 两条坐标轴
    #place(dx: 4pt, dy: 100pt, line(length: 197pt, stroke: 0.8pt))
    #place(dx: 100pt, dy: 6pt, line(length: 190pt, angle: 90deg, stroke: 0.8pt))
    // 直线 AP：取 k = 1，A(-4,0) → Q(0,4)
    #place(dx: 12pt, dy: 100pt, line(end: (88pt, -88pt), stroke: (paint: rgb("#1f6feb"), thickness: 1pt)))
    // 点 A、P、Q 与原点 O
    #place(dx: 10pt, dy: 98pt, circle(radius: 2.2pt, fill: rgb("#c7362e")))
    #place(dx: 45pt, dy: 62.6pt, circle(radius: 2.2pt, fill: rgb("#c7362e")))
    #place(dx: 98pt, dy: 10pt, circle(radius: 2.2pt, fill: rgb("#c7362e")))
    #place(dx: 98.4pt, dy: 98.4pt, circle(radius: 1.6pt, fill: black))
    // 标签
    #place(dx: 2pt, dy: 104pt)[$A$]
    #place(dx: 37pt, dy: 55pt)[$P$]
    #place(dx: 105pt, dy: 5pt)[$Q$]
    #place(dx: 91pt, dy: 104pt)[$O$]
    #place(dx: 190pt, dy: 104pt)[$x$]
    #place(dx: 104pt, dy: 2pt)[$y$]
  ]
  #text(size: 9pt)[图 1：原题配置（此处取 $k = 1$ 的一组实例：$P(-2.4, 1.6)$、$Q(0, 4)$）。圆 $O$ 与椭圆 $W$ 在 $(plus.minus 4, 0)$ 处相碰，$W$ 整个落在圆内，故 $P$ 落在 $A$、$Q$ 之间。]
]

= 关键观察（四种解法共用）

（1）椭圆 $W$ 上的点都可写成 $(4 cos theta, 2 sin theta)$，于是
$
x^2 + y^2 = 16 cos^2 theta + 4 sin^2 theta = 16 - 12 sin^2 theta <= 16,
$
即 $W$ 整体落在圆 $O$ 内部，只在 $(plus.minus 4, 0)$ 两点处与圆相碰。

（2）于是从 $A$ 出发的射线先遇到椭圆上的 $P$、再遇到圆上的 $Q$，$P$ 严格落在 $A$、$Q$ 之间，所以
$
abs(A Q) = abs(A P) + abs(P Q).
$

（3）因此题目条件等价于
$
abs(P Q)/abs(A P) = 3 quad <==> quad abs(A Q)/abs(A P) = 4.
$

下面四种解法都归结为同一件事：*证明这个 $4$ 取不到*。

= 解答（四种解法）

=== 解法 1 设斜率 + 韦达定理（通法）

设 $A P: y = k(x + 4)$。$A P$ 竖直时与圆相切于 $A$，没有第二个交点，故 $k$ 为有限实数。

与椭圆 $x^2 + 4 y^2 = 16$ 联立：
$
x^2 + 4 k^2 (x + 4)^2 = 16 quad=>quad (1 + 4 k^2) x^2 + 32 k^2 x + 64 k^2 - 16 = 0.
$
一根是 $x_A = -4$，由韦达定理 $x_A + x_P = -(32 k^2)/(1 + 4 k^2)$，故
$
x_P = -(32 k^2)/(1 + 4 k^2) + 4 = (4 - 16 k^2)/(1 + 4 k^2),
$
故
$
abs(A P) = sqrt(1 + k^2) (x_P + 4) = sqrt(1 + k^2) dot 8/(1 + 4 k^2).
$

与圆 $x^2 + y^2 = 16$ 联立：
$
x^2 + k^2 (x + 4)^2 = 16 quad=>quad (1 + k^2) x^2 + 8 k^2 x + 16 k^2 - 16 = 0,
$
一根仍是 $x = -4$，另一根
$
x_Q = (4 (1 - k^2))/(1 + k^2), quad abs(A Q) = sqrt(1 + k^2) (x_Q + 4) = 8/sqrt(1 + k^2).
$

两式相除：
$
abs(A Q)/abs(A P) = (1 + 4 k^2)/(1 + k^2) = 4 - 3/(1 + k^2) < 4
$
对一切有限 $k$ 严格成立（$k$ 越大越接近 $4$，$k -> infinity$ 时才趋于 $4$）。所以 $abs(P Q)/abs(A P) = 3 - 3/(1 + k^2) < 3$，*不存在这样的点 $P$*。

#block(breakable: false)[
  #line(length: 100%, stroke: 0.5pt + gray)

  === 解法 2 设点 + 定比分点（比值 3 直接代入）
]

设 $P(x_1, y_1)$。若所求成立，由关键观察（3）有 $abs(A Q) = 4 abs(A P)$；又 $A$、$P$、$Q$ 共线且同向，故 $arrow(A Q) = 4 arrow(A P)$，即
$
Q = A + 4 (P - A) = (-4, 0) + 4 (x_1 + 4, y_1) = (4 x_1 + 12, 4 y_1).
$

$P$ 在 $W$ 上、$Q$ 在圆 $O$ 上，两方程联立：
$
cases(
  x_1^2 + 4 y_1^2 = 16,
  (4 x_1 + 12)^2 + (4 y_1)^2 = 16,
)
$
第二式两边同除以 $16$ 得 $(x_1 + 3)^2 + y_1^2 = 1$，即 $x_1^2 + y_1^2 = -6 x_1 - 8$。与第一式相减：
$
3 y_1^2 = 24 + 6 x_1 quad=>quad y_1^2 = 8 + 2 x_1.
$
代回第一式：$x_1^2 + 4(8 + 2 x_1) = 16$，即
$
x_1^2 + 8 x_1 + 16 = 0 quad=>quad (x_1 + 4)^2 = 0.
$
只能有 $x_1 = -4$、$y_1 = 0$，即 $P = A$ —— 与「$P$ 是 $W$ 上不同于 $A$ 的点」矛盾（此时 $Q = A$，直线 $A P$ 也不存在）。故*不存在*。

#block(breakable: false)[
  #line(length: 100%, stroke: 0.5pt + gray)

  === 解法 3 夹角 / 极坐标（比值就是 $3 sin^2 alpha$）
]

设直线 $A P$ 与 $x$ 轴正方向成角 $alpha$（$alpha in (0, pi)$，且 $k = tan alpha$）。以 $A$ 为极点、$x$ 轴正方向为极轴：

*圆中的弦长*：$abs(A Q) = 2 R cos alpha = 8 cos alpha$。

*椭圆中的弦长*：把 $(x, y) = (-4 + t cos alpha, t sin alpha)$ 代入 $x^2 + 4 y^2 = 16$：
$
(-4 + t cos alpha)^2 + 4 t^2 sin^2 alpha = 16
quad=>quad t dot (-8 cos alpha + t (cos^2 alpha + 4 sin^2 alpha)) = 0,
$
舍去 $t = 0$（就是点 $A$），得
$
t = (8 cos alpha)/(cos^2 alpha + 4 sin^2 alpha) = (8 cos alpha)/(1 + 3 sin^2 alpha) = abs(A P).
$
于是
$
abs(A Q)/abs(A P) = 1 + 3 sin^2 alpha = 4 - 3 cos^2 alpha <= 4,
$
等号当且仅当 $cos alpha = 0$，即 $A P$ 竖直（直线 $x = -4$）：这时直线与椭圆、圆都只交于 $A$，$P$、$Q$ 均不存在。

所以 $abs(A Q)/abs(A P) < 4$ 恒成立，进而
$
abs(P Q)/abs(A P) = 3 sin^2 alpha < 3,
$
*不存在*。

#block(breakable: false)[
  #line(length: 100%, stroke: 0.5pt + gray)

  === 解法 4 设点 + 参数化（把 $Q$ 用 $P$ 表出，比例系数留作 $lambda$）
]

*设点*：设 $P(x_1, y_1)$（$P$ 在椭圆 $W$ 上）。

*把 $Q$ 用 $P$ 表出*：由 $arrow(A Q) = lambda arrow(A P)$（即 $abs(A Q) = lambda abs(A P)$，对应 $abs(P Q)/abs(A P) = lambda - 1$；本题要的正是 $lambda = 4$）得
$
Q = A + lambda (P - A) = (-4 + lambda (x_1 + 4), lambda y_1).
$

*代入两条曲线*：$P$ 在椭圆上、$Q$ 在圆上，
$
cases(
  x_1^2 + 4 y_1^2 = 16,
  (-4 + lambda (x_1 + 4))^2 + (lambda y_1)^2 = 16,
)
$
为让两式对齐，作平移 $u = x_1 + 4$（就是 $A$ 到 $P$ 的水平位移），即 $x_1 = u - 4$，两式化为
$
cases(
  u^2 + 4 y_1^2 = 8 u,
  lambda^2 (u^2 + y_1^2) = 8 lambda u,
)
$
第二式即 $lambda (u^2 + y_1^2) = 8 u$。由第一式得 $y_1^2 = 2 u - u^2/4$，故 $u^2 + y_1^2 = 3/4 u^2 + 2 u$；代入得
$
lambda (3/4 u^2 + 2 u) = 8 u quad=>quad u [lambda (3/4 u + 2) - 8] = 0.
$

- $u = 0$：就是 $P = A$，不合题意（无论 $lambda$ 取多少都存在这个「假解」）；
- $u != 0$：$lambda (3/4 u + 2) = 8$，即
  $
  u = (8 (4 - lambda))/(3 lambda), quad lambda != 4.
  $

所以 $lambda != 4$ 时总有唯一的合法解；而 $lambda = 4$（本题所在）时中括号化为 $3 u$，方程退化成 $3 u^2 = 0$，只剩下 $u = 0$ —— *非退化解消失，比值 $3$ 取不到*。

顺带可知：取 $lambda = 3$（对应比值 $2$）得 $u = 8/9$，即
$
P(-28/9, plus.minus 8 sqrt(2)/9),
$
这组点确实存在，但它们的比值是 $2$ 而不是 $3$。

= 四法对照

#table(
  columns: (auto, 25%, 1fr, auto),
  align: (center, left, left, center),
  stroke: 0.4pt,
  inset: 6pt,
  [*解法*], [*切入点*], [*关键式子*], [*结论*],
  [1], [设斜率 $k$], [两条弦长之比 $abs(A Q)/abs(A P) = (1 + 4 k^2)/(1 + k^2) = 4 - 3/(1 + k^2)$], [恒 $< 4$],
  [2], [设 $P(x_1, y_1)$，定比分点表出 $Q$], [两曲线联立后化为 $(x_1 + 4)^2 = 0$，只能有 $P = A$], [只剩 $P = A$],
  [3], [设夹角 $alpha$（极坐标）], [$abs(A Q)/abs(A P) = 1 + 3 sin^2 alpha <= 4$，等号只在 $alpha = 90degree$ 的退化情形], [等号仅退化],
  [4], [设点 $P(x_1, y_1)$，$Q$ 用 $P$ 表出（系数留作 $lambda$）], [同上设点代入两曲线得 $u [lambda (3/4 u + 2) - 8] = 0$（$u = x_1 + 4$），$lambda = 4$ 时退化为 $3 u^2 = 0$], [非退化解消失],
)

四种解法切入点不同，落点完全一致：$abs(A Q)/abs(A P)$ 的上确界是 $4$，而 $4$ 只有在 $A P$ 竖直这一退化位置才「够得着」，那时 $P$、$Q$ 都不存在。所以比值 $abs(P Q)/abs(A P)$ 的上确界是 $3$，同样取不到。

#remark(title: "位似视角：为什么恰好是 3")[
  把 $W$ 以 $A$ 为中心、按比 $lambda$ 位似放大，像椭圆的中心在 $(4 lambda - 4, 0)$、半轴是 $4 lambda$ 与 $2 lambda$（长轴仍水平）；点 $Q$ 必须同时落在它与圆 $O$ 上。

  $lambda = 4$ 时像椭圆是中心 $(12, 0)$、半轴 $16$ 与 $8$ 的椭圆。它到 $O$ 的最近点恰好是 $A(-4, 0)$，距离 $4$ 正好等于圆的半径 —— 两曲线在 $A$ 处*内切*（图 2），除 $A$ 外再无公共点；而 $A$ 对应 $P = A$，不合题意。

  #align(center)[
    #block(breakable: false, width: 290pt, height: 140pt)[
      // 比例 6pt / 单位，中心 O 在 (100, 70)
      // 圆 O：半径 4 个单位 = 24pt
      #place(dx: 76pt, dy: 46pt, ellipse(width: 48pt, height: 48pt, stroke: 0.9pt))
      // W₄：中心 (12,0) → (172,70)，半轴 16、8 个单位 = 96pt、48pt
      #place(dx: 76pt, dy: 22pt, ellipse(width: 192pt, height: 96pt, stroke: 0.9pt))
      // 坐标轴
      #place(dx: 8pt, dy: 70pt, line(length: 272pt, stroke: 0.8pt))
      #place(dx: 100pt, dy: 6pt, line(length: 128pt, angle: 90deg, stroke: 0.8pt))
      // 切点 A(-4,0) → (76,70)，它同时是两者的最左点
      #place(dx: 74pt, dy: 68pt, circle(radius: 2.2pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 64pt, dy: 76pt)[$A$]
      #place(dx: 178pt, dy: 8pt)[$W_4$]
      #place(dx: 90pt, dy: 74pt)[$O$]
      #place(dx: 248pt, dy: 74pt)[$x$]
      #place(dx: 104pt, dy: 2pt)[$y$]
    ]
    #text(size: 9pt)[图 2：$lambda = 4$ 的位似像 $W_4$（中心 $(12, 0)$，半轴 $16$、$8$）与圆 $O$ 内切于 $A$。]
  ]

  换 $lambda$ 看更清楚：$lambda$ 从 $4$ 略减小（例如 $lambda = 3$），像椭圆会「切进」圆内一点，与圆交出两个点；比值 $lambda - 1$ 随 $lambda$ 增大而增大，$lambda -> 4^-$ 时趋近 $3$ 却永远取不到 —— *$3$ 是上确界，不是最大值*。
]

]
