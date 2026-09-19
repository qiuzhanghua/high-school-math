#import "template.typ": *

#set document(title: [面面相交])

#template(heading2-align: left, page-footer: "第 1 页")[
  #set math.equation(numbering: "(1)")

  == 一、面面交线的作法与性质

  *基本事实*：两个平面如果有公共点，那么它们有且只有一条过该点的公共直线（这条直线就是两平面的*交线*）。

  *找交线的两条常用思路*：

  - *找两个公共点*：分别在两个平面内找出两个公共点，连线即得交线；
  - *延长法*：把两个平面内的两条共面直线延长求交点，再用两条交线确定交线（"延长—交点—连线"）。

  *性质（与线面平行联系起来）*：若 $a text(∥) alpha$、$a subset beta$ 且 $alpha inter beta = l$，则

  $ a text(∥) l. $

  *性质（与面面平行联系起来）*：若 $alpha text(∥) beta$，第三个平面 $gamma$ 与它们分别交于 $m$、$n$，则 $m text(∥) n$。

  由这两条性质可知：*"面面交线"的题，通常先把交线"搬"到已知的平行关系上*，再借助线面垂直（或面面垂直）完成证明。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 二、典型例题

  === 【例 1】证交线 $l perp$ 平面 $P D C$

  *【例 1】* 如图，四棱锥 $P - A B C D$ 的底面为正方形，$P D perp$ 底面 $A B C D$。设平面 $P A D$ 与平面 $P B C$ 的交线为 $l$。证明：$l perp$ 平面 $P D C$。

  #align(center)[
    #block(breakable: false, width: 220pt, height: 290pt)[
      // 底面正方形 ABCD（斜二测：A、B 在前，D、C 在后）
      #place(dx: 40pt, dy: 250pt, line(end: (110pt, 0pt), stroke: 0.8pt))        // A→B
      #place(dx: 150pt, dy: 250pt, line(end: (55pt, -55pt), stroke: 0.8pt))      // B→C
      #place(dx: 205pt, dy: 195pt, line(end: (-110pt, 0pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // C→D（被挡）
      #place(dx: 95pt, dy: 195pt, line(end: (-55pt, 55pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // D→A（被挡）
      // 侧棱与高 PD
      #place(dx: 95pt, dy: 70pt, line(end: (-55pt, 180pt), stroke: 0.8pt))       // P→A
      #place(dx: 95pt, dy: 70pt, line(end: (55pt, 180pt), stroke: 0.8pt))        // P→B
      #place(dx: 95pt, dy: 70pt, line(end: (110pt, 125pt), stroke: 0.8pt))       // P→C
      #place(dx: 95pt, dy: 70pt, line(end: (0pt, 125pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))     // P→D（高）
      // 点
      #place(dx: 93pt, dy: 68pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 38pt, dy: 248pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 148pt, dy: 248pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 203pt, dy: 193pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 93pt, dy: 193pt, circle(radius: 1.8pt, fill: black))
      // 标签
      #place(dx: 98pt, dy: 58pt)[$P$]
      #place(dx: 22pt, dy: 250pt)[$A$]
      #place(dx: 150pt, dy: 254pt)[$B$]
      #place(dx: 208pt, dy: 190pt)[$C$]
      #place(dx: 82pt, dy: 186pt)[$D$]
    ]
  ]

  图中 $P$ 在 $D$ 的正上方（$P D perp$ 底面，画成虚线）；$A B C D$ 按斜二测画成平行四边形，$D A$、$D C$ 被挡住画虚线。

  === 解析

  *思路*：$l$ 是平面 $P A D$ 与平面 $P B C$ 的交线，但它"看不见、也画不出来"。注意到 $A D text(∥) B C$，于是 $A D text(∥)$ 平面 $P B C$，再由线面平行的性质即可断定 $l text(∥) A D$——把 $l$ "搬"成了 $A D$，问题就落到 $A D$ 上。

  *证明*：

  1. 因为底面 $A B C D$ 是正方形，所以 $A D text(∥) B C$。又 $B C subset$ 平面 $P B C$，$A D subset.not$ 平面 $P B C$，故

  $ A D text(∥) "平面" P B C. $

  2. 又 $A D subset$ 平面 $P A D$，且平面 $P A D inter$ 平面 $P B C = l$，由线面平行的性质定理得

  $ A D text(∥) l. $

  3. 因为 $P D perp$ 底面 $A B C D$，而 $A D subset$ 底面 $A B C D$，所以

  $ P D perp A D. $

  又底面是正方形，$C D perp A D$；而 $P D$、$C D$ 是平面 $P D C$ 内两条相交直线（交于 $D$），故

  $ A D perp "平面" P D C. $

  4. 由 $A D text(∥) l$ 得

  $ l perp "平面" P D C. quad square $

  === 要点

  - *交线看不见就"搬"*：$l$ 无法直接画出，利用 $A D text(∥)$ 平面 $P B C$ + 线面平行的性质得到 $l text(∥) A D$，把关于 $l$ 的问题转化为关于 $A D$ 的问题——这是面面交线类问题的通用套路。
  - *用性质定理要写全三件事*：线面平行（$A D text(∥)$ 平面 $P B C$）、直线在另一平面内（$A D subset$ 平面 $P A D$）、两平面交于 $l$，才能得 $A D text(∥) l$。
  - *证线面垂直要两条相交直线*：$A D perp P D$（来自 $P D perp$ 底面）与 $A D perp C D$（正方形），二者在 $D$ 处相交。
  - *平行线传递垂直*：$A D perp$ 平面 $P D C$ 且 $l text(∥) A D$，故 $l perp$ 平面 $P D C$。
  - *作图要点*：$P D perp$ 底面 $=>$ $P$ 必须画在 $D$ 的正上方；被挡住的 $D A$、$D C$ 用虚线。
]
