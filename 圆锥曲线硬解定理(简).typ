#import "template.typ": *

#set page(flipped: true)
#set document(title: [圆锥曲线硬解定理（简）])

#template(heading2-align: left, page-footer: "第 1 页")[
  #set math.equation(numbering: none)

  #align(center)[#text(size: 13pt, weight: "bold")[圆锥曲线硬解定理（简）——椭圆与双曲线对照]]

  #v(3pt)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 16pt,
    [
      *#text(size: 12pt)[一、椭圆]*

      $ frac(x^2, a^2) + frac(y^2, b^2) = 1 quad "与" quad A x + B y + C = 0 $

      交于 $P(x_1, y_1)$、$Q(x_2, y_2)$。

      #v(1pt)
      *判别式*

      #table(
        columns: (auto, 1fr),
        stroke: 0.5pt,
        align: (left, center),
        inset: (x: 5pt, y: 7pt),
        [*项目*], [*表达式*],
        [二次项系数], $a^2 A^2 + b^2 B^2 > 0$,
        [相交条件], $Delta = 4 a^2 b^2 (a^2 A^2 + b^2 B^2 - C^2) > 0$,
        [判别式], $Delta_x = Delta dot B^2, quad Delta_y = Delta dot A^2$,
      )

      #v(1pt)
      *韦达定理*

      #table(
        columns: (auto, 1fr),
        stroke: 0.5pt,
        align: (left, center),
        inset: (x: 5pt, y: 7pt),
        [*表达式*], [*结果*],
        [$x_1 + x_2$], $(-2 a^2 A C) / (a^2 A^2 + b^2 B^2)$,
        [$x_1 x_2$], $(a^2 (C^2 - b^2 B^2)) / (a^2 A^2 + b^2 B^2)$,
        [$y_1 + y_2$], $(-2 b^2 B C) / (a^2 A^2 + b^2 B^2)$,
        [$y_1 y_2$], $(b^2 (C^2 - a^2 A^2)) / (a^2 A^2 + b^2 B^2)$,
        [$x_1 y_2 + x_2 y_1$], $(2 a^2 b^2 A B) / (a^2 A^2 + b^2 B^2)$,
      )
    ],
    [
      *#text(size: 12pt)[二、双曲线]*

      $ frac(x^2, a^2) - frac(y^2, b^2) = 1 quad "与" quad A x + B y + C = 0 $

      交于 $P(x_1, y_1)$、$Q(x_2, y_2)$。

      #v(1pt)
      *判别式*

      #table(
        columns: (auto, 1fr),
        stroke: 0.5pt,
        align: (left, center),
        inset: (x: 5pt, y: 7pt),
        [*项目*], [*表达式*],
        [二次项系数], $a^2 A^2 - b^2 B^2 != 0$,
        [相交条件], $Delta = -4 a^2 b^2 (a^2 A^2 - b^2 B^2 - C^2) > 0$,
        [判别式], $Delta_x = Delta dot B^2, quad Delta_y = Delta dot A^2$,
      )

      #v(1pt)
      *韦达定理*

      #table(
        columns: (auto, 1fr),
        stroke: 0.5pt,
        align: (left, center),
        inset: (x: 5pt, y: 7pt),
        [*表达式*], [*结果*],
        [$x_1 + x_2$], $(-2 a^2 A C) / (a^2 A^2 - b^2 B^2)$,
        [$x_1 x_2$], $(a^2 (C^2 + b^2 B^2)) / (a^2 A^2 - b^2 B^2)$,
        [$y_1 + y_2$], $(2 b^2 B C) / (a^2 A^2 - b^2 B^2)$,
        [$y_1 y_2$], $(-b^2 (C^2 - a^2 A^2)) / (a^2 A^2 - b^2 B^2)$,
        [$x_1 y_2 + x_2 y_1$], $(-2 a^2 b^2 A B) / (a^2 A^2 - b^2 B^2)$,
      )
    ],
  )

  #v(1pt)
  #line(length: 100%, stroke: 0.5pt + gray)
  #v(1pt)
  #text(
    size: 10pt,
  )[*对照记忆*：椭圆与双曲线的判别式、韦达定理只差*符号*——把 $b^2$ 看成 $-b^2$（即把 $b^2 B^2$ 的符号反过来）即可互相转化；两张表的 $Delta_x = Delta B^2$、$Delta_y = Delta A^2$ 完全一致。]
]
