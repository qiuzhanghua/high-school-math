
#import "template.typ": *
#set document(title: [椭圆与直线硬解公式])
#template(page-footer: "第 1 页")[
  #set math.equation(numbering: "(1)")

  = 椭圆与直线硬解公式

  设椭圆
  $
    frac(x^2, a^2) + frac(y^2, b^2) = 1
  $
  与直线
  $
    A x + B y + C = 0
  $
  相交于 $P(x_1, y_1)$、$Q(x_2, y_2)$。

  相交条件：
  $
    a^2 A^2 + b^2 B^2 - C^2 > 0
  $

  == 联立方程与判别式

  #table(
    columns: (auto, 1fr),
    stroke: 0.5pt,
    align: (left, center),
    inset: (x: 12pt, y: 10pt),
    [*项目*], [*表达式*],
    [关于 $x$ 的二次方程], $(a^2 A^2 + b^2 B^2) x^2 + 2 a^2 A C x + a^2 (C^2 - b^2 B^2) = 0$,
    [关于 $y$ 的二次方程], $(a^2 A^2 + b^2 B^2) y^2 + 2 b^2 B C y + b^2 (C^2 - a^2 A^2) = 0$,
    [判别式 $Delta_x$], $Delta_x = 4 a^2 b^2 B^2 (a^2 A^2 + b^2 B^2 - C^2)$,
    [判别式 $Delta_y$], $Delta_y = 4 a^2 b^2 A^2 (a^2 A^2 + b^2 B^2 - C^2)$,
    [相交条件], $a^2 A^2 + b^2 B^2 - C^2 > 0$,
  )

  #line(length: 100%, stroke: 0.5pt + gray)

  == 韦达定理

  #table(
    columns: (auto, 1fr),
    stroke: 0.5pt,
    align: (left, center),
    inset: (x: 12pt, y: 10pt),
    [*表达式*], [*结果*],
    [$x_1 + x_2$], $-frac(2 a^2 A C, a^2 A^2 + b^2 B^2)$,
    [$x_1 x_2$], $frac(a^2 (C^2 - b^2 B^2), a^2 A^2 + b^2 B^2)$,
    [$y_1 + y_2$], $-frac(2 b^2 B C, a^2 A^2 + b^2 B^2)$,
    [$y_1 y_2$], $frac(b^2 (C^2 - a^2 A^2), a^2 A^2 + b^2 B^2)$,
  )
  #pagebreak()

  #line(length: 100%, stroke: 0.5pt + gray)

  == 对称与交叉项

  #table(
    columns: (auto, 1fr),
    stroke: 0.5pt,
    align: (left, center),
    inset: (x: 12pt, y: 10pt),
    [*表达式*], [*结果*],
    [$x_1 y_2 + x_2 y_1$], $frac(2 a^2 b^2 A B, a^2 A^2 + b^2 B^2)$,
    [$x_1 y_2 - x_2 y_1$], $plus.minus frac(2 a b C sqrt(a^2 A^2 + b^2 B^2 - C^2), a^2 A^2 + b^2 B^2)$,
    [$x_1 x_2 + y_1 y_2$], $frac((a^2 + b^2) C^2 - a^2 b^2 (A^2 + B^2), a^2 A^2 + b^2 B^2)$,
    [$x_1 x_2 - y_1 y_2$], $frac(a^2 (C^2 - b^2 B^2) - b^2 (C^2 - a^2 A^2), a^2 A^2 + b^2 B^2)$,
  )

  其中 $x_1 y_2 - x_2 y_1$ 的符号由 $x_2 - x_1$ 的正负决定。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 弦长与中点

  #table(
    columns: (auto, 1fr),
    stroke: 0.5pt,
    align: (left, center),
    inset: (x: 12pt, y: 10pt),
    [*表达式*], [*结果*],
    [弦长 $|P Q|$], $frac(2 a b sqrt(A^2 + B^2) sqrt(a^2 A^2 + b^2 B^2 - C^2), a^2 A^2 + b^2 B^2)$,
    [中点 $x_0$], $-frac(a^2 A C, a^2 A^2 + b^2 B^2)$,
    [中点 $y_0$], $-frac(b^2 B C, a^2 A^2 + b^2 B^2)$,
    [中点坐标], $(-frac(a^2 A C, a^2 A^2 + b^2 B^2), -frac(b^2 B C, a^2 A^2 + b^2 B^2))$,
  )

  #line(length: 100%, stroke: 0.5pt + gray)

  == 垂直与数量积条件

  #table(
    columns: (auto, 1fr),
    stroke: 0.5pt,
    align: (left, center),
    inset: (x: 12pt, y: 10pt),
    [*条件*], [*等价表达式*],
    [$O P perp O Q$], $x_1 x_2 + y_1 y_2 = 0$,
    [即], $(a^2 + b^2) C^2 - a^2 b^2 (A^2 + B^2) = 0$,
    [$x_1 y_2 - x_2 y_1 = 0$], $C sqrt(a^2 A^2 + b^2 B^2 - C^2) = 0$,
  )

]
