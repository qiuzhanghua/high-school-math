
#import "template.typ": *
#set document(title: [圆锥曲线硬解])
#template(page-footer: "第 1 页")[
  #set math.equation(numbering: "(1)")

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 14pt,
    [
      = 椭圆与直线

      设椭圆
      $
        frac(x^2, a^2) + frac(y^2, b^2) = 1
      $
      与直线
      $
        A x + B y + C = 0
      $
      相交于 $P(x_1, y_1)$、$Q(x_2, y_2)$。


      #table(
        columns: (auto, 1fr),
        stroke: 0.5pt,
        align: (left, center),
        inset: (x: 5pt, y: 8pt),
        [*项目*], [*表达式*],
        [二次项系数], $a^2 A^2 + b^2 B^2 > 0$,
        [相交条件], $Delta = 4 a^2 b^2 (a^2 A^2 + b^2 B^2 - C^2) > 0$,
        [判别式], $Delta_x = Delta dot B^2, quad Delta_y = Delta dot A^2$,
      )



      #table(
        columns: (auto, 1fr),
        stroke: 0.5pt,
        align: (left, center),
        inset: (x: 5pt, y: 8pt),
        [*表达式*], [*结果*],
        [$x_1 + x_2$], $-frac(2 a^2 A C, a^2 A^2 + b^2 B^2)$,
        [$x_1 x_2$], $frac(a^2 (C^2 - b^2 B^2), a^2 A^2 + b^2 B^2)$,
        [$y_1 + y_2$], $-frac(2 b^2 B C, a^2 A^2 + b^2 B^2)$,
        [$y_1 y_2$], $frac(b^2 (C^2 - a^2 A^2), a^2 A^2 + b^2 B^2)$,
        [$x_1 y_2 + x_2 y_1$], $frac(2 a^2 b^2 A B, a^2 A^2 + b^2 B^2)$,
      )
    ],
    [
      = 双曲线与直线

      设双曲线
      $
        frac(x^2, a^2) - frac(y^2, b^2) = 1
      $
      与直线
      $
        A x + B y + C = 0
      $
      相交于 $P(x_1, y_1)$、$Q(x_2, y_2)$。

      #table(
        columns: (auto, 1fr),
        stroke: 0.5pt,
        align: (left, center),
        inset: (x: 5pt, y: 8pt),
        [*项目*], [*表达式*],
        [二次项系数], $a^2 A^2 - b^2 B^2 != 0$,
        [相交条件], $Delta = -4 a^2 b^2 (a^2 A^2 - b^2 B^2 - C^2) > 0$,
        [判别式], $Delta_x = Delta dot B^2, quad Delta_y = Delta dot A^2$,
      )


      #table(
        columns: (auto, 1fr),
        stroke: 0.5pt,
        align: (left, center),
        inset: (x: 5pt, y: 8pt),
        [*表达式*], [*结果*],
        [$x_1 + x_2$], $-frac(2 a^2 A C, a^2 A^2 - b^2 B^2)$,
        [$x_1 x_2$], $frac(a^2 (C^2 + b^2 B^2), a^2 A^2 - b^2 B^2)$,
        [$y_1 + y_2$], $frac(2 b^2 B C, a^2 A^2 - b^2 B^2)$,
        [$y_1 y_2$], $-frac(b^2 (C^2 - a^2 A^2), a^2 A^2 - b^2 B^2)$,
        [$x_1 y_2 + x_2 y_1$], $-frac(2 a^2 b^2 A B, a^2 A^2 - b^2 B^2)$,
      )
    ],
  )
  == 习题

  *【习题 1】* 已知椭圆 $C: x^2/4 + y^2 = 1$，点 $A(2, 0)$，直线 $l$ 与椭圆 $C$ 交于 $M$、$N$ 两点，若始终有

  $ k_("AM") + k_("AN") = 1 $

  试判断直线 $l$ 是否过定点？若是，求出该定点。

  *思路提示*（四条路都可以走，供练习时对照）：

  - 方法 1：硬解定理（保底做法，直接设 $l: y = k x + m$ 联立）；
  - 方法 2：把坐标原点平移到 $A$，再用齐次化（最优）；
  - 方法 3：对合点互相在极线上，取特殊情况计算（适合填空）；
  - 方法 4：套用现成公式。


  #pagebreak()
  = 抛物线与直线

  设抛物线
  $
    y^2 = 2 p x
  $
  与直线
  $
    A x + B y + C = 0
  $
  相交于 $P(x_1, y_1)$、$Q(x_2, y_2)$。

  #table(
    columns: (auto, 1fr),
    stroke: 0.5pt,
    align: (left, center),
    inset: (x: 5pt, y: 8pt),
    [*项目*], [*表达式*],
    [二次项系数], $A != 0$,
    [相交条件], $Delta = 4 p (p B^2 - 2 A C) > 0$,
    [判别式], $Delta_x = Delta dot B^2, quad Delta_y = Delta dot A^2$,
  )


  #table(
    columns: (auto, 1fr),
    stroke: 0.5pt,
    align: (left, center),
    inset: (x: 5pt, y: 8pt),
    [*表达式*], [*结果*],
    [$y_1 + y_2$], $-frac(2 p B, A)$,
    [$y_1 y_2$], $frac(2 p C, A)$,
    [$x_1 + x_2$], $frac(2 p B^2 - 2 A C, A^2)$,
    [$x_1 x_2$], $frac(C^2, A^2)$,
    [$x_1 y_2 + x_2 y_1$], $-frac(2 p B C, A^2)$,
  )


]
