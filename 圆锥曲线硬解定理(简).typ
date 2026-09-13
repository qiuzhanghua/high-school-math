
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

  == 判别式

  #table(
    columns: (auto, 1fr),
    stroke: 0.5pt,
    align: (left, center),
    inset: (x: 12pt, y: 10pt),
    [*项目*], [*表达式*],
    [相交条件], $Delta = a^2 A^2 + b^2 B^2 - C^2 > 0$,
    [判别式 $Delta_x$], $Delta_x = 4 a^2 b^2 B^2 (a^2 A^2 + b^2 B^2 - C^2) = Delta dot B^2$,
    [判别式 $Delta_y$], $Delta_y = 4 a^2 b^2 A^2 (a^2 A^2 + b^2 B^2 - C^2) = Delta dot A^2$,
  )


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
    [$x_1 y_2 + x_2 y_1$], $frac(2 a^2 b^2 A B, a^2 A^2 + b^2 B^2)$,
  )

  #pagebreak()

  = 双曲线与直线硬解公式

  设双曲线
  $
    frac(x^2, a^2) - frac(y^2, b^2) = 1
  $
  与直线
  $
    A x + B y + C = 0
  $
  相交于 $P(x_1, y_1)$、$Q(x_2, y_2)$。

  == 判别式

  #table(
    columns: (auto, 1fr),
    stroke: 0.5pt,
    align: (left, center),
    inset: (x: 12pt, y: 10pt),
    [*项目*], [*表达式*],
    [相交条件], $Delta = a^2 A^2 - b^2 B^2 - C^2 > 0$,
    [判别式 $Delta_x$], $Delta_x = 4 a^2 b^2 B^2 (a^2 A^2 - b^2 B^2 - C^2) = Delta dot B^2$,
    [判别式 $Delta_y$], $Delta_y = 4 a^2 b^2 A^2 (a^2 A^2 - b^2 B^2 - C^2) = Delta dot A^2$,
  )


  == 韦达定理

  #table(
    columns: (auto, 1fr),
    stroke: 0.5pt,
    align: (left, center),
    inset: (x: 12pt, y: 10pt),
    [*表达式*], [*结果*],
    [$x_1 + x_2$], $-frac(2 a^2 A C, a^2 A^2 - b^2 B^2)$,
    [$x_1 x_2$], $frac(a^2 (C^2 + b^2 B^2), a^2 A^2 - b^2 B^2)$,
    [$y_1 + y_2$], $frac(2 b^2 B C, a^2 A^2 - b^2 B^2)$,
    [$y_1 y_2$], $frac(b^2 (C^2 - a^2 A^2), a^2 A^2 - b^2 B^2)$,
    [$x_1 y_2 + x_2 y_1$], $frac(2 a^2 b^2 A B, a^2 A^2 - b^2 B^2)$,
  )

  #pagebreak()

  = 抛物线与直线硬解公式

  设抛物线
  $
    y^2 = 2 p x
  $
  与直线
  $
    A x + B y + C = 0
  $
  相交于 $P(x_1, y_1)$、$Q(x_2, y_2)$。

  == 判别式

  #table(
    columns: (auto, 1fr),
    stroke: 0.5pt,
    align: (left, center),
    inset: (x: 12pt, y: 10pt),
    [*项目*], [*表达式*],
    [相交条件], $Delta = 2 p B^2 - 2 p A C > 0$,
    [判别式 $Delta_x$], $Delta_x = 4 p^2 B^2 (2 p B^2 - 2 p A C) = 4 p^2 B^2 dot Delta$,
    [判别式 $Delta_y$], $Delta_y = 4 p^2 A^2 (2 p B^2 - 2 p A C) = 4 p^2 A^2 dot Delta$,
  )


  == 韦达定理

  #table(
    columns: (auto, 1fr),
    stroke: 0.5pt,
    align: (left, center),
    inset: (x: 12pt, y: 10pt),
    [*表达式*], [*结果*],
    [$y_1 + y_2$], $-frac(2 p B, A)$,
    [$y_1 y_2$], $frac(2 p C, A)$,
    [$x_1 + x_2$], $frac(2 p B^2 - 2 A C, A^2)$,
    [$x_1 x_2$], $frac(C^2, A^2)$,
    [$x_1 y_2 + x_2 y_1$], $-frac(2 p C, A)$,
  )

]
