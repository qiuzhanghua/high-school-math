#import "template.typ": *

#set document(title: [导数与单调性])

#template(heading2-align: left, page-footer: "第 1 页")[
  #set math.equation(numbering: "(1)")

  == 【1】由 $f(x)$ 的图象判断 $f'(x)$ 的图象

  *【1】* 设函数 $f(x)$ 在定义域内可导，$y = f(x)$ 的图象如图所示，则导函数 $y = f'(x)$ 的图象可能是（#h(0.8em)）

  #v(0.4em)

  #align(center)[
    #block(width: 300pt, height: 235pt)[
      #let u = 46pt
      #let X(x) = 150pt + x * u
      #let Y(y) = 150pt - y * u
      #let seg(a, b, stroke: 0.8pt) = place(dx: a.at(0), dy: a.at(1))[
        #line(end: (b.at(0) - a.at(0), b.at(1) - a.at(1)), stroke: stroke)
      ]
      // 坐标轴与箭头
      #seg((X(-1.4), Y(0)), (X(2.2), Y(0)))
      #seg((X(2.2), Y(0)), (X(2.2) - 7pt, Y(0) - 4pt))
      #seg((X(2.2), Y(0)), (X(2.2) - 7pt, Y(0) + 4pt))
      #seg((X(0), Y(-1.25)), (X(0), Y(2.5)))
      #seg((X(0), Y(2.5)), (X(0) - 4pt, Y(2.5) + 8pt))
      #seg((X(0), Y(2.5)), (X(0) + 4pt, Y(2.5) + 8pt))
      // 左支：单调上升、趋于竖直渐近线 x = 0
      #let lpts = range(0, 56).map(i => {
        let x = -1.4 + i * 0.02
        (X(x), Y(1 / (-x) - 1))
      })
      #place(dx: 0pt, dy: 0pt)[
        #curve(curve.move(lpts.first()), ..lpts.slice(1).map(p => curve.line(p)), stroke: 0.9pt)
      ]
      // 右支：先减（到极小值）、再增（到极大值）、最后减
      #place(dx: 0pt, dy: 0pt)[
        #curve(
          curve.move((X(0.06), Y(2.45))),
          curve.cubic((X(0.10), Y(1.2)), (X(0.30), Y(-0.85)), (X(0.75), Y(-0.85))),
          curve.cubic((X(1.10), Y(-0.85)), (X(1.25), Y(1.5)), (X(1.60), Y(1.5))),
          curve.cubic((X(1.95), Y(1.5)), (X(2.10), Y(0.4)), (X(2.15), Y(-1.15))),
          stroke: 0.9pt,
        )
      ]
      // 标注
      #place(dx: X(2.2) + 3pt, dy: Y(0) - 13pt)[$x$]
      #place(dx: X(0) + 5pt, dy: Y(2.5) - 15pt)[$y$]
      #place(dx: X(0) + 3pt, dy: Y(0) + 4pt)[$O$]
    ]
  ]

  #v(0.3em)

  #let minigraph(left, right, label) = block(width: 130pt, height: 108pt)[
    #let u = 24pt
    #let X(x) = 44pt + x * u
    #let Y(y) = 66pt - y * u
    #let seg(a, b, stroke: 0.7pt) = place(dx: a.at(0), dy: a.at(1))[
      #line(end: (b.at(0) - a.at(0), b.at(1) - a.at(1)), stroke: stroke)
    ]
    #seg((X(-1.05), Y(0)), (X(1.45), Y(0)))
    #seg((X(1.45), Y(0)), (X(1.45) - 6pt, Y(0) - 3.5pt))
    #seg((X(1.45), Y(0)), (X(1.45) - 6pt, Y(0) + 3.5pt))
    #seg((X(0), Y(-0.9)), (X(0), Y(1.15)))
    #seg((X(0), Y(1.15)), (X(0) - 3.5pt, Y(1.15) + 7pt))
    #seg((X(0), Y(1.15)), (X(0) + 3.5pt, Y(1.15) + 7pt))
    #place(dx: 0pt, dy: 0pt)[
      #if left == "pos" {
        curve(
          curve.move((X(-1.0), Y(0.02))),
          curve.cubic((X(-0.6), Y(0.05)), (X(-0.35), Y(0.1)), (X(-0.18), Y(0.55))),
          curve.cubic((X(-0.12), Y(0.75)), (X(-0.08), Y(1.0)), (X(-0.05), Y(1.18))),
          stroke: 0.8pt,
        )
      } else {
        curve(
          curve.move((X(-1.0), Y(-0.28))),
          curve.cubic((X(-0.78), Y(-0.24)), (X(-0.62), Y(-0.18)), (X(-0.5), Y(0.05))),
          curve.cubic((X(-0.35), Y(0.35)), (X(-0.15), Y(0.9)), (X(-0.05), Y(1.18))),
          stroke: 0.8pt,
        )
      }
    ]
    #place(dx: 0pt, dy: 0pt)[
      #if right == "hump" {
        curve(
          curve.move((X(0.05), Y(-0.35))),
          curve.cubic((X(0.15), Y(0.2)), (X(0.3), Y(0.75)), (X(0.62), Y(0.75))),
          curve.cubic((X(0.95), Y(0.75)), (X(1.1), Y(0.0)), (X(1.35), Y(-0.8))),
          stroke: 0.8pt,
        )
      } else {
        curve(
          curve.move((X(0.05), Y(0.8))),
          curve.cubic((X(0.15), Y(0.2)), (X(0.3), Y(-0.75)), (X(0.62), Y(-0.75))),
          curve.cubic((X(0.95), Y(-0.75)), (X(1.1), Y(0.1)), (X(1.35), Y(0.8))),
          stroke: 0.8pt,
        )
      }
    ]
    #place(dx: X(1.45) + 2pt, dy: Y(0) - 11pt)[$x$]
    #place(dx: X(0) + 4pt, dy: Y(1.15) - 12pt)[$y$]
    #place(dx: X(0) + 2pt, dy: Y(0) + 3pt)[$O$]
    #place(dx: 2pt, dy: 88pt)[#text(weight: "bold")[#label.]]
  ]

  #grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    gutter: 2pt,
    minigraph("pos", "hump", "A"),
    minigraph("pos", "valley", "B"),
    minigraph("cross", "valley", "C"),
    minigraph("cross", "hump", "D"),
  )

  === 解析

  读图：$y = f(x)$ 的图象在 $y$ 轴左侧自左下方向右上方单调上升，且越来越陡，趋于竖直渐近线 $x = 0$；在 $y$ 轴右侧的图象先下降、再上升、最后又下降，即 $f(x)$ 在 $x > 0$ 上先减、后增、再减，先有极小值点、后有极大值点。

  - 当 $x < 0$ 时，$f(x)$ 单调递增，故 $f'(x) > 0$，$y = f'(x)$ 的图象应始终在 $x$ 轴上方，且 $x -> 0^-$ 时 $f'(x) -> +oo$；
  - 当 $x > 0$ 时，$f'(x)$ 的符号依次为 $-$、$+$、$-$：在极小值点处 $f'(x)$ 由负变正（图象自下而上穿过 $x$ 轴），在极大值点处 $f'(x)$ 由正变负（图象自上而下穿过 $x$ 轴）。

  所以 $y = f'(x)$ 的图象应为：$y$ 轴左侧在 $x$ 轴上方且向右趋于 $+oo$；$y$ 轴右侧从 $x$ 轴下方升起，达到一个正的峰值后再降回 $x$ 轴下方，呈"先升后降"的形状。

  对照选项：

  - C、D 的图象在 $y$ 轴左侧有一段位于 $x$ 轴下方（即 $f'(x) < 0$），说明 $f(x)$ 在 $x < 0$ 上会先减后增，与题图中 $f(x)$ 在 $x < 0$ 上单调递增矛盾，排除；
  - B 的图象在 $y$ 轴右侧“先降后升”（"U" 形），说明 $f'(x)$ 先正后负再正，即 $f(x)$ 在 $x > 0$ 上先增后减再增（先极大值点、后极小值点），与题图先极小值点、后极大值点相反，排除；
  - A 的图象左侧在 $x$ 轴上方且趋于 $+oo$，右侧先升后降，与上述分析一致。

  故选 *#text(fill: rgb("#c7362e"))[A]*。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 【2】由 $f'(x)$ 的图象判断 $f(x)$ 的图象

  *【2】* 设 $f'(x)$ 是函数 $f(x)$ 的导函数，$y = f'(x)$ 的图象如下图所示，则函数 $f(x)$ 的图象最可能是（#h(0.8em)）

  #v(0.4em)

  #align(center)[
    #block(width: 290pt, height: 215pt)[
      #let u = 44pt
      #let X(x) = 105pt + x * u
      #let Y(y) = 140pt - y * u
      #let seg(a, b, stroke: 0.8pt) = place(dx: a.at(0), dy: a.at(1))[
        #line(end: (b.at(0) - a.at(0), b.at(1) - a.at(1)), stroke: stroke)
      ]
      #seg((X(-0.25), Y(0)), (X(3.45), Y(0)))
      #seg((X(3.45), Y(0)), (X(3.45) - 7pt, Y(0) - 4pt))
      #seg((X(3.45), Y(0)), (X(3.45) - 7pt, Y(0) + 4pt))
      #seg((X(0), Y(-1.15)), (X(0), Y(2.75)))
      #seg((X(0), Y(2.75)), (X(0) - 4pt, Y(2.75) + 8pt))
      #seg((X(0), Y(2.75)), (X(0) + 4pt, Y(2.75) + 8pt))
      // 抛物线 y = 2.8 (x - 1)(x - 2)
      #let pp = range(0, 86).map(i => {
        let x = 0.45 + i * 0.025
        (X(x), Y(2.8 * (x - 1) * (x - 2)))
      })
      #place(dx: 0pt, dy: 0pt)[
        #curve(curve.move(pp.first()), ..pp.slice(1).map(p => curve.line(p)), stroke: 0.9pt)
      ]
      #place(dx: X(1) - 3pt, dy: Y(0) + 4pt)[$1$]
      #place(dx: X(2) - 3pt, dy: Y(0) + 4pt)[$2$]
      #place(dx: X(3.45) + 3pt, dy: Y(0) - 13pt)[$x$]
      #place(dx: X(0) + 5pt, dy: Y(2.75) - 15pt)[$y$]
      #place(dx: X(0) + 3pt, dy: Y(0) + 4pt)[$O$]
    ]
  ]

  #v(0.3em)

  #let optgraph(style, label) = block(width: 108pt, height: 116pt)[
    #let u = 17pt
    #let X(x) = 50pt + x * u
    #let Y(y) = 76pt - y * u
    #let seg(a, b, stroke: 0.7pt) = place(dx: a.at(0), dy: a.at(1))[
      #line(end: (b.at(0) - a.at(0), b.at(1) - a.at(1)), stroke: stroke)
    ]
    #let dash(a, b) = seg(a, b, stroke: (paint: black, thickness: 0.7pt, dash: "dashed"))
    #seg((X(-1.35), Y(0)), (X(3.0), Y(0)))
    #seg((X(3.0), Y(0)), (X(3.0) - 5pt, Y(0) - 3pt))
    #seg((X(3.0), Y(0)), (X(3.0) - 5pt, Y(0) + 3pt))
    #seg((X(0), Y(-1.45)), (X(0), Y(1.5)))
    #seg((X(0), Y(1.5)), (X(0) - 3pt, Y(1.5) + 6pt))
    #seg((X(0), Y(1.5)), (X(0) + 3pt, Y(1.5) + 6pt))
    #place(dx: 0pt, dy: 0pt)[
      #if style == "A" {
        curve(
          curve.move((X(-1.1), Y(-1.25))),
          curve.cubic((X(-0.62), Y(-0.85)), (X(0.05), Y(0.5)), (X(0.5), Y(0.5))),
          curve.cubic((X(0.95), Y(0.5)), (X(1.25), Y(-0.65)), (X(1.65), Y(-0.65))),
          curve.cubic((X(2.1), Y(-0.65)), (X(2.35), Y(0.6)), (X(2.62), Y(1.35))),
          stroke: 0.8pt,
        )
      } else if style == "B" {
        curve(
          curve.move((X(-1.1), Y(1.35))),
          curve.cubic((X(-0.65), Y(0.2)), (X(-0.15), Y(-0.55)), (X(0.35), Y(-0.55))),
          curve.cubic((X(0.95), Y(-0.55)), (X(1.15), Y(0.85)), (X(1.6), Y(0.85))),
          curve.cubic((X(2.05), Y(0.85)), (X(2.35), Y(-0.2)), (X(2.62), Y(-1.05))),
          stroke: 0.8pt,
        )
      } else if style == "C" {
        curve(
          curve.move((X(-1.1), Y(-1.35))),
          curve.cubic((X(-0.54), Y(-0.55)), (X(0.35), Y(0.6)), (X(0.9), Y(0.6))),
          curve.cubic((X(1.45), Y(0.6)), (X(1.6), Y(-0.6)), (X(2.0), Y(-0.6))),
          curve.cubic((X(2.35), Y(-0.6)), (X(2.5), Y(0.5)), (X(2.66), Y(1.35))),
          stroke: 0.8pt,
        )
      } else {
        curve(
          curve.move((X(-1.1), Y(1.3))),
          curve.cubic((X(-0.4), Y(0.1)), (X(0.6), Y(-0.6)), (X(1.0), Y(-0.6))),
          curve.cubic((X(1.4), Y(-0.6)), (X(1.7), Y(0.6)), (X(1.95), Y(0.6))),
          curve.cubic((X(2.3), Y(0.6)), (X(2.5), Y(-0.4)), (X(2.66), Y(-1.1))),
          stroke: 0.8pt,
        )
      }
    ]
    #if style == "C" { dash((X(2), Y(0)), (X(2), Y(-0.6))) }
    #if style == "D" { dash((X(2), Y(0)), (X(2), Y(0.58))) }
    #place(dx: X(1) - 2pt, dy: Y(0) + 3pt)[$1$]
    #if style == "C" {
      place(dx: X(2) - 2pt, dy: Y(0) - 12pt)[$2$]
    } else {
      place(dx: X(2) - 2pt, dy: Y(0) + 3pt)[$2$]
    }
    #place(dx: X(3.0) + 2pt, dy: Y(0) - 10pt)[$x$]
    #place(dx: X(0) + 4pt, dy: Y(1.5) - 11pt)[$y$]
    #place(dx: X(0) + 2pt, dy: Y(0) + 3pt)[$O$]
    #place(dx: 1pt, dy: 100pt)[#text(weight: "bold")[#label.]]
  ]

  #grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    gutter: 0pt,
    optgraph("A", "A"),
    optgraph("B", "B"),
    optgraph("C", "C"),
    optgraph("D", "D"),
  )

  === 解析

  由 $y = f'(x)$ 的图象可知：图象开口向上，与 $x$ 轴交于 $x = 1$、$x = 2$ 两点，所以

  - $f'(x) > 0$ 的解集为 $(-oo, 1) union (2, +oo)$；
  - $f'(x) < 0$ 的解集为 $(1, 2)$。

  因此 $f(x)$ 在 $(-oo, 1)$ 上单调递增，在 $(1, 2)$ 上单调递减，在 $(2, +oo)$ 上单调递增，即 $f(x)$ 在 $x = 1$ 处取得极大值，在 $x = 2$ 处取得极小值。

  对照选项：

  - B、D 的图象从左上方向下延伸，即 $x < 1$ 时 $f(x)$ 递减（$f'(x) < 0$），且都是先极小值、后极大值，与题图矛盾，排除；
  - A 的图象虽然也是"增、减、增"，但它的极大值点在 $x = 1$ 的左侧、极小值点在 $x = 2$ 的左侧，在 $x = 1$、$x = 2$ 处并不取极值，与 $f'(1) = f'(2) = 0$ 矛盾，排除；
  - C 的图象在 $x = 1$ 处取极大值、在 $x = 2$ 处取极小值（图中已用虚线标出极小值点的位置），且两端分别向下、向上无限延伸，与上述分析一致。

  故选 *#text(fill: rgb("#c7362e"))[C]*。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 【3】求函数的单调区间

  *【例】* 求函数 $y = x^3 - 3x^2 - 9x + 14$ 的单调区间。

  === 解析

  函数的定义域为 $RR$。求导：
  $ y' = 3x^2 - 6x - 9 = 3 (x^2 - 2x - 3) = 3 (x + 1)(x - 3) $

  令 $y' = 0$，得 $x = -1$ 或 $x = 3$，它们把定义域分成三段：

  - 当 $x < -1$ 或 $x > 3$ 时，$y' > 0$，函数单调递增；
  - 当 $-1 < x < 3$ 时，$y' < 0$，函数单调递减。

  所以 $y$ 的单调递增区间为 $(-oo, -1)$ 和 $(3, +oo)$，单调递减区间为 $(-1, 3)$。

  注意：两个单调递增区间不能用并集符号连成一个区间，只能用"和"（或逗号）连接。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 【4】讨论函数的单调性

  *【练】* 设函数 $f(x) = (1 - x^2) e^x$，讨论 $f(x)$ 的单调性。

  === 解析

  函数的定义域为 $RR$。求导：
  $ f'(x) = -2x e^x + (1 - x^2) e^x = e^x (1 - 2x - x^2) = -e^x (x^2 + 2x - 1) $

  因为 $e^x > 0$，所以 $f'(x)$ 的符号由 $-x^2 - 2x + 1$ 决定。令 $f'(x) = 0$，即
  $ x^2 + 2x - 1 = 0 => x = -1 plus.minus sqrt(2) $

  记 $x_1 = -1 - sqrt(2)$，$x_2 = -1 + sqrt(2)$（$x_1 < x_2$），列表讨论：

  #table(
    columns: (auto, 1fr, auto, 1fr, auto, 1fr),
    stroke: 0.5pt,
    align: center,
    inset: 5pt,
    [$x$], [$(-oo, x_1)$], [$x_1$], [$(x_1, x_2)$], [$x_2$], [$(x_2, +oo)$],
    [$f'(x)$], [$-$], [$0$], [$+$], [$0$], [$-$],
    [$f(x)$], [单调递减], [极小值], [单调递增], [极大值], [单调递减],
  )

  所以 $f(x)$ 在 $(-oo, -1 - sqrt(2))$ 和 $(-1 + sqrt(2), +oo)$ 上单调递减，在 $(-1 - sqrt(2), -1 + sqrt(2))$ 上单调递增。

  其中 $x = -1 - sqrt(2)$ 是极小值点，$x = -1 + sqrt(2)$ 是极大值点。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 【5】含对数与参数的单调性讨论

  *【5】* 已知函数 $f(x) = (a ln x - 1)(x - 1) + ln x$（$a > 0$），当 $a = 1/2$ 时，求 $f(x)$ 的单调性。

  === 解析

  函数的定义域为 $(0, +oo)$。当 $a = 1/2$ 时，
  $ f(x) = (1/2 ln x - 1)(x - 1) + ln x $

  求导（注意 $ln x$ 的导数为 $1/x$）：
  $ f'(x) = 1/(2x) dot (x - 1) + (1/2 ln x - 1) + 1/x = (x + 1)/(2x) + 1/2 ln x - 1 $

  通分，得
  $ f'(x) = (x + 1 + x ln x - 2x)/(2x) = (x ln x - x + 1)/(2x) $

  令 $g(x) = x ln x - x + 1$（$x > 0$），则
  $ g'(x) = ln x + 1 - 1 = ln x $

  所以 $g(x)$ 在 $(0, 1)$ 上单调递减，在 $(1, +oo)$ 上单调递增，从而
  $ g(x) >= g(1) = 0 $

  且等号仅在 $x = 1$ 时成立。又 $2x > 0$，所以 $f'(x) >= 0$ 在 $(0, +oo)$ 上恒成立，且仅在 $x = 1$ 处 $f'(x) = 0$。

  因此 $f(x)$ 在 $(0, +oo)$ 上单调递增。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 【6】求含对数函数的单调区间

  *【6】* 已知函数 $f(x) = (x + 1) ln x - 2(x - 1)$，求函数的单调区间。

  === 解析

  函数的定义域为 $(0, +oo)$。求导：
  $ f'(x) = ln x + (x + 1) dot 1/x - 2 = ln x + 1/x - 1 $

  令 $h(x) = ln x + 1/x - 1$（$x > 0$），则
  $ h'(x) = 1/x - 1/x^2 = (x - 1)/x^2 $

  所以 $h(x)$ 在 $(0, 1)$ 上单调递减，在 $(1, +oo)$ 上单调递增，从而
  $ h(x) >= h(1) = 0 $

  且等号仅在 $x = 1$ 时成立。即 $f'(x) >= 0$ 在 $(0, +oo)$ 上恒成立，且仅在 $x = 1$ 处 $f'(x) = 0$。

  因此 $f(x)$ 在 $(0, +oo)$ 上单调递增，单调递增区间为 $(0, +oo)$，没有单调递减区间。

  #line(length: 100%, stroke: 0.5pt + gray)

  === 方法总结

  - $f'(x) > 0$ 的区间是 $f(x)$ 的单调递增区间，$f'(x) < 0$ 的区间是单调递减区间。因此 $f(x)$ 图象上升的一段对应 $f'(x)$ 图象在 $x$ 轴上方，下降的一段对应在 $x$ 轴下方。
  - $f(x)$ 的极值点对应 $f'(x) = 0$ 的点：极大值点处 $f'(x)$ 由正变负（$f'(x)$ 图象自上而下穿过 $x$ 轴），极小值点处 $f'(x)$ 由负变正（自下而上穿过 $x$ 轴）。
  - $f(x)$ 的单调递增（减）区间数等于 $f'(x)$ 图象在 $x$ 轴上方（下方）的段数；$f(x)$ 的极值点个数等于 $f'(x)$ 图象与 $x$ 轴的交点个数（且在交点两侧变号）。
  - $f(x)$ 的图象越陡，$|f'(x)|$ 越大；若 $f(x)$ 的图象有垂直于 $x$ 轴的渐近线，则 $f'(x)$ 在该处也趋于无穷，对应 $f'(x)$ 图象的竖直渐近线。
  - 反向地，由 $f'(x)$ 的图象读 $f(x)$ 的图象：$f'$ 在 $x$ 轴上方（下方）的区间就是 $f$ 的增（减）区间；$f'$ 与 $x$ 轴交点的横坐标就是 $f$ 的极值点横坐标，其中 $f'$ 由正变负处为极大值点、由负变正处为极小值点。
]
