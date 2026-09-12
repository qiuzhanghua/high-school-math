#import "template.typ": *

#set document(title: [导数基础])

#template(heading2-align: left, page-footer: "第 1 页")[
  #set math.equation(numbering: "(1)")

  == 【1】含抽象导数的切线方程

  *【1】* 函数 $f(x) = x^2 - x f'(1)$，则曲线 $y = f(x)$ 在点 $(2, f(2))$ 处的切线方程为（#h(0.8em)）

  #grid(
    columns: (1fr, 1fr),
    gutter: 4pt,
    [A. $3x - y - 4 = 0$], [B. $3x - y + 4 = 0$],
    [C. $3x + y + 4 = 0$], [D. $3x + y - 4 = 0$],
  )

  === 解析

  注意 $f'(1)$ 是一个常数。对 $f(x) = x^2 - x f'(1)$ 求导，得
  $ f'(x) = 2x - f'(1) $

  令 $x = 1$，得 $f'(1) = 2 - f'(1)$，解得
  $ f'(1) = 1 $

  于是
  $ f(x) = x^2 - x, quad f'(x) = 2x - 1 $

  所以 $f(2) = 2^2 - 2 = 2$，$f'(2) = 3$，所求切线方程为
  $ y - 2 = 3 (x - 2) $

  即 $y = 3x - 4$，化为一般式 $3x - y - 4 = 0$，故选 *#text(fill: rgb("#c7362e"))[A]*。

  == 【2】由切线图象求 $g(x) = x f(x)$ 的切线

  *【2】* 若 $f(x)$ 在 $x = 1$ 处的切线如图所示，则函数 $g(x) = x f(x)$ 在 $x = 1$ 处的切线为 #underline[#h(5em)]。

  #v(0.6em)

  #align(center)[
    #block(width: 250pt, height: 185pt)[
      #let u = 36pt
      #let X(x) = 55pt + x * u
      #let Y(y) = 150pt - y * u
      #let seg(a, b, stroke: 0.8pt) = place(dx: a.at(0), dy: a.at(1))[
        #line(end: (b.at(0) - a.at(0), b.at(1) - a.at(1)), stroke: stroke)
      ]
      // 曲线（示意）：过 (1, 2) 且在该点切线为 y = 3 - x 的递减凸曲线
      #let pts = {
        let arr = ()
        for i in range(0, 68) {
          let x = 0.15 + i * 0.05
          arr.push((X(x), Y(4 / (x + 1))))
        }
        arr
      }
      // 坐标轴与箭头
      #seg((30pt, 150pt), (222pt, 150pt))
      #seg((222pt, 150pt), (214pt, 146pt))
      #seg((222pt, 150pt), (214pt, 154pt))
      #seg((55pt, 168pt), (55pt, 16pt))
      #seg((55pt, 16pt), (51pt, 24pt))
      #seg((55pt, 16pt), (59pt, 24pt))
      // 切线 y = 3 - x
      #seg((X(0), Y(3)), (X(3), Y(0)))
      // 虚线 x = 1
      #seg((X(1), Y(0)), (X(1), Y(2)), stroke: (paint: black, thickness: 0.8pt, dash: "dashed"))
      // 曲线
      #place(dx: 0pt, dy: 0pt)[
        #curve(curve.move(pts.first()), ..pts.slice(1).map(p => curve.line(p)), stroke: 0.9pt)
      ]
      // 标注
      #place(dx: X(3) + 2pt, dy: Y(0) - 12pt)[$x$]
      #place(dx: X(0) + 4pt, dy: Y(3.02) - 14pt)[$y$]
      #place(dx: X(0) - 12pt, dy: Y(3) - 6pt)[$3$]
      #place(dx: X(1) - 3pt, dy: Y(0) + 4pt)[$1$]
      #place(dx: X(3) - 3pt, dy: Y(0) + 4pt)[$3$]
    ]
  ]

  === 解析

  由图象可知，$f(x)$ 在 $x = 1$ 处的切线过 $(0, 3)$ 与 $(3, 0)$ 两点，因此切线的斜率为
  $ f'(1) = (0 - 3) / (3 - 0) = -1 $

  切线与曲线在 $x = 1$ 处相切，把 $x = 1$ 代入切线方程 $y = 3 - x$，得
  $ f(1) = 2 $

  对 $g(x) = x f(x)$ 求导：
  $ g'(x) = f(x) + x f'(x) $

  所以
  $ g(1) = 1 dot f(1) = 2, quad g'(1) = f(1) + 1 dot f'(1) = 2 - 1 = 1 $

  故所求切线为 $y - 2 = 1 dot (x - 1)$，即

  $ y = x + 1 $（或写成 $x - y + 1 = 0$）

  == 【3】由切线方程求参数

  *【3】* 已知函数 $f(x) = x^3 + a x^2 + 2x$ 的图象在点 $(1, f(1))$ 处的切线方程为 $y = 3x + b$，则 $a + b = $ #underline[#h(5em)]。

  === 解析

  对 $f(x) = x^3 + a x^2 + 2x$ 求导：
  $ f'(x) = 3x^2 + 2a x + 2 $

  切线的斜率为 3，所以
  $ f'(1) = 3 + 2a + 2 = 2a + 5 = 3 $

  解得 $a = -1$。又切点为 $(1, f(1))$，且
  $ f(1) = 1 + a + 2 = a + 3 = 2 $

  把点 $(1, 2)$ 代入切线方程 $y = 3x + b$，得 $2 = 3 + b$，故 $b = -1$。

  所以
  $ a + b = -1 + (-1) = -2 $

  == 【4】两曲线的公切线

  *【4】* 若直线 $y = k x$（$k$ 为常数）与曲线 $f(x) = ln x$、曲线 $g(x) = a e^x$ 均相切，则 $a = $ #underline[#h(5em)]。

  === 解析

  先求与 $f(x) = ln x$ 相切、且过原点的直线。设切点为 $(x_1, ln x_1)$，则切线斜率为
  $ k = f'(x_1) = 1/x_1 $

  又切点在直线 $y = k x$ 上，所以
  $ ln x_1 = k x_1 = 1 $

  故 $x_1 = e$，$k = 1/e$，公切线为 $y = x/e$。

  再设 $g(x) = a e^x$ 上的切点为 $(x_2, a e^(x_2))$，同理有
  $ g'(x_2) = a e^(x_2) = 1/e, quad a e^(x_2) = x_2/e $

  由第一式得 $a e^(x_2) = 1/e$，代入第二式得 $x_2 = 1$，于是
  $ a e = 1/e => a = 1/e^2 $
]
