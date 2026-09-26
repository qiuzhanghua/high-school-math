#import "template.typ": *

#set document(title: [等积法求距离])

#template(heading2-align: left, page-footer: "第 1 页")[

  == 一、等积法（等体积法）求距离

  *原理*：同一个三棱锥可以选择*不同的底面*来计算体积，而体积是不变的。把所求的"距离"看作某条高，就可以用另一种方式算出同一个体积，从而反解出这条高。

  具体地：要求点 $A$ 到平面 $B C D$ 的距离 $d$，就把 $d$ 看作三棱锥 $A - B C D$ 的高：

  $ V_(A - B C D) = 1/3 dot S_(triangle B C D) dot d, $

  再用*别的顶点、别的底面*把这个体积算出来（记为 $V_0$），于是

  $ d = (3 V_0)/S_(triangle B C D). $

  *几条常用结论*：

  - 直棱柱 $A B C - A_1 B_1 C_1$ 中，三棱锥 $A_1 - A B C$ 与棱柱*同底同高*，故 $V_(A_1 - A B C) = 1/3 V_("柱")$；
  - 等底等高的锥体体积相等；四面体 $A B C D$ 记作 $V_(A B C D)$（四个顶点不论顺序都是同一个四面体）；
  - "点到平面的距离"也可以转化为"平行线上任意一点到该平面的距离"（当这条线与平面平行时）。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 二、典型例题

  === 【例 1】求 $A$ 到平面 $A_1 B C$ 的距离

  *【例 1】* 如图，直三棱柱 $A B C - A_1 B_1 C_1$ 的体积为 $4$，$triangle A_1 B C$ 的面积为 $2 sqrt(2)$。求 $A$ 到平面 $A_1 B C$ 的距离。

  #align(center)[
    #block(breakable: false, width: 240pt, height: 290pt)[
      // 底面 ABC
      #place(dx: 40pt, dy: 240pt, line(end: (100pt, 25pt), stroke: 0.8pt))       // A→B
      #place(dx: 140pt, dy: 265pt, line(end: (60pt, -50pt), stroke: 0.8pt))      // B→C
      #place(dx: 40pt, dy: 240pt, line(end: (160pt, -25pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // A→C（被挡）
      // 顶面 A1B1C1
      #place(dx: 40pt, dy: 130pt, line(end: (100pt, 25pt), stroke: 0.8pt))       // A1→B1
      #place(dx: 140pt, dy: 155pt, line(end: (60pt, -50pt), stroke: 0.8pt))      // B1→C1
      #place(dx: 40pt, dy: 130pt, line(end: (160pt, -25pt), stroke: 0.8pt))      // A1→C1
      // 侧棱
      #place(dx: 40pt, dy: 240pt, line(end: (0pt, -110pt), stroke: 0.8pt))       // A→A1
      #place(dx: 140pt, dy: 265pt, line(end: (0pt, -110pt), stroke: 0.8pt))      // B→B1
      #place(dx: 200pt, dy: 215pt, line(end: (0pt, -110pt), stroke: 0.8pt))      // C→C1
      // 三棱锥 A1—ABC 的三条边（红）
      #place(dx: 40pt, dy: 130pt, line(end: (100pt, 135pt), stroke: (paint: rgb("#c7362e"), thickness: 1.1pt)))   // A1→B
      #place(dx: 140pt, dy: 265pt, line(end: (60pt, -50pt), stroke: (paint: rgb("#c7362e"), thickness: 1.1pt)))   // B→C
      #place(dx: 200pt, dy: 215pt, line(end: (-160pt, -85pt), stroke: (paint: rgb("#c7362e"), thickness: 1.1pt))) // C→A1
      // 点
      #place(dx: 38pt, dy: 238pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 138pt, dy: 263pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 198pt, dy: 213pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 38pt, dy: 128pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 138pt, dy: 153pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 198pt, dy: 103pt, circle(radius: 1.8pt, fill: black))
      // 标签
      #place(dx: 20pt, dy: 240pt)[$A$]
      #place(dx: 144pt, dy: 268pt)[$B$]
      #place(dx: 204pt, dy: 214pt)[$C$]
      #place(dx: 18pt, dy: 118pt)[$A_1$]
      #place(dx: 142pt, dy: 142pt)[$B_1$]
      #place(dx: 204pt, dy: 94pt)[$C_1$]
    ]
  ]

  图中红线围出三棱锥 $A_1 - A B C$（也就是四面体 $A_1 A B C$ 的三条"斜"棱 $A_1 B$、$B C$、$C A_1$）；灰虚线 $A C$ 为被挡住的棱。
  同一个四面体换个角度看就是 $A - A_1 B C$，于是它的体积既能用底面 $A B C$ 算，也能用底面 $triangle A_1 B C$ 算。

  === 解析

  *思路*：所求距离 $d$ 就是三棱锥 $A - A_1 B C$ 的高。把同一个四面体看成 $A_1 - A B C$，它与直三棱柱*同底同高*，体积立刻可知；再用底面 $triangle A_1 B C$ 算一次，即可反解 $d$。

  *解*：

  1. 因为三棱柱是*直*三棱柱，三棱锥 $A_1 - A B C$ 与三棱柱同底（底面 $triangle A B C$）同高（侧棱 $A A_1$），所以

  $ V_(A_1 - A B C) = 1/3 V_("柱") = 1/3 times 4 = 4/3. $

  2. 设 $A$ 到平面 $A_1 B C$ 的距离为 $d$。四面体 $A_1 A B C$ 换个顶点看就是 $A - A_1 B C$，故

  $ V_(A - A_1 B C) = 1/3 dot S_(triangle A_1 B C) dot d = 1/3 times 2 sqrt(2) d. $

  3. 同一个四面体，两个结果相等：

  $ 1/3 times 2 sqrt(2) d = 4/3 quad => quad d = 4/(2 sqrt(2)) = sqrt(2). $

  所以 $A$ 到平面 $A_1 B C$ 的距离为 $sqrt(2)$。

  === 要点

  - *等积法的核心是"同一个四面体、两种看法"*：$A_1 - A B C$ 与 $A - A_1 B C$ 是同一个四面体，体积相等——这一步写清楚，后面的方程就自然成立。
  - *先把好算的体积算出来*：直棱柱中"锥 = 柱的三分之一"是最常用的一条；本题棱柱体积直接给出 $4$，于是四面体体积 $= 4/3$。
  - *所求距离当作"高"*：$d = 3 V_0 / S$，注意分母是"另一个底面"的面积（本题是 $triangle A_1 B C$ 的面积 $2 sqrt(2)$）。
  - *不必知道棱柱的具体形状*：题目只给体积，说明这个距离与棱柱的具体尺寸无关，只由体积与截面面积决定——这正是等积法的好处。
  - *书写规范*：先写 $V_(A_1 - A B C) = 1/3 V_("柱")$（交代依据），再写 $V_(A - A_1 B C) = 1/3 S d$，最后联立求解。
]
