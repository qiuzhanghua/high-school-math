#import "template.typ": *

#set document(title: [导数零点差问题])

#template(heading2-align: left, page-footer: "第 1 页")[

  *例 1*（2021 新课标 1 卷 22 题）已知函数 $f(x) = x(1 - ln x)$。

  (1) 讨论 $f(x)$ 的单调性；

  (2) 设 $a$、$b$ 为两个不相等的正数，且 $b ln a - a ln b = a - b$，证明：$2 < 1/a + 1/b < e$。

  *解答：*

  *(1)* $f'(x) = 1 - (ln x + 1) = -ln x$，故 $f$ 在 $(0, 1)$ 上递增、在 $(1, +oo)$ 上递减，在 $x = 1$ 处取最大值 $f(1) = 1$；又 $x -> 0^+$ 时 $f(x) -> 0$，$f(e) = 0$。

  *(2) ① 把条件化成"$f$ 的两个零点"。* 把 $b ln a - a ln b = a - b$ 两边同除 $a b$：

  $ (ln a)/a - (ln b)/b = 1/b - 1/a quad => quad (1 + ln a)/a = (1 + ln b)/b. $

  令 $x_1 = 1/a$、$x_2 = 1/b$（由 $a != b$ 得 $x_1 != x_2$），则

  $ f(x_1) = x_1 (1 - ln x_1) = (1 + ln a)/a = (1 + ln b)/b = f(x_2), $

  即条件等价于 $f(x_1) = f(x_2)$；而要证的结论正好是

  $ 2 < x_1 + x_2 < e. $

  *② 定位两个零点。* 设 $f(x_1) = f(x_2) = m$（$x_1 != x_2$）。由 ① 知 $f$ 在 $(0, 1)$ 上递增、在 $(1, +oo)$ 上递减，且 $f(x) > 0 <=> x < e$，所以 $f(x) = m$ 在 $(1, +oo)$ 上至多有一个根。故

  $ 0 < x_1 < 1 < x_2 < e, quad 0 < m < 1. $

  *③ 下界 $x_1 + x_2 > 2$。* 令 $F(x) = f(x) - f(2 - x)$（$0 < x < 1$），则

  $ F'(x) = -ln x - ln(2 - x) = -ln(x(2 - x)) > 0, $

  （因为 $0 < x < 1$ 时 $0 < x(2 - x) < 1$，故 $ln(x(2-x)) < 0$），所以 $F$ 在 $(0, 1)$ 上递增；又 $F(1) = 0$，故 $x < 1$ 时 $F(x) < 0$，即 $f(x) < f(2 - x)$。取 $x = x_1$：

  $ f(x_2) = f(x_1) < f(2 - x_1). $

  而 $x_2 > 1$、$2 - x_1 > 1$，$f$ 在 $(1, +oo)$ 上递减，故 $x_2 > 2 - x_1$，即 $x_1 + x_2 > 2$。

  *④ 上界 $x_1 + x_2 < e$。* 令 $G(x) = f(x) - f(e - x)$（$0 < x < 1$），则

  $ G'(x) = -ln x - ln(e - x) = -ln(x(e - x)). $

  因为 $(x(e - x))' = e - 2x > 0$（$x < 1 < e/2$），所以 $x(e - x)$ 在 $(0, 1)$ 上从 $0^+$ 递增到 $e - 1 > 1$，于是 $G'$ 由正变负、只变号一次：$G$ 先增后减。又

  $ G(0^+) = f(0^+) - f(e) = 0 - 0 = 0, quad G(1) = f(1) - f(e - 1) = 1 - f(e - 1) > 0 $

  （因 $e - 1 > 1$ 且 $f$ 递减，故 $f(e - 1) < f(1) = 1$），所以 $0 < x < 1$ 时恒有 $G(x) > 0$，即 $f(x) > f(e - x)$。取 $x = x_1$：

  $ f(x_2) = f(x_1) > f(e - x_1). $

  而 $x_2 > 1$、$e - x_1 > e - 1 > 1$，$f$ 在 $(1, +oo)$ 上递减，故 $x_2 < e - x_1$，即 $x_1 + x_2 < e$。

  *⑤ 换回 $a$、$b$。* 由 $x_1 + x_2 = 1/a + 1/b$，即得

  $ 2 < 1/a + 1/b < e. quad square $

  *要点*：第一步"两边同除 $a b$、再令 $x = 1/a$"是把 $a$、$b$ 的条件化为 $f$ 的两个函数值的关键；之后就是本专题的通用套路——把 $f(x_1) = f(x_2)$ 的*两个根分别用一条对称不等式夹住*：下界用中心为 $x = 1$ 的 $F(x) = f(x) - f(2 - x)$，上界用中心为 $x = e/2$ 的 $G(x) = f(x) - f(e - x)$。

  #v(0.3em)

  #block(breakable: false)[
    #align(center)[
      #block(breakable: false, width: 320pt, height: 190pt)[
        #let seg(a, b, stroke: 0.8pt) = place(dx: a.at(0), dy: a.at(1))[
          #line(end: (b.at(0) - a.at(0), b.at(1) - a.at(1)), stroke: stroke)
        ]
        #let dot(p, r: 1.5pt) = place(dx: p.at(0) - r, dy: p.at(1) - r)[#circle(radius: r, fill: black)]
        // 坐标轴与刻度
        #seg((38.0pt, 107.2pt), (292.0pt, 107.2pt))
        #seg((292.0pt, 107.2pt), (286.0pt, 103.2pt))
        #seg((292.0pt, 107.2pt), (286.0pt, 111.2pt))
        #seg((46.7pt, 186.0pt), (46.7pt, 12.0pt))
        #seg((46.7pt, 12.0pt), (42.7pt, 18.0pt))
        #seg((46.7pt, 12.0pt), (50.7pt, 18.0pt))
        #place(dx: 294.0pt, dy: 96.2pt)[#text(size: 8.5pt)[$x$]]
        #place(dx: 35.7pt, dy: 5.0pt)[#text(size: 8.5pt)[$y$]]
        #seg((78.4pt, 104.2pt), (78.4pt, 110.2pt), stroke: 0.6pt)
        #place(dx: 71.4pt, dy: 111.2pt)[#text(size: 8pt)[$0.5$]]
        #seg((110.2pt, 104.2pt), (110.2pt, 110.2pt), stroke: 0.6pt)
        #place(dx: 103.2pt, dy: 111.2pt)[#text(size: 8pt)[$1$]]
        #seg((141.9pt, 104.2pt), (141.9pt, 110.2pt), stroke: 0.6pt)
        #place(dx: 134.9pt, dy: 111.2pt)[#text(size: 8pt)[$1.5$]]
        #seg((173.7pt, 104.2pt), (173.7pt, 110.2pt), stroke: 0.6pt)
        #place(dx: 166.7pt, dy: 111.2pt)[#text(size: 8pt)[$2$]]
        #seg((205.5pt, 104.2pt), (205.5pt, 110.2pt), stroke: 0.6pt)
        #place(dx: 198.5pt, dy: 111.2pt)[#text(size: 8pt)[$2.5$]]
        #seg((237.2pt, 104.2pt), (237.2pt, 110.2pt), stroke: 0.6pt)
        #place(dx: 230.2pt, dy: 111.2pt)[#text(size: 8pt)[$3$]]
        #seg((269.0pt, 104.2pt), (269.0pt, 110.2pt), stroke: 0.6pt)
        #place(dx: 262.0pt, dy: 111.2pt)[#text(size: 8pt)[$3.5$]]
        #seg((43.7pt, 168.8pt), (49.7pt, 168.8pt), stroke: 0.6pt)
        #place(dx: 25.7pt, dy: 164.8pt)[#text(size: 8pt)[$-1$]]
        #seg((43.7pt, 138.0pt), (49.7pt, 138.0pt), stroke: 0.6pt)
        #place(dx: 25.7pt, dy: 134.0pt)[#text(size: 8pt)[$-0.5$]]
        #seg((43.7pt, 76.5pt), (49.7pt, 76.5pt), stroke: 0.6pt)
        #place(dx: 25.7pt, dy: 72.5pt)[#text(size: 8pt)[$0.5$]]
        #seg((43.7pt, 45.7pt), (49.7pt, 45.7pt), stroke: 0.6pt)
        #place(dx: 25.7pt, dy: 41.7pt)[#text(size: 8pt)[$1$]]
        #place(dx: 36.7pt, dy: 111.2pt)[#text(size: 8pt)[$O$]]
        // 水平直线 y = m 与两个交点
        #seg((40.0pt, 76.5pt), (275.3pt, 76.5pt), stroke: 1.0pt + rgb("#333333"))
        #seg((58.6pt, 76.5pt), (58.6pt, 107.2pt), stroke: (paint: gray, thickness: 0.6pt, dash: "dashed"))
        #seg((183.6pt, 76.5pt), (183.6pt, 107.2pt), stroke: (paint: gray, thickness: 0.6pt, dash: "dashed"))
        #seg((219.3pt, 107.2pt), (219.3pt, 110.2pt), stroke: 0.6pt)
        // 曲线 y = f(x)
        #let cpts = (
          (48.0pt, 101.2pt),
          (49.5pt, 95.9pt),
          (51.1pt, 91.6pt),
          (52.7pt, 87.7pt),
          (54.3pt, 84.3pt),
          (55.8pt, 81.2pt),
          (57.4pt, 78.4pt),
          (59.0pt, 75.8pt),
          (60.5pt, 73.4pt),
          (62.1pt, 71.1pt),
          (63.7pt, 69.1pt),
          (65.3pt, 67.1pt),
          (66.8pt, 65.3pt),
          (68.4pt, 63.6pt),
          (70.0pt, 62.0pt),
          (71.5pt, 60.6pt),
          (73.1pt, 59.2pt),
          (74.7pt, 57.9pt),
          (76.3pt, 56.7pt),
          (77.8pt, 55.6pt),
          (79.4pt, 54.5pt),
          (81.0pt, 53.5pt),
          (82.5pt, 52.6pt),
          (84.1pt, 51.8pt),
          (85.7pt, 51.0pt),
          (87.3pt, 50.3pt),
          (88.8pt, 49.7pt),
          (90.4pt, 49.1pt),
          (92.0pt, 48.5pt),
          (93.5pt, 48.0pt),
          (95.1pt, 47.6pt),
          (96.7pt, 47.2pt),
          (98.3pt, 46.9pt),
          (99.8pt, 46.6pt),
          (101.4pt, 46.3pt),
          (103.0pt, 46.1pt),
          (104.5pt, 45.9pt),
          (106.1pt, 45.8pt),
          (107.7pt, 45.7pt),
          (109.3pt, 45.7pt),
          (110.8pt, 45.7pt),
          (112.4pt, 45.7pt),
          (114.0pt, 45.8pt),
          (115.5pt, 45.9pt),
          (117.1pt, 46.0pt),
          (118.7pt, 46.2pt),
          (120.3pt, 46.4pt),
          (121.8pt, 46.7pt),
          (123.4pt, 46.9pt),
          (125.0pt, 47.2pt),
          (126.5pt, 47.6pt),
          (128.1pt, 47.9pt),
          (129.7pt, 48.3pt),
          (131.2pt, 48.8pt),
          (132.8pt, 49.2pt),
          (134.4pt, 49.7pt),
          (136.0pt, 50.2pt),
          (137.5pt, 50.7pt),
          (139.1pt, 51.3pt),
          (140.7pt, 51.9pt),
          (142.2pt, 52.5pt),
          (143.8pt, 53.1pt),
          (145.4pt, 53.8pt),
          (147.0pt, 54.4pt),
          (148.5pt, 55.2pt),
          (150.1pt, 55.9pt),
          (151.7pt, 56.6pt),
          (153.2pt, 57.4pt),
          (154.8pt, 58.2pt),
          (156.4pt, 59.0pt),
          (158.0pt, 59.9pt),
          (159.5pt, 60.7pt),
          (161.1pt, 61.6pt),
          (162.7pt, 62.5pt),
          (164.2pt, 63.5pt),
          (165.8pt, 64.4pt),
          (167.4pt, 65.4pt),
          (169.0pt, 66.4pt),
          (170.5pt, 67.4pt),
          (172.1pt, 68.4pt),
          (173.7pt, 69.4pt),
          (175.2pt, 70.5pt),
          (176.8pt, 71.6pt),
          (178.4pt, 72.7pt),
          (180.0pt, 73.8pt),
          (181.5pt, 75.0pt),
          (183.1pt, 76.1pt),
          (184.7pt, 77.3pt),
          (186.2pt, 78.5pt),
          (187.8pt, 79.7pt),
          (189.4pt, 80.9pt),
          (191.0pt, 82.1pt),
          (192.5pt, 83.4pt),
          (194.1pt, 84.7pt),
          (195.7pt, 86.0pt),
          (197.2pt, 87.3pt),
          (198.8pt, 88.6pt),
          (200.4pt, 89.9pt),
          (202.0pt, 91.3pt),
          (203.5pt, 92.7pt),
          (205.1pt, 94.0pt),
          (206.7pt, 95.4pt),
          (208.2pt, 96.9pt),
          (209.8pt, 98.3pt),
          (211.4pt, 99.7pt),
          (213.0pt, 101.2pt),
          (214.5pt, 102.7pt),
          (216.1pt, 104.1pt),
          (217.7pt, 105.6pt),
          (219.2pt, 107.2pt),
          (220.8pt, 108.7pt),
          (222.4pt, 110.2pt),
          (224.0pt, 111.8pt),
          (225.5pt, 113.4pt),
          (227.1pt, 114.9pt),
          (228.7pt, 116.5pt),
          (230.2pt, 118.2pt),
          (231.8pt, 119.8pt),
          (233.4pt, 121.4pt),
          (235.0pt, 123.1pt),
          (236.5pt, 124.7pt),
          (238.1pt, 126.4pt),
          (239.7pt, 128.1pt),
          (241.2pt, 129.8pt),
          (242.8pt, 131.5pt),
          (244.4pt, 133.2pt),
          (246.0pt, 134.9pt),
          (247.5pt, 136.7pt),
          (249.1pt, 138.5pt),
          (250.7pt, 140.2pt),
          (252.2pt, 142.0pt),
          (253.8pt, 143.8pt),
          (255.4pt, 145.6pt),
          (257.0pt, 147.4pt),
          (258.5pt, 149.3pt),
          (260.1pt, 151.1pt),
          (261.7pt, 152.9pt),
          (263.2pt, 154.8pt),
          (264.8pt, 156.7pt),
          (266.4pt, 158.6pt),
          (268.0pt, 160.5pt),
          (269.5pt, 162.4pt),
          (271.1pt, 164.3pt),
          (272.7pt, 166.2pt),
          (274.2pt, 168.2pt),
          (275.8pt, 170.1pt),
          (277.4pt, 172.1pt),
          (279.0pt, 174.0pt),
          (280.5pt, 176.0pt),
          (282.1pt, 178.0pt),
        )
        #place(dx: 0pt, dy: 0pt)[
          #curve(curve.move(cpts.first()), ..cpts.slice(1).map(p => curve.line(p)), stroke: 1.2pt + rgb("#b5651d"))
        ]
        // 关键点
        #dot((110.2pt, 45.7pt))
        #dot((58.6pt, 76.5pt))
        #dot((183.6pt, 76.5pt))
        #dot((219.3pt, 107.2pt))
        #place(dx: 84.2pt, dy: 27.7pt)[#text(size: 8.5pt)[极大值]]
        #place(dx: 132.4pt, dy: 38.3pt)[#text(size: 8.5pt, fill: rgb("#b5651d"))[$y = f(x)$]]
        #place(dx: 61.6pt, dy: 63.5pt)[#text(size: 8.5pt)[$x_1$]]
        #place(dx: 186.6pt, dy: 63.5pt)[#text(size: 8.5pt)[$x_2$]]
        #place(dx: 223.3pt, dy: 93.2pt)[#text(size: 8.5pt)[$e$]]
      ]
    ]

    #align(center)[#text(
      size: 9pt,
      fill: gray,
    )[图：$y = f(x)$ 在 $x = 1$ 处取极大值 $1$；直线 $y = m$ 与曲线交于 $x_1$、$x_2$（$x_1 < 1 < x_2 < e$），曲线与 $x$ 轴的另一交点为 $(e, 0)$]]
  ]

  #v(0.2em)

  #line(length: 100%, stroke: 0.5pt + gray)

  *例 2*（2020 合肥模考）已知函数 $f(x) = (1 - x^2)/e^x$（$e$ 为自然对数的底数）。

  (1) 求函数 $f(x)$ 的零点 $x_0$，以及曲线 $y = f(x)$ 在 $x = x_0$ 处的切线方程；

  (2) 设方程 $f(x) = m$（$m > 0$）有两个实数根 $x_1$、$x_2$，求证：$|x_1 - x_2| < 2 - m(1 + 1/(2e))$。

  *解答：*

  *(1)* $f(x) = 0 <=> 1 - x^2 = 0$，故零点为 $x = -1$ 与 $x = 1$。由

  $ f'(x) = (-2x)e^(-x) - (1 - x^2)e^(-x) = e^(-x)(x^2 - 2x - 1) $

  得 $f'(-1) = 2e$、$f'(1) = -2/e$，于是两条切线分别是

  $ x_0 = -1: quad y = 2e(x + 1); quad quad x_0 = 1: quad y = -(2/e)(x - 1). $

  （(2) 中用到的是 $x_0 = -1$ 处的那一条。）

  *(2)*

  *① 定位两个根。* 由 $f'(x) = e^(-x)(x^2 - 2x - 1)$ 知 $f$ 在 $(-oo, 1 - sqrt(2))$ 上递增、在 $(1 - sqrt(2), 1 + sqrt(2))$ 上递减；又

  $
    f(-1) = f(1) = 0, quad f(0) = 1, quad f(1 - sqrt(2)) = 2(sqrt(2) - 1)e^(sqrt(2) - 1), quad x -> +oo "时" f(x) -> 0^-.
  $

  所以当 $0 < m < f(1 - sqrt(2))$ 时方程恰有两个根，且

  $ -1 < x_1 < 1 - sqrt(2) < x_2 < 1. $

  *② 用两条切线把两个根分别夹住。* 由 $f''(x) = e^(-x)(-x^2 + 4x - 1)$ 得 $f''(-1) = -6e < 0$、$f''(0) = -1 < 0$，即曲线在这两点附近都是*上凸*的，切线落在*曲线之上*。把这两条"切线在曲线上方"在整个小区间上验证一遍：

  - 切线 $y = 2e(x + 1)$（即 (1) 中 $x_0 = -1$ 的结果）：令 $h(x) = 2e(x + 1) - f(x)$，则 $h(-1) = h'(-1) = 0$，且 $h''(x) = e^(-x)(x^2 - 4x + 1) > 0$（$-1 < x < 1 - sqrt(2) < 2 - sqrt(3)$ 时 $x^2 - 4x + 1 > 0$），故 $h > 0$，即

    $ f(x) <= 2e(x + 1) quad (-1 < x < 1 - sqrt(2)). $

    取 $x = x_1$：$m = f(x_1) <= 2e(x_1 + 1)$，故

    $ x_1 >= -1 + m/(2e). $

  - 切线 $y = 1 - x$（在 $x = 0$ 处：$f(0) = 1$、$f'(0) = -1$）：令 $g(x) = 1 - x - f(x)$，则 $g(0) = g(1) = 0$；由 $g''(x) = e^(-x)(x^2 - 4x + 1)$ 知 $g'$ 在 $(1 - sqrt(2), 0)$ 上为负、在 $(0, 1)$ 上先正后负，故 $g >= 0$，即

    $ f(x) <= 1 - x quad (1 - sqrt(2) < x < 1). $

    取 $x = x_2$：$m = f(x_2) <= 1 - x_2$，故

    $ x_2 <= 1 - m. $

  *③ 两式相减。*

  $ |x_1 - x_2| = x_2 - x_1 < (1 - m) - (-1 + m/(2e)) = 2 - m(1 + 1/(2e)). quad square $

  *要点*：本题"管住零点"的两条线都是*切线*——$x = -1$ 处的切线给出 $x_1$ 的下界（其斜率 $2e$ 正是结论中 $1/(2e)$ 的来源），$x = 0$ 处的切线 $y = 1 - x$ 给出 $x_2$ 的上界（斜率 $-1$ 对应结论中的 $-m$）。做法上先由二阶导判断切线在曲线的哪一侧，再用"作差函数 + 二阶导定号"把这条切线不等式在整个小区间上验证一遍，然后代入零点、相减。

  #v(0.3em)

  #block(breakable: false)[
    #align(center)[
      #block(breakable: false, width: 320pt, height: 188pt)[
        #let seg(a, b, stroke: 0.8pt) = place(dx: a.at(0), dy: a.at(1))[
          #line(end: (b.at(0) - a.at(0), b.at(1) - a.at(1)), stroke: stroke)
        ]
        #let dot(p, r: 1.5pt) = place(dx: p.at(0) - r, dy: p.at(1) - r)[#circle(radius: r, fill: black)]
        // 坐标轴与刻度
        #seg((26.0pt, 117.5pt), (292.0pt, 117.5pt))
        #seg((292.0pt, 117.5pt), (286.0pt, 113.5pt))
        #seg((292.0pt, 117.5pt), (286.0pt, 121.5pt))
        #seg((156.2pt, 184.0pt), (156.2pt, 10.0pt))
        #seg((156.2pt, 10.0pt), (152.2pt, 16.0pt))
        #seg((156.2pt, 10.0pt), (160.2pt, 16.0pt))
        #place(dx: 294.0pt, dy: 106.5pt)[#text(size: 8.5pt)[$x$]]
        #place(dx: 145.2pt, dy: 3.0pt)[#text(size: 8.5pt)[$y$]]
        #seg((44.0pt, 114.5pt), (44.0pt, 120.5pt), stroke: 0.6pt)
        #place(dx: 40.0pt, dy: 121.5pt)[#text(size: 8pt)[$-4$]]
        #seg((72.1pt, 114.5pt), (72.1pt, 120.5pt), stroke: 0.6pt)
        #place(dx: 68.1pt, dy: 121.5pt)[#text(size: 8pt)[$-3$]]
        #seg((100.1pt, 114.5pt), (100.1pt, 120.5pt), stroke: 0.6pt)
        #place(dx: 96.1pt, dy: 121.5pt)[#text(size: 8pt)[$-2$]]
        #seg((128.2pt, 114.5pt), (128.2pt, 120.5pt), stroke: 0.6pt)
        #place(dx: 124.2pt, dy: 121.5pt)[#text(size: 8pt)[$-1$]]
        #seg((156.2pt, 114.5pt), (156.2pt, 120.5pt), stroke: 0.6pt)
        #place(dx: 152.2pt, dy: 121.5pt)[#text(size: 8pt)[$0$]]
        #seg((184.2pt, 114.5pt), (184.2pt, 120.5pt), stroke: 0.6pt)
        #place(dx: 180.2pt, dy: 121.5pt)[#text(size: 8pt)[$1$]]
        #seg((212.3pt, 114.5pt), (212.3pt, 120.5pt), stroke: 0.6pt)
        #place(dx: 208.3pt, dy: 121.5pt)[#text(size: 8pt)[$2$]]
        #seg((240.3pt, 114.5pt), (240.3pt, 120.5pt), stroke: 0.6pt)
        #place(dx: 236.3pt, dy: 121.5pt)[#text(size: 8pt)[$3$]]
        #seg((268.4pt, 114.5pt), (268.4pt, 120.5pt), stroke: 0.6pt)
        #place(dx: 264.4pt, dy: 121.5pt)[#text(size: 8pt)[$4$]]
        #seg((153.2pt, 156.5pt), (159.2pt, 156.5pt), stroke: 0.6pt)
        #place(dx: 138.2pt, dy: 152.5pt)[#text(size: 8pt)[$-1$]]
        #seg((153.2pt, 78.4pt), (159.2pt, 78.4pt), stroke: 0.6pt)
        #place(dx: 138.2pt, dy: 74.4pt)[#text(size: 8pt)[$1$]]
        #seg((153.2pt, 39.4pt), (159.2pt, 39.4pt), stroke: 0.6pt)
        #place(dx: 138.2pt, dy: 35.4pt)[#text(size: 8pt)[$2$]]
        // 水平直线 y = m
        #seg((26.0pt, 105.0pt), (292.0pt, 105.0pt), stroke: 1.0pt + rgb("#444444"))
        #place(dx: 268.0pt, dy: 92.0pt)[#text(size: 8.5pt)[$y = m$]]
        // 曲线在 B(1, 0) 处的切线（绿）
        #seg((111.3pt, 16.0pt), (226.3pt, 176.0pt), stroke: 1.1pt + rgb("#2e7d32"))
        // 曲线（橙）
        #let cpts = (
          (122.4pt, 176.0pt), (122.6pt, 174.0pt), (122.7pt, 172.0pt), (122.9pt, 170.0pt), (123.0pt, 168.1pt),
          (123.2pt, 166.2pt), (123.3pt, 164.3pt), (123.5pt, 162.4pt), (123.7pt, 160.6pt), (123.8pt, 158.8pt),
          (124.0pt, 157.0pt), (124.1pt, 155.2pt), (124.3pt, 153.5pt), (124.4pt, 151.8pt), (124.6pt, 150.1pt),
          (124.7pt, 148.5pt), (124.9pt, 146.8pt), (125.0pt, 145.2pt), (125.2pt, 143.6pt), (125.3pt, 142.1pt),
          (125.3pt, 142.1pt), (126.0pt, 135.3pt), (126.8pt, 128.9pt), (127.5pt, 123.0pt), (128.2pt, 117.5pt),
          (128.9pt, 112.4pt), (129.6pt, 107.6pt), (130.3pt, 103.3pt), (131.0pt, 99.2pt), (131.7pt, 95.5pt),
          (132.4pt, 92.1pt), (133.1pt, 89.0pt), (133.8pt, 86.2pt), (134.5pt, 83.6pt), (135.2pt, 81.3pt),
          (135.9pt, 79.2pt), (136.6pt, 77.4pt), (137.3pt, 75.7pt), (138.0pt, 74.3pt), (138.7pt, 73.0pt),
          (139.4pt, 72.0pt), (140.1pt, 71.0pt), (140.8pt, 70.3pt), (141.5pt, 69.7pt), (142.2pt, 69.2pt),
          (142.9pt, 68.9pt), (143.6pt, 68.7pt), (144.3pt, 68.6pt), (145.0pt, 68.6pt), (145.7pt, 68.7pt),
          (146.4pt, 68.9pt), (147.1pt, 69.2pt), (147.8pt, 69.5pt), (148.5pt, 70.0pt), (149.2pt, 70.5pt),
          (149.9pt, 71.1pt), (150.6pt, 71.7pt), (151.3pt, 72.4pt), (152.0pt, 73.1pt), (152.7pt, 73.9pt),
          (153.4pt, 74.8pt), (154.1pt, 75.6pt), (154.8pt, 76.5pt), (155.5pt, 77.5pt), (156.2pt, 78.4pt),
          (156.2pt, 78.4pt), (157.7pt, 80.6pt), (159.3pt, 82.9pt), (160.8pt, 85.2pt), (162.3pt, 87.6pt),
          (163.8pt, 90.0pt), (165.4pt, 92.3pt), (166.9pt, 94.7pt), (168.4pt, 97.0pt), (170.0pt, 99.3pt),
          (171.5pt, 101.6pt), (173.0pt, 103.8pt), (174.6pt, 105.9pt), (176.1pt, 107.9pt), (177.6pt, 109.9pt),
          (179.1pt, 111.8pt), (180.7pt, 113.6pt), (182.2pt, 115.3pt), (183.7pt, 116.9pt), (185.3pt, 118.5pt),
          (186.8pt, 120.0pt), (188.3pt, 121.3pt), (189.8pt, 122.6pt), (191.4pt, 123.9pt), (192.9pt, 125.0pt),
          (194.4pt, 126.0pt), (196.0pt, 127.0pt), (197.5pt, 127.9pt), (199.0pt, 128.8pt), (200.6pt, 129.5pt),
          (202.1pt, 130.2pt), (203.6pt, 130.8pt), (205.1pt, 131.4pt), (206.7pt, 131.9pt), (208.2pt, 132.4pt),
          (209.7pt, 132.8pt), (211.3pt, 133.1pt), (212.8pt, 133.4pt), (214.3pt, 133.7pt), (215.9pt, 133.9pt),
          (217.4pt, 134.0pt), (218.9pt, 134.1pt), (220.4pt, 134.2pt), (222.0pt, 134.3pt), (223.5pt, 134.3pt),
          (223.5pt, 134.3pt), (225.7pt, 134.3pt), (227.9pt, 134.2pt), (230.2pt, 134.1pt), (232.4pt, 133.9pt),
          (234.6pt, 133.7pt), (236.8pt, 133.5pt), (239.1pt, 133.2pt), (241.3pt, 132.9pt), (243.5pt, 132.5pt),
          (245.7pt, 132.2pt), (248.0pt, 131.8pt), (250.2pt, 131.5pt), (252.4pt, 131.1pt), (254.6pt, 130.7pt),
          (256.9pt, 130.3pt), (259.1pt, 129.9pt), (261.3pt, 129.5pt), (263.5pt, 129.1pt), (265.8pt, 128.7pt),
          (268.0pt, 128.3pt), (270.2pt, 127.9pt), (272.4pt, 127.5pt), (274.7pt, 127.1pt), (276.9pt, 126.7pt),
          (279.1pt, 126.3pt), (281.3pt, 126.0pt), (283.6pt, 125.6pt), (285.8pt, 125.3pt), (288.0pt, 124.9pt)
        )
        #place(dx: 0pt, dy: 0pt)[
          #curve(curve.move(cpts.first()), ..cpts.slice(1).map(p => curve.line(p)), stroke: 1.2pt + rgb("#b5651d"))
        ]
        // 关键点
        #dot((144.6pt, 68.5pt))
        #dot((184.2pt, 117.5pt))
        #dot((128.2pt, 117.5pt))
        #dot((223.9pt, 134.3pt))
        #dot((156.2pt, 78.4pt))
        #place(dx: 141.6pt, dy: 52.5pt)[#text(size: 9pt)[$A$]]
        #place(dx: 188.2pt, dy: 95.5pt)[#text(size: 9pt)[$B$]]
        #place(dx: 113.2pt, dy: 95.5pt)[#text(size: 9pt)[$C$]]
        #place(dx: 227.9pt, dy: 139.3pt)[#text(size: 9pt)[$D$]]
      ]
    ]

    #align(center)[#text(size: 9pt, fill: gray)[图：$y = f(x)$ 的图象——$A$ 为极大值点，$C(-1, 0)$、$B(1, 0)$ 为零点，$D$ 为极小值点；绿线是曲线在 $(0, 1)$ 处的切线 $y = 1 - x$，深色横线是水平直线 $y = m$（$m > 0$）]]
  ]

  #v(0.2em)

  #line(length: 100%, stroke: 0.5pt + gray)

  *习题 1.* 已知函数 $f(x) = (x + b)(e^x - a)$（$b > 0$）在点 $(-1, f(-1))$ 处的切线方程为 $(e - 1)x + e y + e - 1 = 0$。

  (1) 求 $a$、$b$；

  (2) 设曲线 $y = f(x)$ 与 $x$ 轴负半轴的交点为点 $P$，曲线在点 $P$ 处的切线方程为 $y = h(x)$，求证：对于任意的实数 $x$，都有 $f(x) >= h(x)$；

  (3) 若关于 $x$ 的方程 $f(x) = m$ 有两个实数根 $x_1$、$x_2$，且 $x_1 < x_2$，证明：$x_2 - x_1 <= 1 + (m(1 - 2e))/(1 - e)$。

  *答案*：(1) $a = 1$，$b = 1$；(2)(3) 见下。

  *解答：*

  *(1)* 把切线方程化为斜截式：

  $ (e - 1)x + e y + e - 1 = 0 quad => quad y = -(e - 1)/e (x + 1), $

  即切线过点 $(-1, 0)$、斜率为 $k = -(e - 1)/e$。故有 $f(-1) = 0$ 与 $f'(-1) = k$。由

  $ f'(x) = (e^x - a) + (x + b)e^x $

  得

  $ f(-1) = (b - 1)(1/e - a) = 0, quad f'(-1) = (1/e - a) + (b - 1)/e = -(e - 1)/e. $

  - 若 $b = 1$：代入第二式得 $1/e - a = -(e-1)/e = 1/e - 1$，故 $a = 1$；
  - 若 $1/e - a = 0$（即 $a = 1/e$）：代入第二式得 $(b - 1)/e = -(e-1)/e$，即 $b = 2 - e < 0$，与 $b > 0$ 矛盾。

  所以 $a = 1$、$b = 1$，此时

  $ f(x) = (x + 1)(e^x - 1). $

  *(2)* 由 $f(x) = 0$ 得 $x = -1$ 或 $x = 0$，落在 $x$ 轴负半轴上的是 $x = -1$，故 $P(-1, 0)$。又

  $ f'(x) = (x + 2)e^x - 1, quad f'(-1) = 1/e - 1 = -(e - 1)/e, $

  故曲线在 $P$ 处的切线为

  $ h(x) = -(e - 1)/e (x + 1). $

  于是

  $ f(x) - h(x) = (x + 1)(e^x - 1) + (e - 1)/e (x + 1) = (x + 1)(e^x - 1/e). $

  而 $x + 1$ 与 $e^x - e^(-1)$ 同号（两者都以 $x = -1$ 为零点，且都随 $x$ 增大而增大），所以 $(x + 1)(e^x - e^(-1)) >= 0$，即对任意实数 $x$ 都有 $f(x) >= h(x)$。$square$

  #v(0.3em)

  #block(breakable: false)[
    #align(center)[
      #block(breakable: false, width: 320pt, height: 192pt)[
        #let seg(a, b, stroke: 0.8pt) = place(dx: a.at(0), dy: a.at(1))[
          #line(end: (b.at(0) - a.at(0), b.at(1) - a.at(1)), stroke: stroke)
        ]
        #let dot(p, r: 1.5pt) = place(dx: p.at(0) - r, dy: p.at(1) - r)[#circle(radius: r, fill: black)]
        // 坐标轴与刻度
        #seg((28.0pt, 113.2pt), (292.0pt, 113.2pt))
        #seg((292.0pt, 113.2pt), (286.0pt, 109.2pt))
        #seg((292.0pt, 113.2pt), (286.0pt, 117.2pt))
        #seg((144.3pt, 180.0pt), (144.3pt, 14.0pt))
        #seg((144.3pt, 14.0pt), (140.3pt, 20.0pt))
        #seg((144.3pt, 14.0pt), (148.3pt, 20.0pt))
        #place(dx: 294.0pt, dy: 102.2pt)[#text(size: 8.5pt)[$x$]]
        #place(dx: 133.3pt, dy: 6.0pt)[#text(size: 8.5pt)[$y$]]
        #seg((41.7pt, 110.2pt), (41.7pt, 116.2pt), stroke: 0.6pt)
        #seg((67.4pt, 110.2pt), (67.4pt, 116.2pt), stroke: 0.6pt)
        #seg((93.0pt, 110.2pt), (93.0pt, 116.2pt), stroke: 0.6pt)
        #seg((118.7pt, 110.2pt), (118.7pt, 116.2pt), stroke: 0.6pt)
        #seg((170.0pt, 110.2pt), (170.0pt, 116.2pt), stroke: 0.6pt)
        #seg((195.6pt, 110.2pt), (195.6pt, 116.2pt), stroke: 0.6pt)
        #seg((221.3pt, 110.2pt), (221.3pt, 116.2pt), stroke: 0.6pt)
        #seg((246.9pt, 110.2pt), (246.9pt, 116.2pt), stroke: 0.6pt)
        #seg((272.6pt, 110.2pt), (272.6pt, 116.2pt), stroke: 0.6pt)
        #place(dx: 63.9pt, dy: 117.2pt)[#text(size: 8pt)[$-3$]]
        #place(dx: 89.5pt, dy: 117.2pt)[#text(size: 8pt)[$-2$]]
        #place(dx: 192.1pt, dy: 117.2pt)[#text(size: 8pt)[$2$]]
        #place(dx: 217.8pt, dy: 117.2pt)[#text(size: 8pt)[$3$]]
        #place(dx: 243.4pt, dy: 117.2pt)[#text(size: 8pt)[$4$]]
        #seg((141.3pt, 93.0pt), (147.3pt, 93.0pt), stroke: 0.6pt)
        #place(dx: 149.3pt, dy: 89.0pt)[#text(size: 8pt)[$1$]]
        #seg((141.3pt, 72.7pt), (147.3pt, 72.7pt), stroke: 0.6pt)
        #place(dx: 149.3pt, dy: 68.7pt)[#text(size: 8pt)[$2$]]
        #seg((141.3pt, 52.4pt), (147.3pt, 52.4pt), stroke: 0.6pt)
        #place(dx: 149.3pt, dy: 48.4pt)[#text(size: 8pt)[$3$]]
        #seg((141.3pt, 32.2pt), (147.3pt, 32.2pt), stroke: 0.6pt)
        #place(dx: 149.3pt, dy: 28.2pt)[#text(size: 8pt)[$4$]]
        // 曲线 y = f(x)（绿）
        #let gpts = (
          (34.0pt, 47.3pt),
          (35.2pt, 48.2pt),
          (36.3pt, 49.2pt),
          (37.5pt, 50.1pt),
          (38.7pt, 51.1pt),
          (39.9pt, 52.1pt),
          (41.0pt, 53.0pt),
          (42.2pt, 54.0pt),
          (43.4pt, 54.9pt),
          (44.6pt, 55.9pt),
          (45.7pt, 56.9pt),
          (46.9pt, 57.8pt),
          (48.1pt, 58.8pt),
          (49.3pt, 59.8pt),
          (50.4pt, 60.7pt),
          (51.6pt, 61.7pt),
          (52.8pt, 62.7pt),
          (54.0pt, 63.6pt),
          (55.1pt, 64.6pt),
          (56.3pt, 65.6pt),
          (57.5pt, 66.5pt),
          (58.7pt, 67.5pt),
          (59.8pt, 68.5pt),
          (61.0pt, 69.5pt),
          (62.2pt, 70.4pt),
          (63.4pt, 71.4pt),
          (64.5pt, 72.4pt),
          (65.7pt, 73.3pt),
          (66.9pt, 74.3pt),
          (68.0pt, 75.3pt),
          (69.2pt, 76.3pt),
          (70.4pt, 77.2pt),
          (71.6pt, 78.2pt),
          (72.7pt, 79.2pt),
          (73.9pt, 80.2pt),
          (75.1pt, 81.1pt),
          (76.3pt, 82.1pt),
          (77.4pt, 83.1pt),
          (78.6pt, 84.0pt),
          (79.8pt, 85.0pt),
          (81.0pt, 86.0pt),
          (82.1pt, 86.9pt),
          (83.3pt, 87.9pt),
          (84.5pt, 88.9pt),
          (85.7pt, 89.8pt),
          (86.8pt, 90.8pt),
          (88.0pt, 91.7pt),
          (89.2pt, 92.7pt),
          (90.4pt, 93.6pt),
          (91.5pt, 94.5pt),
          (92.7pt, 95.5pt),
          (93.9pt, 96.4pt),
          (95.1pt, 97.3pt),
          (96.2pt, 98.2pt),
          (97.4pt, 99.1pt),
          (98.6pt, 100.0pt),
          (99.7pt, 100.9pt),
          (100.9pt, 101.8pt),
          (102.1pt, 102.7pt),
          (103.3pt, 103.5pt),
          (104.4pt, 104.4pt),
          (105.6pt, 105.2pt),
          (106.8pt, 106.0pt),
          (108.0pt, 106.8pt),
          (109.1pt, 107.6pt),
          (110.3pt, 108.4pt),
          (111.5pt, 109.1pt),
          (112.7pt, 109.9pt),
          (113.8pt, 110.6pt),
          (115.0pt, 111.3pt),
          (116.2pt, 111.9pt),
          (117.4pt, 112.6pt),
          (118.5pt, 113.2pt),
          (119.7pt, 113.7pt),
          (120.9pt, 114.3pt),
          (122.1pt, 114.8pt),
          (123.2pt, 115.3pt),
          (124.4pt, 115.7pt),
          (125.6pt, 116.1pt),
          (126.8pt, 116.4pt),
          (127.9pt, 116.7pt),
          (129.1pt, 116.9pt),
          (130.3pt, 117.1pt),
          (131.4pt, 117.2pt),
          (132.6pt, 117.3pt),
          (133.8pt, 117.3pt),
          (135.0pt, 117.2pt),
          (136.1pt, 117.0pt),
          (137.3pt, 116.8pt),
          (138.5pt, 116.4pt),
          (139.7pt, 116.0pt),
          (140.8pt, 115.5pt),
          (142.0pt, 114.8pt),
          (143.2pt, 114.1pt),
          (144.4pt, 113.2pt),
          (145.5pt, 112.2pt),
          (146.7pt, 111.1pt),
          (147.9pt, 109.8pt),
          (149.1pt, 108.4pt),
          (150.2pt, 106.8pt),
          (151.4pt, 105.0pt),
          (152.6pt, 103.1pt),
          (153.8pt, 100.9pt),
          (154.9pt, 98.6pt),
          (156.1pt, 96.0pt),
          (157.3pt, 93.2pt),
          (158.5pt, 90.2pt),
          (159.6pt, 86.9pt),
          (160.8pt, 83.3pt),
          (162.0pt, 79.4pt),
          (163.1pt, 75.2pt),
          (164.3pt, 70.7pt),
          (165.5pt, 65.8pt),
          (166.7pt, 60.6pt),
          (167.8pt, 54.9pt),
          (169.0pt, 48.9pt),
          (170.2pt, 42.4pt),
          (171.4pt, 35.4pt),
          (172.5pt, 28.0pt),
          (173.7pt, 20.0pt),
        )
        #place(dx: 0pt, dy: 0pt)[
          #curve(curve.move(gpts.first()), ..gpts.slice(1).map(p => curve.line(p)), stroke: 1.2pt + rgb("#2e7d32"))
        ]
        // 切线 y = h(x)（红）与直线 y = x（蓝）
        #seg((34.0pt, 71.0pt), (232.3pt, 170.0pt), stroke: 1.1pt + rgb("#c7362e"))
        #seg((72.5pt, 170.0pt), (262.3pt, 20.0pt), stroke: 1.1pt + rgb("#1f4e79"))
        // 两个切点
        #dot((118.7pt, 113.2pt))
        #dot((144.3pt, 113.2pt))
        #place(dx: 120.0pt, dy: 118.5pt)[#text(size: 9pt)[$P$]]
        #place(dx: 150.3pt, dy: 119.2pt)[#text(size: 9pt)[$O$]]
        // 曲线名（分开摆放，避免重叠）
        #place(dx: 173.8pt, dy: 34.2pt)[#text(size: 8.5pt, fill: rgb("#2e7d32"))[$y = f(x)$]]
        #place(dx: 53.2pt, dy: 89.6pt)[#text(size: 8.5pt, fill: rgb("#c7362e"))[$y = h(x)$]]
        #place(dx: 234.3pt, dy: 32.3pt)[#text(size: 8.5pt, fill: rgb("#1f4e79"))[$y = x$]]
      ]
    ]

    #align(center)[#text(
      size: 9pt,
      fill: gray,
    )[图：$y = f(x)$（绿）与它下方的两条线——在 $P(-1, 0)$ 处的切线 $y = h(x)$（红）、直线 $y = x$（蓝）]]
  ]

  #v(0.2em)

  *(3)*

  *① 先备一个不等式：$f(x) >= x$。*

  - 当 $x < -1$ 时：$x + 1 < 0$、$e^x - 1 < 0$，故 $f(x) > 0 > x$；
  - 当 $x >= -1$ 时：$x + 1 >= 0$，由 $e^x >= 1 + x$ 得 $f(x) = (x + 1)(e^x - 1) >= (x + 1)x$，而 $(x + 1)x - x = x^2 >= 0$，故 $f(x) >= x$。

  *② 分别把两个根夹到显式范围。*

  - 右根：由 $m = f(x_2) >= x_2$ 得 $x_2 <= m$；
  - 左根：在 $x_1$ 处用 (2) 的 $f(x) >= h(x)$：$m = f(x_1) >= h(x_1) = -(e-1)/e (x_1 + 1)$，两边除以 $-(e-1)/e$（负数，不等号反向）：

  $ x_1 + 1 >= -(m e)/(e - 1), quad "即" quad x_1 >= -1 - (m e)/(e - 1). $

  *③ 两式相减。*

  $
    x_2 - x_1 <= m - (-1 - (m e)/(e - 1)) = 1 + m(1 + e/(e - 1)) = 1 + (m(2e - 1))/(e - 1) = 1 + (m(1 - 2e))/(1 - e). quad square
  $

  *要点*：零点差题的通法是"*用一条线把曲线管住*"，把两个根分别夹到显式范围后相减：本题切线 $h$ 管住*左*根（由 $f >= h$ 得 $x_1$ 的下界），直线 $y = x$ 管住*右*根（由 $f(x) >= x$ 得 $x_2 <= m$），两条不等式都把超越方程化成了一次不等式。

  #line(length: 100%, stroke: 0.5pt + gray)

  *习题 2.* 设函数 $f(x) = x ln x$。

  (1) 求曲线 $y = f(x)$ 在点 $(e^(-2), f(e^(-2)))$ 处的切线方程；

  (2) 若关于 $x$ 的方程 $f(x) = a$ 有两个实根，设为 $x_1$、$x_2$（$x_1 < x_2$），证明：$x_2 - x_1 < 1 + 2a + e^(-2)$。

  *解答：*

  *(1)* 由 $f'(x) = ln x + 1$ 得

  $ f(e^(-2)) = e^(-2) ln e^(-2) = -2e^(-2), quad f'(e^(-2)) = ln e^(-2) + 1 = -1, $

  故切线方程为

  $ y = -(x - e^(-2)) - 2e^(-2), quad "即" quad y = -x - e^(-2). $

  *(2)*

  *① 先定位两个根。* $f'(x) = ln x + 1$ 在 $(0, 1/e)$ 上为负、在 $(1/e, +oo)$ 上为正，故 $f$ 在 $x = 1/e$ 处取最小值 $f(1/e) = -1/e$；又 $x -> 0^+$ 时 $f(x) -> 0^-$，$f(1) = 0$。所以方程有两个实根当且仅当

  $ -1/e < a < 0, quad "此时" quad 0 < x_1 < 1/e < x_2 < 1. $

  *② 左根：用切线放缩。* 由 $f''(x) = 1/x > 0$ 知 $f$ 在 $(0, +oo)$ 上是凸函数，曲线不低于它的任何一条切线，即对一切 $x > 0$

  $ f(x) >= -x - e^(-2). $

  取 $x = x_1$：$a = f(x_1) >= -x_1 - e^(-2)$，故

  $ x_1 >= -a - e^(-2). $

  *③ 右根：用标准不等式 $ln t > 1 - 1/t$（$t > 0$，$t != 1$）。* 由 $1/e < x_2 < 1$ 得

  $ a = x_2 ln x_2 > x_2 (1 - 1/x_2) = x_2 - 1, quad "即" quad x_2 < 1 + a. $

  *④ 两式相减。*

  $ x_2 - x_1 < (1 + a) - (-a - e^(-2)) = 1 + 2a + e^(-2). quad square $

  #v(0.3em)

  #block(breakable: false)[
    #align(center)[
      #block(breakable: false, width: 320pt, height: 150pt)[
        #let seg(a, b, stroke: 0.8pt) = place(dx: a.at(0), dy: a.at(1))[
          #line(end: (b.at(0) - a.at(0), b.at(1) - a.at(1)), stroke: stroke)
        ]
        #let dot(p, r: 1.4pt) = place(dx: p.at(0) - r, dy: p.at(1) - r)[#circle(radius: r, fill: black)]
        // 坐标轴与刻度
        #seg((28.0pt, 65.8pt), (292.0pt, 65.8pt))
        #seg((292.0pt, 65.8pt), (286.0pt, 61.8pt))
        #seg((292.0pt, 65.8pt), (286.0pt, 69.8pt))
        #seg((143.8pt, 140.0pt), (143.8pt, 10.0pt))
        #seg((143.8pt, 10.0pt), (139.8pt, 16.0pt))
        #seg((143.8pt, 10.0pt), (147.8pt, 16.0pt))
        #place(dx: 294.0pt, dy: 54.8pt)[#text(size: 8.5pt)[$x$]]
        #place(dx: 132.8pt, dy: 2.0pt)[#text(size: 8.5pt)[$y$]]
        #seg((75.2pt, 62.8pt), (75.2pt, 68.8pt), stroke: 0.6pt)
        #seg((178.2pt, 62.8pt), (178.2pt, 68.8pt), stroke: 0.6pt)
        #seg((212.5pt, 62.8pt), (212.5pt, 68.8pt), stroke: 0.6pt)
        #seg((246.8pt, 62.8pt), (246.8pt, 68.8pt), stroke: 0.6pt)
        #seg((281.1pt, 62.8pt), (281.1pt, 68.8pt), stroke: 0.6pt)
        #place(dx: 71.2pt, dy: 69.8pt)[#text(size: 8pt)[$-1$]]
        #place(dx: 174.2pt, dy: 69.8pt)[#text(size: 8pt)[$0.5$]]
        #place(dx: 208.5pt, dy: 69.8pt)[#text(size: 8pt)[$1$]]
        #place(dx: 242.8pt, dy: 69.8pt)[#text(size: 8pt)[$1.5$]]
        #place(dx: 277.1pt, dy: 69.8pt)[#text(size: 8pt)[$2$]]
        #seg((140.8pt, 128.0pt), (146.8pt, 128.0pt), stroke: 0.6pt)
        #place(dx: 119.8pt, dy: 124.0pt)[#text(size: 8pt)[$-1$]]
        #seg((140.8pt, 96.9pt), (146.8pt, 96.9pt), stroke: 0.6pt)
        #place(dx: 119.8pt, dy: 92.9pt)[#text(size: 8pt)[$-0.5$]]
        #seg((140.8pt, 34.7pt), (146.8pt, 34.7pt), stroke: 0.6pt)
        #place(dx: 119.8pt, dy: 30.7pt)[#text(size: 8pt)[$0.5$]]
        #place(dx: 146.8pt, dy: 68.8pt)[#text(size: 8pt)[$O$]]
        // 曲线 y = x ln x（橙）
        #let cpts = (
          (144.1pt, 67.2pt),
          (144.2pt, 67.7pt),
          (145.1pt, 70.2pt),
          (145.9pt, 72.2pt),
          (146.7pt, 73.9pt),
          (147.5pt, 75.4pt),
          (148.3pt, 76.8pt),
          (149.1pt, 78.0pt),
          (149.9pt, 79.1pt),
          (150.7pt, 80.1pt),
          (151.5pt, 81.0pt),
          (152.3pt, 81.8pt),
          (153.1pt, 82.6pt),
          (153.9pt, 83.3pt),
          (154.7pt, 83.9pt),
          (155.5pt, 84.5pt),
          (156.3pt, 85.1pt),
          (157.1pt, 85.5pt),
          (157.9pt, 86.0pt),
          (158.7pt, 86.4pt),
          (159.5pt, 86.8pt),
          (160.3pt, 87.1pt),
          (161.1pt, 87.4pt),
          (161.9pt, 87.6pt),
          (162.7pt, 87.9pt),
          (163.5pt, 88.1pt),
          (164.3pt, 88.2pt),
          (165.1pt, 88.4pt),
          (165.9pt, 88.5pt),
          (166.7pt, 88.6pt),
          (167.5pt, 88.6pt),
          (168.3pt, 88.7pt),
          (169.2pt, 88.7pt),
          (170.0pt, 88.7pt),
          (170.8pt, 88.6pt),
          (171.6pt, 88.6pt),
          (172.4pt, 88.5pt),
          (173.2pt, 88.4pt),
          (174.0pt, 88.3pt),
          (174.8pt, 88.1pt),
          (175.6pt, 88.0pt),
          (176.4pt, 87.8pt),
          (177.2pt, 87.6pt),
          (178.0pt, 87.4pt),
          (178.8pt, 87.2pt),
          (179.6pt, 86.9pt),
          (180.4pt, 86.7pt),
          (181.2pt, 86.4pt),
          (182.0pt, 86.1pt),
          (182.8pt, 85.8pt),
          (183.6pt, 85.5pt),
          (184.4pt, 85.1pt),
          (185.2pt, 84.8pt),
          (186.0pt, 84.4pt),
          (186.8pt, 84.0pt),
          (187.6pt, 83.6pt),
          (188.4pt, 83.2pt),
          (189.2pt, 82.8pt),
          (190.0pt, 82.4pt),
          (190.8pt, 81.9pt),
          (191.6pt, 81.5pt),
          (192.4pt, 81.0pt),
          (193.2pt, 80.5pt),
          (194.1pt, 80.0pt),
          (194.9pt, 79.5pt),
          (195.7pt, 79.0pt),
          (196.5pt, 78.5pt),
          (197.3pt, 77.9pt),
          (198.1pt, 77.4pt),
          (198.9pt, 76.8pt),
          (199.7pt, 76.2pt),
          (200.5pt, 75.6pt),
          (201.3pt, 75.1pt),
          (202.1pt, 74.5pt),
          (202.9pt, 73.8pt),
          (203.7pt, 73.2pt),
          (204.5pt, 72.6pt),
          (205.3pt, 71.9pt),
          (206.1pt, 71.3pt),
          (206.9pt, 70.6pt),
          (207.7pt, 70.0pt),
          (208.5pt, 69.3pt),
          (209.3pt, 68.6pt),
          (210.1pt, 67.9pt),
          (210.9pt, 67.2pt),
          (211.7pt, 66.5pt),
          (212.5pt, 65.7pt),
          (213.3pt, 65.0pt),
          (214.1pt, 64.3pt),
          (214.9pt, 63.5pt),
          (215.7pt, 62.8pt),
          (216.5pt, 62.0pt),
          (217.3pt, 61.2pt),
          (218.1pt, 60.4pt),
          (219.0pt, 59.6pt),
          (219.8pt, 58.9pt),
          (220.6pt, 58.0pt),
          (221.4pt, 57.2pt),
          (222.2pt, 56.4pt),
          (223.0pt, 55.6pt),
          (223.8pt, 54.8pt),
          (224.6pt, 53.9pt),
          (225.4pt, 53.1pt),
          (226.2pt, 52.2pt),
          (227.0pt, 51.3pt),
          (227.8pt, 50.5pt),
          (228.6pt, 49.6pt),
          (229.4pt, 48.7pt),
          (230.2pt, 47.8pt),
          (231.0pt, 46.9pt),
          (231.8pt, 46.0pt),
          (232.6pt, 45.1pt),
          (233.4pt, 44.2pt),
          (234.2pt, 43.3pt),
          (235.0pt, 42.3pt),
          (235.8pt, 41.4pt),
          (236.6pt, 40.4pt),
          (237.4pt, 39.5pt),
          (238.2pt, 38.5pt),
          (239.0pt, 37.6pt),
          (239.8pt, 36.6pt),
          (240.6pt, 35.6pt),
          (241.4pt, 34.6pt),
          (242.2pt, 33.7pt),
          (243.0pt, 32.7pt),
          (243.9pt, 31.7pt),
          (244.7pt, 30.7pt),
          (245.5pt, 29.6pt),
          (246.3pt, 28.6pt),
          (247.1pt, 27.6pt),
          (247.9pt, 26.6pt),
          (248.7pt, 25.5pt),
          (249.5pt, 24.5pt),
          (250.3pt, 23.5pt),
          (251.1pt, 22.4pt),
          (251.9pt, 21.4pt),
          (252.7pt, 20.3pt),
          (253.5pt, 19.2pt),
          (254.3pt, 18.2pt),
          (255.1pt, 17.1pt),
          (255.9pt, 16.0pt),
        )
        #place(dx: 0pt, dy: 0pt)[
          #curve(curve.move(cpts.first()), ..cpts.slice(1).map(p => curve.line(p)), stroke: 1.2pt + rgb("#b5651d"))
        ]
        // 切线 y = -x - e^-2（紫）、直线 y = x - 1（灰）
        #seg((79.7pt, 16.0pt), (203.2pt, 128.0pt), stroke: 1.1pt + rgb("#7d5fd4"))
        #seg((143.8pt, 128.0pt), (267.4pt, 16.0pt), stroke: 1.1pt + rgb("#8c8c8c"))
        // 切点与极小值点
        #dot((153.1pt, 82.6pt))
        #dot((169.1pt, 88.7pt))
        #dot((212.5pt, 65.8pt))
        // 图例（右下方空白处）
        #seg((216.0pt, 100.0pt), (230.0pt, 100.0pt), stroke: 1.2pt + rgb("#b5651d"))
        #place(dx: 234.0pt, dy: 95.0pt)[#text(size: 8.5pt)[$y = x ln x$]]
        #seg((216.0pt, 114.0pt), (230.0pt, 114.0pt), stroke: 1.1pt + rgb("#7d5fd4"))
        #place(dx: 234.0pt, dy: 109.0pt)[#text(size: 8.5pt)[$y = -x - e^(-2)$]]
        #seg((216.0pt, 128.0pt), (230.0pt, 128.0pt), stroke: 1.1pt + rgb("#8c8c8c"))
        #place(dx: 234.0pt, dy: 123.0pt)[#text(size: 8.5pt)[$y = x - 1$]]
      ]
    ]

    #align(center)[#text(
      size: 9pt,
      fill: gray,
    )[图：$y = x ln x$（橙）与 (2) 中放缩用的两条线——切线 $y = -x - e^(-2)$（紫）、直线 $y = x - 1$（灰，即 $x = 1$ 处的切线）]]
  ]

  #v(0.2em)

  *要点*：两个零点分居极值点两侧时，要*分别*找不等式：*左*根用"凸函数的曲线在切线上方"（即 (1) 求出的 $y = -x - e^{-2}$）得 $x_1 >= -a - e^{-2}$，*右*根用 $ln t > 1 - 1/t$ 得 $x_2 < 1 + a$，相减即得——第 (1) 问的切线正是第 (2) 问放缩要用的那条线。

]
