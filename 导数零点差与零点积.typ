#import "template.typ": *

#set document(title: [x ln x 型两零点：差与积的估计])

#template(
  heading2-align: left,
  page-footer: "第 1 页",
  equation-numbering: "(1)",
  reset-page: true,
)[
  = $x ln x$ 型两零点：差与积的估计

  方程 $x ln x = m$ 在 $-1/e < m < 0$ 时有两个根 $x_1 < x_2$。两根的*差*与*积*各有一条整齐的估计：

  $ x_2 - x_1 > 1 + e m, quad x_1 x_2 > m^2. $

  差是"和差型"的量，用切线、割线把两个根分别夹住；积是"乘积型"的量，用比值换元
  $t = x_2 slash x_1$ 化成一元不等式。

  == 问题与预备

  #theorem[
    设 $f(x) = x ln x$（$x > 0$），方程 $f(x) = m$ 有两个实根 $x_1 < x_2$。则

    $ -1/e < m < 0, quad 0 < x_1 < 1/e < x_2 < 1, $

    且

    $ x_2 - x_1 > 1 + e m, quad x_1 x_2 > m^2. $
  ] <thm:main>

  由 $f'(x) = 1 + ln x$ 知：$f$ 在 $(0, 1/e)$ 上递减、在 $(1/e, +oo)$ 上递增，最小值
  $f(1/e) = -1/e$；又 $x -> 0^+$ 时 $f(x) -> 0^-$，$f(1) = 0$，$x > 1$ 时 $f(x) > 0$。
  所以方程有两个根时必有 $-1/e < m < 0$，且一根在 $(0, 1/e)$、另一根在 $(1/e, 1)$。

  == 结论一：$x_2 - x_1 > 1 + e m$

  难点是*右根的下界*。常用的 $ln x >= 1 - 1/x$ 只能给出

  $ m = x_2 ln x_2 >= x_2 - 1 quad => quad x_2 <= 1 + m, $

  这是上界，方向反了。要下界，得在 $[1/e, 1]$ 上找一条位于曲线*上方*的割线。

  === 证法一：两条割线

  在 $[1/e, 1]$ 上，曲线在过 $(1/e, -1/e)$ 与 $(1, 0)$ 的割线下方：

  $ x ln x < (x - 1)/(e - 1), quad 1/e < x < 1. $

  #proof[
    令 $h(x) = (x - 1)/(e - 1) - x ln x$，则 $h(1/e) = h(1) = 0$，且

    $ h'(x) = 1/(e - 1) - 1 - ln x $

    严格递减；又 $h'(1/e) = 1/(e - 1) > 0$、$h'(1) = (2 - e)/(e - 1) < 0$。
    故 $h$ 在 $[1/e, 1]$ 上先增后减、两端为零，于是在区间内部恒有 $h(x) > 0$。
  ]

  取 $x = x_2$，得

  $ m = x_2 ln x_2 < (x_2 - 1)/(e - 1) quad => quad x_2 > 1 + (e - 1) m. $

  在 $(0, 1/e)$ 上，曲线在过原点的割线 $y = -x$ 下方，因为

  $ x ln x + x = x (1 + ln x) < 0 quad (0 < x < 1/e), $

  即 $x ln x < -x$。取 $x = x_1$：

  $ m = x_1 ln x_1 < -x_1 quad => quad x_1 < -m. $

  两式相减即得

  $ x_2 - x_1 > 1 + (e - 1) m + m = 1 + e m. $

  #v(0.3em)

  #align(center)[
    #block(width: 330pt, height: 200pt)[
      #let E = calc.exp(1)
      #let fx(x) = x * calc.ln(x)
      #let X(x) = 28pt + x * (250pt / 1.05)
      #let Y(y) = 12pt + (0.03 - y) * (165pt / 0.45)
      #let seg(p, q, stroke: 0.7pt) = {
        let mx = calc.min(p.at(0), q.at(0))
        let my = calc.min(p.at(1), q.at(1))
        place(dx: mx, dy: my)[
          #line(
            start: (p.at(0) - mx, p.at(1) - my),
            end: (q.at(0) - mx, q.at(1) - my),
            stroke: stroke,
          )
        ]
      }
      #let mark(p, r: 1.8pt, fill: black) = place(dx: p.at(0) - r, dy: p.at(1) - r)[
        #circle(radius: r, fill: fill)
      ]
      // 坐标轴
      #seg((X(0), Y(0)), (X(1.05), Y(0)), stroke: 0.8pt)
      #seg((X(0), Y(-0.42)), (X(0), Y(0.03)), stroke: 0.8pt)
      // 曲线 $y = x ln x$
      #for i in range(0, 130) [
        #let a = 0.0015 + i * 0.0077
        #let b = a + 0.0077
        #seg((X(a), Y(fx(a))), (X(b), Y(fx(b))), stroke: 1.1pt + rgb("#1a6fb5"))
      ]
      // 两条割线
      #seg((X(0), Y(0)), (X(1 / E), Y(-1 / E)), stroke: 0.8pt + rgb("#c7362e"))
      #seg((X(1 / E), Y(-1 / E)), (X(1), Y(0)), stroke: 0.8pt + rgb("#c7362e"))
      // 水平线 $y = m$（取 $m = -0.3$）
      #seg((X(0), Y(-0.3)), (X(1), Y(-0.3)), stroke: (paint: gray, dash: "dashed", thickness: 0.5pt))
      #mark((X(1 / E), Y(-1 / E)))
      #mark((X(0.16841), Y(-0.3)), fill: rgb("#c7362e"))
      #mark((X(0.61299), Y(-0.3)), fill: rgb("#c7362e"))
      // 横线与右割线的交点 A：横坐标 1 + (e-1)m
      #place(dx: X(0.48456) - 1.6pt, dy: Y(-0.3) - 1.6pt)[
        #circle(radius: 1.6pt, fill: white, stroke: 0.7pt + rgb("#c7362e"))
      ]
      #place(dx: X(0.16841) - 5pt, dy: Y(0) + 2pt)[#text(size: 8.5pt)[$x_1$]]
      #place(dx: X(0.61299) - 5pt, dy: Y(0) + 2pt)[#text(size: 8.5pt)[$x_2$]]
      #place(dx: X(0.48456) - 3pt, dy: Y(-0.3) - 14pt)[#text(size: 8.5pt)[$A$]]
      #place(dx: X(1) - 2pt, dy: Y(0) + 2pt)[#text(size: 8.5pt)[$1$]]
      #place(dx: X(1 / E) - 10pt, dy: Y(0) + 2pt)[#text(size: 8.5pt)[$1/e$]]
      #place(dx: X(0) - 13pt, dy: Y(-0.3) - 5pt)[#text(size: 8.5pt)[$m$]]
      #place(dx: X(1 / E) + 4pt, dy: Y(-1 / E) + 2pt)[#text(size: 8.5pt)[$P$]]
      #place(dx: X(1.05) + 2pt, dy: Y(0) - 5pt)[#text(size: 8.5pt)[$x$]]
      #place(dx: X(0) - 11pt, dy: Y(0.03) - 2pt)[#text(size: 8.5pt)[$y$]]
    ]
  ]

  #align(center)[
    #text(size: 9pt, fill: gray)[
      图：两条割线在 $P(1/e, -1/e)$ 相接。左割线 $y = -x$ 管住左根，右割线 $y = (x - 1)/(e - 1)$ 管住右根；
      横线 $y = m$ 与右割线的交点为 $A$，其横坐标 $1 + (e - 1) m$ 在 $x_2$ 左侧，这正是 $x_2 > 1 + (e - 1) m$。
    ]
  ]

  === 证法二：换元 $x = e^(-t)$

  令 $t = ln(1/x) > 0$，则 $x = e^(-t)$，$f(x) = -t e^(-t)$。记 $k = -m in (0, 1/e)$，方程化为

  $ t e^(-t) = k. $

  函数 $g(t) = t e^(-t)$ 在 $(0, 1)$ 上递增、在 $(1, +oo)$ 上递减，最大值 $g(1) = 1/e$，故

  $ t_2 < 1 < t_1, quad x_1 = e^(-t_1), quad x_2 = e^(-t_2). $

  由 $t_1 e^(-t_1) = k$ 得 $x_1 = k/t_1 < k$。

  另一方面，需要指数函数的弦线不等式

  $ e^t <= 1 + (e - 1) t, quad 0 <= t <= 1. $

  #proof[
    令 $q(t) = 1 + (e - 1) t - e^t$，则 $q(0) = q(1) = 0$，$q'(t) = (e - 1) - e^t$ 严格递减，
    且 $q'(0) = e - 2 > 0$、$q'(1) = -1 < 0$，故 $q$ 先增后减，$q(t) >= 0$。
  ]

  取 $t = t_2$（$0 < t_2 < 1$），两边乘以 $e^(-t_2)$：

  $ 1 <= e^(-t_2) + (e - 1) t_2 e^(-t_2) = e^(-t_2) + (e - 1) k, $

  即 $e^(-t_2) >= 1 - (e - 1) k$。于是

  $ x_2 - x_1 > e^(-t_2) - k >= 1 - (e - 1) k - k = 1 - e k = 1 + e m. $

  === 一个常见误区

  #remark[
    $ln x >= 1 - 1/x$ 的切线在曲线*下方*，只能推出 $x_2 <= 1 + m$；
    要下界必须在曲线*上方*找线（割线）。这就是"切线放缩"在零点差问题里常常方向不对的原因。
  ]

  == 结论二：$x_1 x_2 > m^2$

  先做一步变形。由 $m = x_1 ln x_1 = x_2 ln x_2$ 得

  $ m^2 = (x_1 ln x_1)(x_2 ln x_2) = x_1 x_2 dot ln x_1 ln x_2, $

  所以原结论等价于 $ln x_1 ln x_2 < 1$。

  #proof[
    先证一个事实：对 $t > 1$，有 $ln t < (t - 1)/sqrt(t)$——令 $phi(t) = (t - 1)/sqrt(t) - ln t$，则 $phi(1) = 0$，且 $phi'(t) = (sqrt(t) - 1)^2 slash (2 t sqrt(t)) >= 0$，故 $t > 1$ 时 $phi(t) > 0$。

    回到本题。设 $t = x_2 slash x_1 > 1$，则 $x_2 = t x_1$。代入 $x_1 ln x_1 = x_2 ln x_2$：

    $ ln x_1 = t ln t + t ln x_1 quad => quad ln x_1 = -(t ln t)/(t - 1), $

    从而 $ln x_2 = ln x_1 + ln t = -(ln t)/(t - 1)$。两式相乘：

    $ ln x_1 ln x_2 = (t ln^2 t)/((t - 1)^2). $

    由 $t ln^2 t < (t - 1)^2$ 得 $ln x_1 ln x_2 < 1$，即 $x_1 x_2 > m^2$。
  ]

  #remark[
    两条结论互不蕴含：差结论管"横向距离"，积结论管"两根之积"。
    方法分工也很清楚——和差型用切线/割线夹逼，乘积型用比值换元。
    两个常数都是最优的：$m -> -1/e^+$ 时 $x_1, x_2 -> 1/e$，于是 $x_1 x_2 slash m^2 -> 1$，
    且 $x_2 - x_1$ 与 $1 + e m$ 同时趋于 $0$——积结论的常数 $1$ 不能放大，差结论的常数 $e$ 不能缩小。
  ]

  == 方法总结

  #table(
    columns: (auto, auto, 1fr),
    align: (left, left, left),
    stroke: 0.4pt,
    inset: 5pt,
    [*目标*], [*工具*], [*关键不等式*],
    [两根之差], [两条割线], [$x ln x < (x - 1)/(e - 1)$（右根）、$x ln x < -x$（左根）],
    [两根之积], [比值换元 $t = x_2 slash x_1$], [$ln t < (t - 1)/sqrt(t)$，等价于 $t ln^2 t < (t - 1)^2$],
  )
]
