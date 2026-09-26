#import "template.typ": *

#set document(title: [几何法求角])

#template(heading2-align: left, page-footer: "第 1 页")[

  == 一、几何法求异面直线所成的角

  *定义*：把两条异面直线中的一条（或两条）*平移*，使它们相交，所成的锐角（或直角）就叫做异面直线所成的角；它的取值范围是 $0degree < theta <= 90degree$。

  *平移的三条常用途径*：

  - *中位线*：三角形两边中点的连线平行于第三边（最常用）；
  - *平行四边形*：对边平行且相等，可把一条直线"搬"到任意位置；
  - *正方体、长方体中的平行关系*：如 $B D text(∥) B_1 D_1$、$A_1 B text(∥) D_1 C$ 等。

  *计算步骤*：① 平移，作出所成的角；② 证明所作的角就是所求角；③ 把它放到某个三角形中，用勾股定理或余弦定理算出这个角。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 二、例题

  === 【例 1】正方体中求异面直线 $B_1 C$ 与 $E F$ 所成的角

  *【例 1】* 如图所示，在正方体 $A B C D - A_1 B_1 C_1 D_1$ 中，$E$、$F$ 分别是 $A B$、$A D$ 的中点，则异面直线 $B_1 C$ 与 $E F$ 所成角的大小为（#h(0.6em)）

  #grid(columns: (1fr, 1fr, 1fr, 1fr), gutter: 4pt,
    [(A) $30degree$], [(B) $45degree$], [(C) $60degree$], [(D) $90degree$])

  #align(center)[
    #block(breakable: false, width: 245pt, height: 265pt)[
      // 正方体（前面 ABB1A1，后面 DCC1D1）
      #place(dx: 30pt, dy: 210pt, line(end: (100pt, 0pt), stroke: 0.8pt))       // A→B
      #place(dx: 130pt, dy: 210pt, line(end: (0pt, -100pt), stroke: 0.8pt))     // B→B1
      #place(dx: 130pt, dy: 110pt, line(end: (-100pt, 0pt), stroke: 0.8pt))     // B1→A1
      #place(dx: 30pt, dy: 110pt, line(end: (0pt, 100pt), stroke: 0.8pt))       // A1→A
      #place(dx: 85pt, dy: 65pt, line(end: (100pt, 0pt), stroke: 0.8pt))        // D1→C1
      #place(dx: 185pt, dy: 65pt, line(end: (0pt, 100pt), stroke: 0.8pt))       // C1→C
      #place(dx: 85pt, dy: 165pt, line(end: (0pt, -100pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // D→D1
      #place(dx: 85pt, dy: 165pt, line(end: (100pt, 0pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // D→C
      #place(dx: 30pt, dy: 210pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // A→D
      #place(dx: 130pt, dy: 210pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // B→C
      #place(dx: 30pt, dy: 110pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // A1→D1
      #place(dx: 130pt, dy: 110pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // B1→C1
      // EF（红）与 B1C（蓝）
      #place(dx: 57.5pt, dy: 187.5pt, line(end: (22.5pt, 22.5pt), stroke: (paint: rgb("#c7362e"), thickness: 1.3pt)))  // F→E
      #place(dx: 130pt, dy: 110pt, line(end: (55pt, 55pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.3pt)))          // B1→C
      // 点
      #place(dx: 28pt, dy: 208pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 208pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 183pt, dy: 163pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 83pt, dy: 163pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 28pt, dy: 108pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 108pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 183pt, dy: 63pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 83pt, dy: 63pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 78pt, dy: 208pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      #place(dx: 55.5pt, dy: 185.5pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 12pt, dy: 214pt)[$A$]
      #place(dx: 134pt, dy: 214pt)[$B$]
      #place(dx: 190pt, dy: 168pt)[$C$]
      #place(dx: 72pt, dy: 168pt)[$D$]
      #place(dx: 8pt, dy: 98pt)[$A_1$]
      #place(dx: 134pt, dy: 98pt)[$B_1$]
      #place(dx: 190pt, dy: 54pt)[$C_1$]
      #place(dx: 70pt, dy: 52pt)[$D_1$]
      #place(dx: 80pt, dy: 216pt)[#text(fill: rgb("#c7362e"))[$E$]]
      #place(dx: 40pt, dy: 182pt)[#text(fill: rgb("#c7362e"))[$F$]]
    ]
  ]

  图中红线为 $E F$，蓝线为 $B_1 C$；灰虚线是正方体被挡住的棱。

  === 解析

  *思路*：$B_1 C$ 与 $E F$ 是异面直线，先把 $E F$ "平移"到与 $B_1 C$ 相交的位置。

  *解*：

  1. 在 $triangle A B D$ 中，$E$、$F$ 分别是 $A B$、$A D$ 的中点，由中位线定理得

  $ E F text(∥) B D, quad E F = 1/2 B D. $

  2. 在正方体中，$B D text(∥) B_1 D_1$（上下底面对应边平行），所以

  $ E F text(∥) B_1 D_1. $

  于是异面直线 $B_1 C$ 与 $E F$ 所成的角，就等于 $B_1 C$ 与 $B_1 D_1$ 所成的角，即 $angle D_1 B_1 C$。

  3. 连接 $D_1 C$。设正方体棱长为 $1$，则 $B_1 C$、$B_1 D_1$、$D_1 C$ 都是正方体的*面对角线*，长度都等于 $sqrt(2)$，所以 $triangle B_1 C D_1$ 是等边三角形，因此

  $ angle D_1 B_1 C = 60degree. $

  所以异面直线 $B_1 C$ 与 $E F$ 所成的角为 $60degree$，选 *(C)*。

  === 要点

  - *平移是求异面直线所成角的唯一手段*：本题用中位线把 $E F$ 换成 $B D$，再用"底面对应边平行"换成 $B_1 D_1$，两步平移把两条异面直线搬到了一个三角形里。
  - *中位线是最省力的平移*：看到"中点"，先想"连中点得中位线"。
  - *选"面对角线"作桥梁*：$B_1 C$、$B_1 D_1$、$D_1 C$ 都是面对角线，长度相同 → 直接得到等边三角形，不必再算余弦定理。
  - *范围与答案的形式*：异面直线所成角取锐角或直角，本题得 $60degree$ 合理；若算出钝角，要取它的补角。
  - *书写三步*：平移（作角）→ 说明理由（中位线、平行关系）→ 在三角形中算出这个角。
  #line(length: 100%, stroke: 0.5pt + gray)

  == 三、练习

  === 【练 1】正方体中求 $P Q$ 与 $B C_1$ 所成的角

  *【练 1】* 如图所示，正方体 $A B C D - A_1 B_1 C_1 D_1$ 中，点 $P$、$Q$ 分别是 $A D_1$、$B D$ 的中点，则异面直线 $P Q$ 和 $B C_1$ 所成角的大小为（#h(0.6em)）

  #grid(columns: (1fr, 1fr, 1fr, 1fr), gutter: 4pt,
    [(A) $30degree$], [(B) $45degree$], [(C) $60degree$], [(D) $90degree$])

  #align(center)[
    #block(breakable: false, width: 245pt, height: 265pt)[
      // 正方体
      #place(dx: 30pt, dy: 210pt, line(end: (100pt, 0pt), stroke: 0.8pt))       // A→B
      #place(dx: 130pt, dy: 210pt, line(end: (0pt, -100pt), stroke: 0.8pt))     // B→B1
      #place(dx: 130pt, dy: 110pt, line(end: (-100pt, 0pt), stroke: 0.8pt))     // B1→A1
      #place(dx: 30pt, dy: 110pt, line(end: (0pt, 100pt), stroke: 0.8pt))       // A1→A
      #place(dx: 85pt, dy: 65pt, line(end: (100pt, 0pt), stroke: 0.8pt))        // D1→C1
      #place(dx: 185pt, dy: 65pt, line(end: (0pt, 100pt), stroke: 0.8pt))       // C1→C
      #place(dx: 85pt, dy: 165pt, line(end: (0pt, -100pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // D→D1
      #place(dx: 85pt, dy: 165pt, line(end: (100pt, 0pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // D→C
      #place(dx: 30pt, dy: 210pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // A→D
      #place(dx: 130pt, dy: 210pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // B→C
      #place(dx: 130pt, dy: 110pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // B1→C1
      // 辅助线：AD1、D1C（灰虚线）
      #place(dx: 30pt, dy: 210pt, line(end: (55pt, -145pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // A→D1
      #place(dx: 85pt, dy: 65pt, line(end: (100pt, 100pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // D1→C
      // PQ（红）与 BC1（蓝）
      #place(dx: 57.5pt, dy: 137.5pt, line(end: (50pt, 50pt), stroke: (paint: rgb("#c7362e"), thickness: 1.3pt)))      // P→Q
      #place(dx: 130pt, dy: 110pt, line(end: (55pt, -45pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.3pt)))        // B→C1
      // 点
      #place(dx: 28pt, dy: 208pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 208pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 183pt, dy: 163pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 83pt, dy: 163pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 28pt, dy: 108pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 108pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 183pt, dy: 63pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 83pt, dy: 63pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 55.5pt, dy: 135.5pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      #place(dx: 105.5pt, dy: 185.5pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 12pt, dy: 214pt)[$A$]
      #place(dx: 134pt, dy: 214pt)[$B$]
      #place(dx: 190pt, dy: 168pt)[$C$]
      #place(dx: 72pt, dy: 168pt)[$D$]
      #place(dx: 8pt, dy: 98pt)[$A_1$]
      #place(dx: 134pt, dy: 98pt)[$B_1$]
      #place(dx: 190pt, dy: 54pt)[$C_1$]
      #place(dx: 70pt, dy: 52pt)[$D_1$]
      #place(dx: 38pt, dy: 128pt)[#text(fill: rgb("#c7362e"))[$P$]]
      #place(dx: 110pt, dy: 192pt)[#text(fill: rgb("#c7362e"))[$Q$]]
    ]
  ]

  图中红线为 $P Q$，蓝线为 $B C_1$；灰虚线为正方体被挡住的棱以及辅助线 $A D_1$、$D_1 C$。

  === 解析

  *思路*：$P$、$Q$ 都是中点，但它们不在同一个三角形里，需要用*向量（或平移）*把 $P Q$ 的方向找出来。

  *解*：

  1. 记 $arrow(A B) = bold(u)$、$arrow(A D) = bold(v)$、$arrow(A A_1) = bold(w)$，则 $bold(u)$、$bold(v)$、$bold(w)$ 两两垂直且长度相等（设为 $1$）。正方体中

  $ D_1 = bold(v) + bold(w), quad B = bold(u), quad D = bold(v). $

  2. 因为 $P$、$Q$ 分别是 $A D_1$、$B D$ 的中点，所以

  $ arrow(A P) = 1/2 arrow(A D_1) = 1/2 (bold(v) + bold(w)), quad arrow(A Q) = 1/2 (arrow(A B) + arrow(A D)) = 1/2 (bold(u) + bold(v)). $

  于是

  $ arrow(P Q) = arrow(A Q) - arrow(A P) = 1/2 (bold(u) - bold(w)) = 1/2 arrow(A_1 B). $

  即

  $ P Q text(∥) A_1 B. $

  3. 又在正方形 $A B B_1 A_1$ 与 $D_1 D C C_1$ 中，$A_1 B text(∥) D_1 C$；在正方形 $A D D_1 A_1$ 与 $B C C_1 B_1$ 中，$A D_1 text(∥) B C_1$。所以 $P Q$ 与 $B C_1$ 所成的角等于 $D_1 C$ 与 $A D_1$ 所成的角，即 $angle A D_1 C$。

  4. 设棱长为 $1$，则 $A D_1$、$D_1 C$、$A C$ 都是面对角线，长度都等于 $sqrt(2)$，所以 $triangle A D_1 C$ 是等边三角形，故

  $ angle A D_1 C = 60degree. $

  所以异面直线 $P Q$ 与 $B C_1$ 所成的角为 $60degree$，选 *(C)*。

  === 要点

  - *两个中点不在同一三角形里怎么办*：把已知的三条棱作为*基向量*，用向量把 $arrow(P Q)$ 表示出来（本题得 $arrow(P Q) = 1/2 arrow(A_1 B)$），这比硬找中位线更快。
  - *"中点"的向量写法*：$P$ 是 $A D_1$ 的中点 $=>$ $arrow(A P) = 1/2 arrow(A D_1)$，这是把中点条件翻译成向量的标准做法。
  - *平移的两步*：$P Q text(∥) A_1 B$，再用"面对角线互相平行"（$A_1 B text(∥) D_1 C$、$A D_1 text(∥) B C_1$）把两条直线搬到同一个三角形 $A D_1 C$ 中。
  - *又见"面对角线三角形"*：$A D_1$、$D_1 C$、$A C$ 都是面对角线 ⟹ 等边 ⟹ $60degree$，与例 1 的套路一致。
  - *范围检查*：所成角取锐角或直角，$60degree$ 合理。
  #line(length: 100%, stroke: 0.5pt + gray)

  === 【练 2】直三棱柱中求 $A C$ 与 $B D$ 所成的角

  *【练 2】* 在直三棱柱 $A B C - A_1 B_1 C_1$ 中，$D$ 为 $A_1 B_1$ 的中点，$A B = B C = 4$，$B B_1 = 1$，$A C = 2 sqrt(5)$，则异面直线 $A C$ 与 $B D$ 所成角的大小为（#h(0.6em)）

  #grid(columns: (1fr, 1fr, 1fr, 1fr), gutter: 4pt,
    [(A) $30degree$], [(B) $45degree$], [(C) $60degree$], [(D) $90degree$])

  #align(center)[
    #block(breakable: false, width: 245pt, height: 275pt)[
      // 底面 ABC（AB = BC，B 在前）
      #place(dx: 112pt, dy: 235pt, line(end: (38pt, 20pt), stroke: 0.8pt))       // A→B
      #place(dx: 150pt, dy: 255pt, line(end: (38pt, -20pt), stroke: 0.8pt))      // B→C
      // 顶面 A1B1C1
      #place(dx: 112pt, dy: 175pt, line(end: (38pt, 20pt), stroke: 0.8pt))       // A1→B1
      #place(dx: 150pt, dy: 195pt, line(end: (38pt, -20pt), stroke: 0.8pt))      // B1→C1
      #place(dx: 112pt, dy: 175pt, line(end: (76pt, 0pt), stroke: 0.8pt))        // A1→C1
      // 侧棱
      #place(dx: 112pt, dy: 235pt, line(end: (0pt, -60pt), stroke: 0.8pt))       // A→A1
      #place(dx: 150pt, dy: 255pt, line(end: (0pt, -60pt), stroke: 0.8pt))       // B→B1
      #place(dx: 188pt, dy: 235pt, line(end: (0pt, -60pt), stroke: 0.8pt))       // C→C1
      // AC（红，底面被挡但本题要突出）与 BD（蓝）
      #place(dx: 112pt, dy: 235pt, line(end: (76pt, 0pt), stroke: (paint: rgb("#c7362e"), thickness: 1.3pt)))   // A→C
      #place(dx: 150pt, dy: 255pt, line(end: (-19pt, -70pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.3pt)))// B→D
      // 点
      #place(dx: 110pt, dy: 233pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 148pt, dy: 253pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 186pt, dy: 233pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 110pt, dy: 173pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 148pt, dy: 193pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 186pt, dy: 173pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 129pt, dy: 183pt, circle(radius: 1.8pt, fill: rgb("#1f6feb")))
      // 标签
      #place(dx: 92pt, dy: 232pt)[$A$]
      #place(dx: 152pt, dy: 260pt)[$B$]
      #place(dx: 192pt, dy: 230pt)[$C$]
      #place(dx: 90pt, dy: 164pt)[$A_1$]
      #place(dx: 152pt, dy: 186pt)[$B_1$]
      #place(dx: 192pt, dy: 164pt)[$C_1$]
      #place(dx: 120pt, dy: 176pt)[#text(fill: rgb("#1f6feb"))[$D$]]
    ]
  ]

  图中红线为 $A C$，蓝线为 $B D$（$D$ 是 $A_1 B_1$ 的中点）；直三棱柱中侧棱 $perp$ 底面。

  === 解析

  *思路*：$A C$ 在底面、$B D$ 斜跨上下底面，仍用"平移 + 解三角形"。把 $A C$ 平移到上底面 $A_1 C_1$，再取中点造中位线，把两条直线搬进同一个三角形。

  *解*：

  1. 在直三棱柱中 $A C text(∥) A_1 C_1$。取 $B_1 C_1$ 的中点 $E$，连 $D E$。在 $triangle A_1 B_1 C_1$ 中，$D$、$E$ 分别是 $A_1 B_1$、$B_1 C_1$ 的中点，由中位线定理

  $ D E text(∥) A_1 C_1, quad D E = 1/2 A_1 C_1 = sqrt(5). $

  所以 $A C$ 与 $B D$ 所成的角等于 $D E$ 与 $B D$ 所成的角，即 $angle B D E$。

  2. 连 $B E$。因为 $B B_1 perp$ 上底面，所以 $B B_1 perp B_1 D$、$B B_1 perp B_1 E$，于是

  $ B D = sqrt(B_1 D^2 + B B_1^2) = sqrt(2^2 + 1^2) = sqrt(5), $

  $ B E = sqrt(B_1 E^2 + B B_1^2) = sqrt(2^2 + 1^2) = sqrt(5). $

  3. 于是在 $triangle B D E$ 中

  $ B D = B E = D E = sqrt(5), $

  即 $triangle B D E$ 是等边三角形，故

  $ angle B D E = 60degree. $

  所以异面直线 $A C$ 与 $B D$ 所成角为 $60degree$，选 *(C)*。

  === 要点

  - *"斜跨上下底面"的线段怎么处理*：先在*上底面*里造中位线（本题取 $B_1 C_1$ 的中点 $E$ 得 $D E text(∥) A_1 C_1$），再用 $A C text(∥) A_1 C_1$ 把底面的直线也搬上去，两条直线就进入同一个三角形了。
  - *直棱柱的关键作用*：$B B_1 perp$ 底面 $=>$ $B B_1 perp B_1 D$、$B B_1 perp B_1 E$，于是 $B D$、$B E$ 都能用勾股定理算出——这是"直"字的价值。
  - *数据要会用*：$A B = B C = 4$ 给 $B_1 D = B_1 E = 2$，$A C = 2 sqrt(5)$ 给 $D E = sqrt(5)$，$B B_1 = 1$ 用来补上竖直的那一条直角边。
  - *凑出等边三角形*：$B D = B E = D E = sqrt(5)$，一眼得 $60degree$，不必再用余弦定理。
  - *与前面两题对比*：例 1、练 1 靠"面对角线三角形"（等边），本题靠"中位线 + 勾股"凑出等边三角形，思路都是*平移后解三角形*。
  #line(length: 100%, stroke: 0.5pt + gray)

  == 四、典型例题（正四面体中的异面直线所成角）

  === 【例 2】正四面体中求 $C E$ 与 $B D$ 所成角的余弦值

  *【例 2】* 已知正四面体 $A B C D$ 中，$E$ 是 $A B$ 的中点，则异面直线 $C E$ 与 $B D$ 所成角的余弦值为（#h(0.6em)）

  #grid(columns: (1fr, 1fr, 1fr, 1fr), gutter: 4pt,
    [(A) $1/6$], [(B) $(sqrt(3))/6$], [(C) $1/3$], [(D) $(sqrt(3))/3$])

  #align(center)[
    #block(breakable: false, width: 250pt, height: 285pt)[
      // 正四面体 ABCD：A 上、B 左、C 下、D 右
      #place(dx: 140pt, dy: 60pt, line(end: (-90pt, 135pt), stroke: 0.8pt))      // A→B
      #place(dx: 140pt, dy: 60pt, line(end: (90pt, 135pt), stroke: 0.8pt))       // A→D
      #place(dx: 140pt, dy: 60pt, line(end: (0pt, 205pt), stroke: 0.8pt))        // A→C
      #place(dx: 50pt, dy: 195pt, line(end: (90pt, 70pt), stroke: 0.8pt))        // B→C
      #place(dx: 230pt, dy: 195pt, line(end: (-90pt, 70pt), stroke: 0.8pt))      // D→C
      // 中位线 EF 与 BD（虚线）
      #place(dx: 95pt, dy: 127.5pt, line(end: (90pt, 0pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // E→F
      #place(dx: 50pt, dy: 195pt, line(end: (180pt, 0pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))    // B→D
      // CE、CF（实线，已在上面 A→C 等之外单画以加粗）
      #place(dx: 140pt, dy: 265pt, line(end: (-45pt, -137.5pt), stroke: 0.8pt))  // C→E
      #place(dx: 140pt, dy: 265pt, line(end: (45pt, -137.5pt), stroke: 0.8pt))   // C→F
      // 点
      #place(dx: 138pt, dy: 58pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 48pt, dy: 193pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 138pt, dy: 263pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 228pt, dy: 193pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 93pt, dy: 125.5pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 183pt, dy: 125.5pt, circle(radius: 1.8pt, fill: black))
      // 标签
      #place(dx: 144pt, dy: 48pt)[$A$]
      #place(dx: 30pt, dy: 194pt)[$B$]
      #place(dx: 144pt, dy: 268pt)[$C$]
      #place(dx: 234pt, dy: 192pt)[$D$]
      #place(dx: 78pt, dy: 120pt)[$E$]
      #place(dx: 186pt, dy: 118pt)[$F$]
    ]
  ]

  图中 $E$ 是 $A B$ 的中点，$F$ 是 $A D$ 的中点；灰虚线 $E F$ 是 $triangle A B D$ 的中位线（平行于 $B D$），$B D$ 也是被挡住的棱。

  === 解析

  *思路*：取 $A D$ 的中点 $F$，用中位线把 $B D$ 平移到 $E F$，于是所求角变成 $angle C E F$，再在 $triangle C E F$ 中用余弦定理。

  *解*：

  1. 取 $A D$ 的中点 $F$，连 $E F$、$C F$。在 $triangle A B D$ 中，$E$、$F$ 分别是 $A B$、$A D$ 的中点，由中位线定理

  $ E F text(∥) B D, quad E F = 1/2 B D. $

  所以 $C E$ 与 $B D$ 所成的角等于 $C E$ 与 $E F$ 所成的角，即 $angle C E F$。

  2. 设正四面体的棱长为 $2$。因为各个面都是正三角形，

  $ E F = 1/2 B D = 1, quad C E = (sqrt(3))/2 times 2 = sqrt(3), quad C F = (sqrt(3))/2 times 2 = sqrt(3). $

  （$C E$ 是正三角形 $A B C$ 的中线，也是高；$C F$ 同理。）

  3. 在 $triangle C E F$ 中，由余弦定理

  $ cos angle C E F = (C E^2 + E F^2 - C F^2)/(2 dot C E dot E F) = (3 + 1 - 3)/(2 dot sqrt(3) dot 1) = 1/(2 sqrt(3)) = (sqrt(3))/6. $

  所以异面直线 $C E$ 与 $B D$ 所成角的余弦值为 $(sqrt(3))/6$，选 *(B)*。

  === 要点

  - *正四面体是"全等正三角形"的集合*：六个面都是正三角形，所以任意一条"中线"都同时是"高"，长度均为 $(sqrt(3))/2 a$（$a$ 为棱长）。
  - *中位线是平移利器*：取 $A D$ 的中点 $F$ 得 $E F text(∥) B D$，一步就把两条异面直线放进 $triangle C E F$。
  - *棱长可以任取*：所求的是角，与棱长无关，取 $2$ 能让 $E F = 1$、$C E = C F = sqrt(3)$ 全是整数或简单根式。
  - *余弦定理算角*：三条边 $sqrt(3)$、$1$、$sqrt(3)$ 已知，直接套公式；结果 $1/(2 sqrt(3))$ 要化简为 $(sqrt(3))/6$。
  - *范围检查*：$cos angle C E F = (sqrt(3))/6 approx 0.289 > 0$，说明所成角是锐角（约 $73.2degree$），符合异面直线所成角的范围。
  #line(length: 100%, stroke: 0.5pt + gray)

  === 【练 3】正方体中的 $O E$ 与 $F D_1$（先平移，再借坐标）

  *【练 3】* 如图，在棱长为 $2$ 的正方体 $A B C D - A_1 B_1 C_1 D_1$ 中，$O$ 是底面 $A B C D$ 的中心，$E$、$F$ 分别是 $C C_1$、$A D$ 的中点，则异面直线 $O E$ 和 $F D_1$ 所成的角的余弦值等于（#h(0.6em)）

  #grid(columns: (1fr, 1fr, 1fr, 1fr), gutter: 4pt,
    [(A) $(sqrt(10))/5$], [(B) $(sqrt(15))/5$], [(C) $4/5$], [(D) $2/3$])

  #align(center)[
    #block(breakable: false, width: 245pt, height: 265pt)[
      // 正方体
      #place(dx: 30pt, dy: 210pt, line(end: (100pt, 0pt), stroke: 0.8pt))       // A→B
      #place(dx: 130pt, dy: 210pt, line(end: (0pt, -100pt), stroke: 0.8pt))     // B→B1
      #place(dx: 130pt, dy: 110pt, line(end: (-100pt, 0pt), stroke: 0.8pt))     // B1→A1
      #place(dx: 30pt, dy: 110pt, line(end: (0pt, 100pt), stroke: 0.8pt))       // A1→A
      #place(dx: 85pt, dy: 65pt, line(end: (100pt, 0pt), stroke: 0.8pt))        // D1→C1
      #place(dx: 185pt, dy: 65pt, line(end: (0pt, 100pt), stroke: 0.8pt))       // C1→C
      #place(dx: 85pt, dy: 165pt, line(end: (0pt, -100pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // D→D1
      #place(dx: 85pt, dy: 165pt, line(end: (100pt, 0pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // D→C
      #place(dx: 30pt, dy: 210pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // A→D
      #place(dx: 130pt, dy: 210pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // B→C
      #place(dx: 130pt, dy: 110pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // B1→C1
      // 底面对角线 AC（虚线，用来定位 O）与 D1A1 的对应棱
      #place(dx: 30pt, dy: 210pt, line(end: (155pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // A→C
      // OE（红）与 FD1（蓝）
      #place(dx: 107.5pt, dy: 187.5pt, line(end: (65pt, -55pt), stroke: (paint: rgb("#c7362e"), thickness: 1.3pt)))    // O→E
      #place(dx: 57.5pt, dy: 187.5pt, line(end: (27.5pt, -122.5pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.3pt)))// F→D1
      // 点
      #place(dx: 28pt, dy: 208pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 208pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 183pt, dy: 163pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 83pt, dy: 163pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 28pt, dy: 108pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 108pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 183pt, dy: 63pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 83pt, dy: 63pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 105.5pt, dy: 185.5pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      #place(dx: 183pt, dy: 113pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      #place(dx: 55.5pt, dy: 185.5pt, circle(radius: 1.8pt, fill: rgb("#1f6feb")))
      // 标签
      #place(dx: 12pt, dy: 214pt)[$A$]
      #place(dx: 134pt, dy: 214pt)[$B$]
      #place(dx: 190pt, dy: 168pt)[$C$]
      #place(dx: 72pt, dy: 168pt)[$D$]
      #place(dx: 8pt, dy: 98pt)[$A_1$]
      #place(dx: 134pt, dy: 98pt)[$B_1$]
      #place(dx: 190pt, dy: 54pt)[$C_1$]
      #place(dx: 70pt, dy: 52pt)[$D_1$]
      #place(dx: 108pt, dy: 190pt)[#text(fill: rgb("#c7362e"))[$O$]]
      #place(dx: 188pt, dy: 110pt)[#text(fill: rgb("#c7362e"))[$E$]]
      #place(dx: 36pt, dy: 186pt)[#text(fill: rgb("#1f6feb"))[$F$]]
    ]
  ]

  图中 $O$ 是底面中心（红点，在底面对角线 $A C$ 上），$E$ 是 $C C_1$ 的中点，$F$ 是 $A D$ 的中点；
  红线为 $O E$，蓝线为 $F D_1$。

  === 解析

  *解法一（几何法，全几何证明）。*

  ① 连 $A C_1$。在 $triangle A C C_1$ 中，$O$ 是 $A C$ 的中点、$E$ 是 $C C_1$ 的中点，由中位线定理

  $ O E text(∥) A C_1. $

  ② 取 $A_1 D_1$ 的中点 $N$，连 $A N$、$C_1 N$。在正方形 $A D D_1 A_1$ 中，$F$ 是 $A D$ 的中点、$N$ 是 $A_1 D_1$ 的中点，而 $A D text(∥) A_1 D_1$，所以

  $ A F text(∥) N D_1 quad "且" quad A F = N D_1 = 1, $

  故四边形 $A F D_1 N$ 是*平行四边形*，从而

  $ A N text(∥) F D_1. $

  于是 $O E$ 与 $F D_1$ 所成的角等于 $A C_1$ 与 $A N$ 所成的角，即 $angle C_1 A N$——这两条边都从顶点 $A$ 出发，两条异面直线已经"搬"到同一个三角形 $A C_1 N$ 里了。

  ③ 在 $triangle A C_1 N$ 中算三条边（棱长为 $2$）：

  - $A C_1$ 是正方体的*体对角线*：$A C_1 = sqrt(2^2 + 2^2 + 2^2) = 2 sqrt(3)$；
  - $A N = F D_1$：在直角三角形 $F D D_1$ 中 $F D = 1$、$D D_1 = 2$，故 $F D_1 = sqrt(1^2 + 2^2) = sqrt(5)$，于是 $A N = sqrt(5)$；
  - $C_1 N$：在上底面正方形 $A_1 B_1 C_1 D_1$ 中，$C_1 D_1 = 2$、$D_1 N = 1$，且 $angle C_1 D_1 N = 90degree$，故 $C_1 N = sqrt(2^2 + 1^2) = sqrt(5)$。

  ④ 由余弦定理

  $ cos angle C_1 A N = (A C_1^2 + A N^2 - C_1 N^2)/(2 dot A C_1 dot A N) = (12 + 5 - 5)/(2 dot 2 sqrt(3) dot sqrt(5)) = 12/(4 sqrt(15)) = 3/(sqrt(15)) = (sqrt(15))/5. $

  所以异面直线 $O E$ 和 $F D_1$ 所成角的余弦值为 $(sqrt(15))/5$，选 *(B)*。

  *解法二（坐标法，用作验证）。* 以 $A$ 为原点，$A B$、$A D$、$A A_1$ 方向为 $x$、$y$、$z$ 轴，棱长为 $2$，则

  $ C_1(2, 2, 2), quad D_1(0, 2, 2), quad F(0, 1, 0). $

  于是 $arrow(A C_1) = (2, 2, 2)$、$arrow(F D_1) = (0, 1, 2)$，且

  $ arrow(A C_1) dot arrow(F D_1) = 6, quad |arrow(A C_1)| = 2 sqrt(3), quad |arrow(F D_1)| = sqrt(5), $

  $ cos theta = 6/(2 sqrt(3) dot sqrt(5)) = (sqrt(15))/5, $

  与解法一一致。

  === 要点

  - *本题可以纯几何完成*：两次平移（中位线给 $O E text(∥) A C_1$；平行四边形 $A F D_1 N$ 给 $A N text(∥) F D_1$）之后，只需求 $triangle A C_1 N$ 的三边 $2 sqrt(3)$、$sqrt(5)$、$sqrt(5)$，余弦定理即得答案；坐标法可作为验算。
  - *关键辅助点 $N$*：取 $A_1 D_1$ 的中点 $N$，则 $A F text(∥) N D_1$ 且相等，四边形 $A F D_1 N$ 是平行四边形，从而 $A N text(∥) F D_1$——这是"把 $F D_1$ 搬到 $A$ 点"的关键一步。
  - *中位线的识别*：$O$ 是 $A C$ 的中点、$E$ 是 $C C_1$ 的中点 $=>$ $O E$ 是 $triangle A C C_1$ 的中位线，这一步一眼可得。
  - *建系要选好原点与轴*：取 $A$ 为原点、三条棱为轴，正方体各点坐标全是整数，算起来最干净。
  - *两条异面直线的方向向量*：$arrow(A C_1)$ 是*体对角线*方向，$arrow(F D_1)$ 是"从棱中点到对角顶点"的方向，都直接由坐标差得到。
  - *化简与范围*：$cos theta = 3/(sqrt(15)) = (sqrt(15))/5 approx 0.775 > 0$，是锐角，符合异面直线所成角的范围。
  #line(length: 100%, stroke: 0.5pt + gray)

  == 五、直观法找线面角

  *要点*：求直线 $l$ 与平面 $alpha$ 所成的角，关键是找到 $l$ 上（除斜足外）某一点在平面 $alpha$ 内的*投影*（垂足），连斜足与垂足就得到 $l$ 在平面内的投影，斜线与投影所成的锐角即为所求。正方体中常凭"直观"一步看出垂足——这就是"直观法"。

  === 【例 3】正方体中 $B C_1$ 与平面 $B B_1 D_1 D$ 所成的角

  *【例 3】* 如图，正方体 $A B C D - A_1 B_1 C_1 D_1$ 中，$B C_1$ 与平面 $B B_1 D_1 D$ 所成的角是（#h(0.6em)）

  #grid(columns: (1fr, 1fr, 1fr, 1fr), gutter: 4pt,
    [(A) $angle C_1 B B_1$], [(B) $angle C_1 B D$], [(C) $angle C_1 B D_1$], [(D) $angle C_1 B O$])

  #align(center)[
    #block(breakable: false, width: 245pt, height: 265pt)[
      // 正方体
      #place(dx: 30pt, dy: 210pt, line(end: (100pt, 0pt), stroke: 0.8pt))       // A→B
      #place(dx: 130pt, dy: 210pt, line(end: (0pt, -100pt), stroke: 0.8pt))     // B→B1
      #place(dx: 130pt, dy: 110pt, line(end: (-100pt, 0pt), stroke: 0.8pt))     // B1→A1
      #place(dx: 30pt, dy: 110pt, line(end: (0pt, 100pt), stroke: 0.8pt))       // A1→A
      #place(dx: 85pt, dy: 65pt, line(end: (100pt, 0pt), stroke: 0.8pt))        // D1→C1
      #place(dx: 185pt, dy: 65pt, line(end: (0pt, 100pt), stroke: 0.8pt))       // C1→C
      #place(dx: 85pt, dy: 165pt, line(end: (0pt, -100pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // D→D1
      #place(dx: 85pt, dy: 165pt, line(end: (100pt, 0pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // D→C
      #place(dx: 30pt, dy: 210pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // A→D
      #place(dx: 130pt, dy: 210pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // B→C
      // 对角线 A1C1 与 B1D1（用来定位 O）
      #place(dx: 30pt, dy: 110pt, line(end: (155pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // A1→C1
      #place(dx: 130pt, dy: 110pt, line(end: (-45pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))// B1→D1
      // BC1（红）与 BO（蓝，即投影）
      #place(dx: 130pt, dy: 210pt, line(end: (55pt, -145pt), stroke: (paint: rgb("#c7362e"), thickness: 1.3pt)))       // B→C1
      #place(dx: 130pt, dy: 210pt, line(end: (-22.5pt, -122.5pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.3pt)))  // B→O
      // 点
      #place(dx: 28pt, dy: 208pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 208pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 183pt, dy: 163pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 83pt, dy: 163pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 28pt, dy: 108pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 108pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 183pt, dy: 63pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 83pt, dy: 63pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 105.5pt, dy: 85.5pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 12pt, dy: 214pt)[$A$]
      #place(dx: 134pt, dy: 214pt)[$B$]
      #place(dx: 190pt, dy: 168pt)[$C$]
      #place(dx: 72pt, dy: 168pt)[$D$]
      #place(dx: 8pt, dy: 98pt)[$A_1$]
      #place(dx: 134pt, dy: 98pt)[$B_1$]
      #place(dx: 190pt, dy: 54pt)[$C_1$]
      #place(dx: 70pt, dy: 52pt)[$D_1$]
      #place(dx: 108pt, dy: 76pt)[#text(fill: rgb("#c7362e"))[$O$]]
    ]
  ]

  图中 $O$ 是上底面中心（$A_1 C_1$ 与 $B_1 D_1$ 的交点）；红线为 $B C_1$，蓝线为 $B O$；灰虚线为被挡住的棱与对角线。

  === 解析

  *① 找出 $C_1$ 在平面 $B B_1 D_1 D$ 内的投影。* 连 $A_1 C_1$。因为上底面是正方形，

  $ A_1 C_1 perp B_1 D_1. $

  又 $B B_1 perp$ 上底面，而 $A_1 C_1 subset$ 上底面，所以 $B B_1 perp A_1 C_1$。于是 $A_1 C_1$ 垂直于平面 $B B_1 D_1 D$ 内的两条相交直线 $B_1 D_1$、$B B_1$，故

  $ A_1 C_1 perp "平面" B B_1 D_1 D. $

  设 $O$ 为 $A_1 C_1$ 与 $B_1 D_1$ 的交点（即上底面中心），则 $O$ 就是 $C_1$ 在平面 $B B_1 D_1 D$ 内的*投影*（垂足）。

  *② 作出线面角。* 因为 $B$ 在平面内、$O$ 是 $C_1$ 的投影，所以 $B O$ 就是斜线 $B C_1$ 在平面 $B B_1 D_1 D$ 内的*投影*，于是

  $ B C_1 "与平面" B B_1 D_1 D "所成的角" = angle C_1 B O. $

  故选 *(D)*。

  *③ 直观理解*：正方体中"斜线是一个靠顶点的面对角线、平面是含 $B D$ 的对角面"，其投影一眼可见为 $B O$（$O$ 为上底面中心）——这就是"直观法"：先在平面内找*过斜足的投影*，再看斜线端点落向谁。

  === 要点

  - *线面角的定义*：斜线与它在平面内的*投影*所成的锐角；所以关键是找*垂足*（投影点）。
  - *本题垂足是"天然的"*：$A_1 C_1 perp$ 平面 $B B_1 D_1 D$（用"正方形对角线垂直"+"$B B_1 perp$ 上底面"两条理由），所以 $C_1$ 的投影就是 $A_1 C_1$ 与 $B_1 D_1$ 的交点 $O$。
  - *投影要连"斜足"*：斜足是 $B$（它本身在平面内），所以投影线段是 $B O$，所求角是 $angle C_1 B O$；其余选项（$angle C_1 B B_1$、$angle C_1 B D$、$angle C_1 B D_1$）都不是"斜线与投影"的夹角。
  - *直观法三步*：① 看平面内的对角线/中线；② 找端点在这个平面内的垂足；③ 连斜足与垂足得投影，夹角即为所求。
  - *与前面各题的关系*：前三题是"平移后解三角形"，本题是"找投影直接读角"，都属于*几何法*；后者在正方体、长方体中尤其常见。
  #line(length: 100%, stroke: 0.5pt + gray)

  === 【练 4】三棱锥中求 $O D$ 与平面 $O B C$ 所成的角

  *【练 4】* 如图，在三棱锥 $O - A B C$ 中，$O A = O B = O C = 1$，$angle A O B = 90degree$，$O C perp$ 平面 $A O B$，$D$ 为 $A B$ 中点，则 $O D$ 与平面 $O B C$ 所成的角为 #box(width: 4em, stroke: (bottom: 0.5pt)) （用图中字母表示）。

  #align(center)[
    #block(breakable: false, width: 250pt, height: 290pt)[
      // 可见棱
      #place(dx: 60pt, dy: 55pt, line(end: (0pt, 145pt), stroke: 0.8pt))         // C→O
      #place(dx: 60pt, dy: 55pt, line(end: (80pt, 210pt), stroke: 0.8pt))        // C→A
      #place(dx: 60pt, dy: 55pt, line(end: (170pt, 140pt), stroke: 0.8pt))       // C→B
      #place(dx: 140pt, dy: 265pt, line(end: (-80pt, -65pt), stroke: 0.8pt))     // A→O
      #place(dx: 140pt, dy: 265pt, line(end: (45pt, -35pt), stroke: 0.8pt))      // A→D
      #place(dx: 185pt, dy: 230pt, line(end: (45pt, -35pt), stroke: 0.8pt))      // D→B
      // 虚线：OB、OD
      #place(dx: 60pt, dy: 200pt, line(end: (170pt, -5pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // O→B
      #place(dx: 60pt, dy: 200pt, line(end: (125pt, 30pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // O→D
      // 点
      #place(dx: 58pt, dy: 53pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 58pt, dy: 198pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 138pt, dy: 263pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 228pt, dy: 193pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 183pt, dy: 228pt, circle(radius: 1.8pt, fill: black))
      // 标签
      #place(dx: 42pt, dy: 46pt)[$C$]
      #place(dx: 40pt, dy: 200pt)[$O$]
      #place(dx: 138pt, dy: 270pt)[$A$]
      #place(dx: 234pt, dy: 192pt)[$B$]
      #place(dx: 188pt, dy: 234pt)[$D$]
    ]
  ]

  图中 $O C perp$ 平面 $A O B$（$C$ 在 $O$ 的正上方），$O A perp O B$；$D$ 是 $A B$ 的中点，$O B$、$O D$ 画虚线。

  === 解析

  *① 先找 $A$ 与 $D$ 在平面 $O B C$ 内的投影。* 因为 $O C perp$ 平面 $A O B$，所以 $O C perp O A$；又 $angle A O B = 90degree$，即 $O A perp O B$。于是 $O A$ 垂直于平面 $O B C$ 内的两条相交直线 $O B$、$O C$，故

  $ O A perp "平面" O B C. $

  也就是说，$A$ 在平面 $O B C$ 内的*投影*就是 $O$（斜足）。

  *② 求 $D$ 的投影。* 设 $E$ 为 $O B$ 的中点。$D$ 是 $A B$ 的中点、$E$ 是 $O B$ 的中点，在 $triangle A O B$ 中由中位线定理

  $ D E text(∥) A O, quad D E = 1/2 A O = 1/2. $

  由 $A O perp$ 平面 $O B C$ 得 $D E perp$ 平面 $O B C$，所以 $E$ 就是 $D$ 在平面 $O B C$ 内的投影。

  *③ 作出线面角。* 因为 $O$ 在平面内、$E$ 是 $D$ 的投影，所以 $O E$ 是 $O D$ 在平面 $O B C$ 内的*投影*，于是

  $ O D "与平面" O B C "所成的角" = angle D O E. $

  又 $E$ 在 $O B$ 上，故 $angle D O E = angle D O B$，即所求角为 $angle D O B$。

  *④ 顺便算出这个角*（验证一下）。由 $O A perp$ 平面 $O B C$ 得 $O A perp O B$ 且 $O A perp O D$ 中的关系：设 $O A = O B = 1$，则

  $ O D = 1/2 A B = (sqrt(2))/2 quad ("因为" triangle A O B "是等腰直角三角形，斜边" A B = sqrt(2)). $

  而 $D E perp$ 平面 $O B C$，$E$ 为 $O B$ 中点，故 $O E = 1/2 O B = 1/2$，于是

  $ cos angle D O E = (O E)/(O D) = (1/2)/((sqrt(2))/2) = (sqrt(2))/2 quad => quad angle D O E = 45degree. $

  所以 $O D$ 与平面 $O B C$ 所成的角为 $angle D O B$（即 $45degree$）。

  === 要点

  - *找投影的老套路*：先看哪条线*垂直于目标平面*——本题 $O A perp$ 平面 $O B C$（由 $O C perp$ 平面 $A O B$ 得 $O C perp O A$，再加上 $O A perp O B$），于是 $A$ 的投影是 $O$。
  - *投影的中点还是中点*：$D$ 是 $A B$ 的中点，而 $A$ 的投影为 $O$、$B$ 本身在平面内，故 $D$ 的投影是 $O B$ 的中点 $E$；也可用中位线 $D E text(∥) A O$ 说明 $D E perp$ 平面 $O B C$。
  - *"用图中字母表示"的技巧*：投影点 $E$ 不在图中，但 $E$ 在 $O B$ 上，所以 $angle D O E = angle D O B$，答案写 $angle D O B$ 即可。
  - *垂直关系的传递*：$O C perp$ 平面 $A O B$ $=>$ $O C perp O A$、$O C perp O B$；这类"线面垂直推出多条线线垂直"是找投影的关键。
  - *范围与验算*：算出 $angle D O B = 45degree in (0degree, 90degree]$，与"线面角不超过 $90degree$"相符。
  #line(length: 100%, stroke: 0.5pt + gray)

  === 【例 4】正方体中求 $B_1 D_1$ 与平面 $A B C_1 D_1$ 所成的角

  *【例 4】* 已知正方体 $A B C D - A_1 B_1 C_1 D_1$，则直线 $B_1 D_1$ 与平面 $A B C_1 D_1$ 所成的角的大小是（#h(0.6em)）

  #grid(columns: (1fr, 1fr, 1fr, 1fr), gutter: 4pt,
    [(A) $30degree$], [(B) $45degree$], [(C) $60degree$], [(D) $90degree$])

  #align(center)[
    #block(breakable: false, width: 245pt, height: 265pt)[
      // 正方体
      #place(dx: 30pt, dy: 210pt, line(end: (100pt, 0pt), stroke: 0.8pt))       // A→B
      #place(dx: 130pt, dy: 210pt, line(end: (0pt, -100pt), stroke: 0.8pt))     // B→B1
      #place(dx: 130pt, dy: 110pt, line(end: (-100pt, 0pt), stroke: 0.8pt))     // B1→A1
      #place(dx: 30pt, dy: 110pt, line(end: (0pt, 100pt), stroke: 0.8pt))       // A1→A
      #place(dx: 85pt, dy: 65pt, line(end: (100pt, 0pt), stroke: 0.8pt))        // D1→C1
      #place(dx: 185pt, dy: 65pt, line(end: (0pt, 100pt), stroke: 0.8pt))       // C1→C
      #place(dx: 85pt, dy: 165pt, line(end: (0pt, -100pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // D→D1
      #place(dx: 85pt, dy: 165pt, line(end: (100pt, 0pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // D→C
      #place(dx: 30pt, dy: 210pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // A→D
      #place(dx: 130pt, dy: 210pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // B→C
      // 平面 ABC1D1 的四条边（蓝）
      #place(dx: 30pt, dy: 210pt, line(end: (155pt, -145pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.2pt)))       // A→C1
      #place(dx: 130pt, dy: 210pt, line(end: (55pt, -145pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.2pt)))       // B→C1
      #place(dx: 85pt, dy: 65pt, line(end: (55pt, 145pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.2pt)))         // D1→A
      #place(dx: 30pt, dy: 210pt, line(end: (100pt, 0pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.2pt)))         // A→B（已是实线，加深）
      #place(dx: 85pt, dy: 65pt, line(end: (100pt, 0pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.2pt)))          // D1→C1
      // B1D1（红）
      #place(dx: 130pt, dy: 110pt, line(end: (-45pt, -45pt), stroke: (paint: rgb("#c7362e"), thickness: 1.4pt)))      // B1→D1
      // 点
      #place(dx: 28pt, dy: 208pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 208pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 183pt, dy: 163pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 83pt, dy: 163pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 28pt, dy: 108pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 108pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 183pt, dy: 63pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 83pt, dy: 63pt, circle(radius: 1.8pt, fill: black))
      // 标签
      #place(dx: 12pt, dy: 214pt)[$A$]
      #place(dx: 134pt, dy: 214pt)[$B$]
      #place(dx: 190pt, dy: 168pt)[$C$]
      #place(dx: 72pt, dy: 168pt)[$D$]
      #place(dx: 8pt, dy: 98pt)[$A_1$]
      #place(dx: 134pt, dy: 98pt)[$B_1$]
      #place(dx: 190pt, dy: 54pt)[$C_1$]
      #place(dx: 70pt, dy: 52pt)[$D_1$]
    ]
  ]

  图中蓝线围出平面 $A B C_1 D_1$（一个对角矩形），红线为 $B_1 D_1$；灰虚线为被挡住的棱。

  === 解析

  *① 先看出"平面 $A B C_1 D_1$ 是矩形"以及它的"垂线"。* 因为 $A B perp$ 平面 $A D D_1 A_1$，所以 $A B perp A D_1$；又 $A B text(∥) D_1 C_1$、$A D_1 text(∥) B C_1$，故 $A B C_1 D_1$ 是矩形。

  再看 $C B_1$：

  - 在正方形 $B C C_1 B_1$ 中 $C B_1 perp B C_1$；
  - $A B perp$ 平面 $B C C_1 B_1$，故 $C B_1 perp A B$。

  于是 $C B_1$ 垂直于平面 $A B C_1 D_1$ 内两条相交直线 $B C_1$、$A B$，所以

  $ C B_1 perp "平面" A B C_1 D_1. $

  *② 把 $B_1 D_1$ 平移到 $B D$。* 在四边形 $B B_1 D_1 D$ 中 $B B_1 text(∥) D D_1$ 且相等，故它是平行四边形，于是

  $ B D text(∥) B_1 D_1. $

  所以 $B_1 D_1$ 与平面 $A B C_1 D_1$ 所成的角，等于 $B D$ 与*法线* $C B_1$ 所成角的余角。

  *③ 算出 $B D$（即 $B_1 D_1$）与 $C B_1$ 的夹角。* 连接 $C D_1$。设棱长为 $1$，则

  $ B_1 C = B_1 D_1 = C D_1 = sqrt(2) $

  都是面对角线，故 $triangle C B_1 D_1$ 是等边三角形，于是 $angle C B_1 D_1 = 60degree$。

  *④ 求线面角。* 因为 $C B_1 perp$ 平面 $A B C_1 D_1$，所以直线与平面所成的角等于 $90degree$ 减去它与法线 $C B_1$ 的夹角：

  $ theta = 90degree - angle C B_1 D_1 = 90degree - 60degree = 30degree. $

  故选 *(A)*。


  === 要点

  - *"线面角 = 90° − 线与法线的夹角"*：本题的法线 $C B_1$ 意外地好找（它就是正方体一个面的对角线），于是把线面角转化为"线与线"的角。
  - *找法线的两条理由*：$C B_1 perp B C_1$（正方形对角线互相垂直）、$C B_1 perp A B$（$A B perp$ 平面 $B C C_1 B_1$），合起来得 $C B_1 perp$ 平面 $A B C_1 D_1$。
  - *平移一步不能少*：$B B_1 D_1 D$ 是平行四边形给出 $B D text(∥) B_1 D_1$，这样才能把 $B_1 D_1$ 与 $C B_1$ 放进同一个三角形 $C B_1 D_1$。
  - *又是"面对角线三角形"*：$B_1 C$、$B_1 D_1$、$C D_1$ 都是面对角线 ⟹ 等边 ⟹ $60degree$，这是正方体题的常见套路。
  - *思路小结*：遇到"线面角看不出投影"时，改为*找平面的法线*，用 $90degree$ 减去线与法线的夹角，往往比找垂足更容易。
  #line(length: 100%, stroke: 0.5pt + gray)

  === 【练 5】长方体中求 $B C_1$ 与平面 $B B_1 D_1 D$ 所成角的正弦值

  *【练 5】* 在长方体 $A B C D - A_1 B_1 C_1 D_1$ 中，$A B = B C = 2$，$A A_1 = 1$，则 $B C_1$ 与平面 $B B_1 D_1 D$ 所成的角的正弦值为（#h(0.6em)）

  #grid(columns: (1fr, 1fr, 1fr, 1fr), gutter: 4pt,
    [(A) $(sqrt(6))/3$], [(B) $(2 sqrt(5))/5$], [(C) $(sqrt(15))/5$], [(D) $(sqrt(10))/5$])

  #align(center)[
    #block(breakable: false, width: 250pt, height: 265pt)[
      // 长方体（底面正方形 2×2，高 1）
      #place(dx: 30pt, dy: 200pt, line(end: (100pt, 0pt), stroke: 0.8pt))       // A→B
      #place(dx: 130pt, dy: 200pt, line(end: (0pt, -50pt), stroke: 0.8pt))      // B→B1
      #place(dx: 130pt, dy: 150pt, line(end: (-100pt, 0pt), stroke: 0.8pt))     // B1→A1
      #place(dx: 30pt, dy: 150pt, line(end: (0pt, 50pt), stroke: 0.8pt))        // A1→A
      #place(dx: 85pt, dy: 105pt, line(end: (100pt, 0pt), stroke: 0.8pt))       // D1→C1
      #place(dx: 185pt, dy: 105pt, line(end: (0pt, 50pt), stroke: 0.8pt))       // C1→C
      #place(dx: 85pt, dy: 155pt, line(end: (0pt, -50pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // D→D1
      #place(dx: 85pt, dy: 155pt, line(end: (100pt, 0pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // D→C
      #place(dx: 30pt, dy: 200pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // A→D
      #place(dx: 130pt, dy: 200pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // B→C
      // 平面 BB1D1D 的四条边
      #place(dx: 85pt, dy: 105pt, line(end: (45pt, 45pt), stroke: 0.8pt))        // D1→B1
      #place(dx: 85pt, dy: 155pt, line(end: (45pt, 45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // D→B
      // BC1（红）与 BO（蓝虚线，投影）
      #place(dx: 130pt, dy: 200pt, line(end: (55pt, -95pt), stroke: (paint: rgb("#c7362e"), thickness: 1.4pt)))       // B→C1
      #place(dx: 130pt, dy: 200pt, line(end: (-22.5pt, -72.5pt), stroke: (paint: rgb("#1f6feb"), thickness: 1pt, dash: "dashed"))) // B→O
      // 点
      #place(dx: 28pt, dy: 198pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 198pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 183pt, dy: 153pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 83pt, dy: 153pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 28pt, dy: 148pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 148pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 183pt, dy: 103pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 83pt, dy: 103pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 105.5pt, dy: 125.5pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 12pt, dy: 204pt)[$A$]
      #place(dx: 134pt, dy: 204pt)[$B$]
      #place(dx: 190pt, dy: 158pt)[$C$]
      #place(dx: 72pt, dy: 158pt)[$D$]
      #place(dx: 8pt, dy: 138pt)[$A_1$]
      #place(dx: 134pt, dy: 138pt)[$B_1$]
      #place(dx: 190pt, dy: 94pt)[$C_1$]
      #place(dx: 70pt, dy: 92pt)[$D_1$]
      #place(dx: 108pt, dy: 118pt)[#text(fill: rgb("#c7362e"))[$O$]]
    ]
  ]

  图中 $O$ 是上底面中心（$A_1 C_1$ 与 $B_1 D_1$ 的交点）；红线为 $B C_1$，蓝虚线为 $B O$（即 $B C_1$ 在平面 $B B_1 D_1 D$ 内的投影）。

  === 解析

  *① 找 $C_1$ 的投影。* 底边 $A B = B C = 2$，故上底面 $A_1 B_1 C_1 D_1$ 是边长为 $2$ 的*正方形*。于是

  $ A_1 C_1 perp B_1 D_1; $

  又 $B B_1 perp$ 上底面，故 $B B_1 perp A_1 C_1$。因此 $A_1 C_1$ 垂直于平面 $B B_1 D_1 D$ 内两条相交直线 $B_1 D_1$、$B B_1$，即

  $ A_1 C_1 perp "平面" B B_1 D_1 D. $

  设 $O$ 为 $A_1 C_1$ 与 $B_1 D_1$ 的交点（上底面中心），则 $O$ 就是 $C_1$ 的投影，$B O$ 是 $B C_1$ 的投影，所求角为 $angle C_1 B O$。

  *② 算这个角。* 以 $A$ 为原点，$A B$、$A D$、$A A_1$ 方向为 $x$、$y$、$z$ 轴，则

  $ B(2, 0, 0), quad C_1(2, 2, 1), quad O(1, 1, 1), $

  $ arrow(B C_1) = (0, 2, 1), quad arrow(B O) = (-1, 1, 1). $

  于是

  $ arrow(B C_1) dot arrow(B O) = 0 + 2 + 1 = 3, quad |arrow(B C_1)| = sqrt(5), quad |arrow(B O)| = sqrt(3), $

  $ cos angle C_1 B O = 3/(sqrt(5) dot sqrt(3)) = 3/(sqrt(15)) = (sqrt(15))/5, $

  所以

  $ sin angle C_1 B O = sqrt(1 - 15/25) = sqrt(10/25) = (sqrt(10))/5. $

  故选 *(D)*。

  *另解（直接用法向量）*：平面 $B B_1 D_1 D$ 的法向量可取 $bold(n) = (1, 1, 0)$（因为 $B D = (-2, 2, 0)$、$B B_1 = (0, 0, 1)$ 都与它垂直），于是

  $ sin theta = (|bold(n) dot arrow(B C_1)|)/(|bold(n)| |arrow(B C_1)|) = 2/(sqrt(2) dot sqrt(5)) = 2/(sqrt(10)) = (sqrt(10))/5, $

  与解法一致。

  === 要点

  - *长方体的"正方形底面"是关键*：$A B = B C = 2$ 说明上底面是正方形，于是 $A_1 C_1 perp B_1 D_1$ 可用——与例 3（正方体）是同一套路。
  - *投影三步*：$A_1 C_1 perp$ 平面 $B B_1 D_1 D$ ⟹ $C_1$ 的投影是 $O$（上底面中心）⟹ 投影为 $B O$，所求角为 $angle C_1 B O$。
  - *"求正弦"与"求余弦"要看清*：先算出 $cos angle C_1 B O = (sqrt(15))/5$，再用 $sin^2 + cos^2 = 1$ 得 $(sqrt(10))/5$；选项里四个值都出现过，容易选错，务必回到题目问的是什么。
  - *另一种算法的对偶关系*：$cos angle C_1 B O$ 与 $sin theta$（线面角的正弦）数值不同，但它们满足 $sin theta = sqrt(1 - cos^2 angle C_1 B O)$——因为 $angle C_1 B O$ 本身就是线面角。
  - *法向量法可作验算*：平面 $B B_1 D_1 D$ 的法向量 $(1,1,0)$ 很好写，代入 $sin theta = |n dot u|/(|n||u|)$ 立刻得 $(sqrt(10))/5$。
  #line(length: 100%, stroke: 0.5pt + gray)

  == 六、间接法找线面角

  *要点*：当所求直线与平面"不好直接作投影"时，可以用*平行的直线替换*——例如把 $B B_1$ 换成与它平行的 $A A_1$（棱柱的侧棱互相平行），或者用

  $ sin theta = ("点到平面的距离")/("斜线段的长") $

  先算距离（常用*等体积法*），再算角。这两种做法都叫"间接法"。

  === 【例 5】直三棱柱中求 $B B_1$ 与平面 $A B_1 C_1$ 所成的角

  *【例 5】* 如图所示，在三棱柱 $A B C - A_1 B_1 C_1$ 中，侧棱垂直于底面，底面是边长为 $2$ 的正三角形，侧棱长为 $3$，则 $B B_1$ 与平面 $A B_1 C_1$ 所成的角的大小为 #box(width: 6em, stroke: (bottom: 0.5pt)) 。

  #align(center)[
    #block(breakable: false, width: 245pt, height: 285pt)[
      // 底面 ABC 与顶面 A1B1C1（直三棱柱，高 3）
      #place(dx: 40pt, dy: 235pt, line(end: (110pt, 25pt), stroke: 0.8pt))       // A→B
      #place(dx: 150pt, dy: 260pt, line(end: (60pt, -50pt), stroke: 0.8pt))      // B→C
      #place(dx: 40pt, dy: 235pt, line(end: (60pt, -50pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // A→C（被挡）
      #place(dx: 40pt, dy: 130pt, line(end: (110pt, 25pt), stroke: 0.8pt))       // A1→B1
      #place(dx: 150pt, dy: 155pt, line(end: (60pt, -50pt), stroke: 0.8pt))      // B1→C1
      #place(dx: 40pt, dy: 130pt, line(end: (60pt, -50pt), stroke: 0.8pt))       // A1→C1
      #place(dx: 40pt, dy: 235pt, line(end: (0pt, -105pt), stroke: 0.8pt))       // A→A1
      #place(dx: 150pt, dy: 260pt, line(end: (0pt, -105pt), stroke: 0.8pt))      // B→B1
      #place(dx: 210pt, dy: 210pt, line(end: (0pt, -105pt), stroke: 0.8pt))      // C→C1
      // 平面 AB1C1 的三条边（蓝）与 BB1（红）
      #place(dx: 40pt, dy: 235pt, line(end: (110pt, -105pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.2pt)))       // A→B1
      #place(dx: 40pt, dy: 235pt, line(end: (60pt, -155pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.2pt)))        // A→C1
      #place(dx: 150pt, dy: 130pt, line(end: (60pt, -50pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.2pt)))        // B1→C1
      #place(dx: 150pt, dy: 260pt, line(end: (0pt, -105pt), stroke: (paint: rgb("#c7362e"), thickness: 1.3pt)))        // B→B1
      // 点
      #place(dx: 38pt, dy: 233pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 148pt, dy: 258pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 208pt, dy: 208pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 38pt, dy: 128pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 148pt, dy: 128pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 208pt, dy: 103pt, circle(radius: 1.8pt, fill: black))
      // 标签
      #place(dx: 22pt, dy: 238pt)[$A$]
      #place(dx: 152pt, dy: 264pt)[$B$]
      #place(dx: 214pt, dy: 206pt)[$C$]
      #place(dx: 18pt, dy: 118pt)[$A_1$]
      #place(dx: 152pt, dy: 118pt)[$B_1$]
      #place(dx: 214pt, dy: 92pt)[$C_1$]
    ]
  ]

  图中蓝线围出平面 $A B_1 C_1$（$A B_1 = A C_1$，是等腰三角形），红线为 $B B_1$；灰虚线 $A C$ 为被挡住的棱。侧棱 $A A_1$、$B B_1$、$C C_1$ 都垂直于底面且互相平行。

  === 解析

  *思路*：$B B_1$ 与平面 $A B_1 C_1$ 的公共点不明显，直接作投影不方便。注意到三棱柱的侧棱*互相平行*，把 $B B_1$ 换成与它平行的 $A A_1$——而 $A$ 就在平面 $A B_1 C_1$ 内，问题立刻变简单。

  *解*：

  1. 因为 $B B_1 text(∥) A A_1$，所以 $B B_1$ 与平面 $A B_1 C_1$ 所成的角，等于 $A A_1$ 与平面 $A B_1 C_1$ 所成的角。记这个角为 $theta$。

  2. 设 $d$ 为点 $A_1$ 到平面 $A B_1 C_1$ 的距离。因为斜线是 $A A_1$（$A$ 在平面内），故

  $ sin theta = d/(A A_1) = d/3. $

  3. 用*等体积法*求 $d$。四面体 $A_1 A B_1 C_1$ 换个顶点看就是 $A - A_1 B_1 C_1$：

  $ V = 1/3 dot S_(triangle A_1 B_1 C_1) dot A A_1 = 1/3 dot (sqrt(3)/4 dot 2^2) dot 3 = sqrt(3). $

  另一方面 $V = 1/3 dot S_(triangle A B_1 C_1) dot d$。在 $triangle A B_1 C_1$ 中：

  $ A B_1 = sqrt(2^2 + 3^2) = sqrt(13), quad A C_1 = sqrt(1^2 + (sqrt(3))^2 + 3^2) = sqrt(13), quad B_1 C_1 = 2, $

  所以它是等腰三角形，底边 $B_1 C_1 = 2$ 上的高为 $sqrt(13 - 1) = 2 sqrt(3)$，面积

  $ S_(triangle A B_1 C_1) = 1/2 dot 2 dot 2 sqrt(3) = 2 sqrt(3). $

  于是

  $ d = (3 V)/(S_(triangle A B_1 C_1)) = (3 sqrt(3))/(2 sqrt(3)) = 3/2. $

  4. 所以

  $ sin theta = d/3 = (3/2)/3 = 1/2 quad => quad theta = 30degree. $

  故 $B B_1$ 与平面 $A B_1 C_1$ 所成的角为 $30degree$。

  *另解（坐标法验算）*：以 $A$ 为原点，$A B$ 方向为 $x$ 轴、底面内过 $A$ 且垂直于 $A B$ 的方向为 $y$ 轴、$A A_1$ 方向为 $z$ 轴，则

  $ A(0, 0, 0), quad B(2, 0, 0), quad C(1, sqrt(3), 0), quad B_1(2, 0, 3), quad C_1(1, sqrt(3), 3). $

  平面 $A B_1 C_1$ 的法向量取 $arrow(A B_1) times arrow(A C_1) = (-3 sqrt(3), -3, 2 sqrt(3))$，即 $bold(n) = (3, sqrt(3), -2)$。又 $arrow(A A_1) = (0, 0, 3)$（$arrow(B B_1) = (0, 0, 3)$ 与它相同），于是

  $ |bold(n)| = sqrt(9 + 3 + 4) = 4, quad |bold(n) dot arrow(A A_1)| = 6, quad sin theta = 6/(4 times 3) = 1/2, $

  同样得 $theta = 30degree$，与解法一一致。

  === 要点

  - *"直线与平面不好找交点"时用平行替换*：棱柱、棱台中侧棱互相平行，可把所求直线换成与它平行、且端点落在平面内的直线（本题把 $B B_1$ 换成 $A A_1$）。
  - *$sin theta = d / "斜线段"$*：这里 $d$ 是斜线另一端点到平面的距离（本题 $d = d(A_1, "平面" A B_1 C_1)$），斜线段是 $A A_1$。
  - *等体积法是求距离的利器*：$V_(A_1 - A B_1 C_1) = V_(A - A_1 B_1 C_1)$，一个用顶面算、一个用截面算，反解出 $d$。
  - *算面积要先看形状*：$A B_1 = A C_1 = sqrt(13)$，$B_1 C_1 = 2$，等腰三角形取底边上的高最省事。
  - *坐标法可以验算*：平面 $A B_1 C_1$ 的法向量 $bold(n) = (sqrt(3), 1, -2)$ 与 $arrow(A A_1) = (0, 0, 3)$ 代入夹角公式，同样得 $sin theta = 1/2$。
  #line(length: 100%, stroke: 0.5pt + gray)

  == 七、综合练习（几何法与坐标法）

  === 【例 6】四棱锥中的异面直线角、线面垂直与线面角

  *【例 6】* 如图，在四棱锥 $P - A B C D$ 中，$A D perp$ 平面 $P D C$，$A D text(∥) B C$，$P D perp P B$，$A D = 1$，$B C = 3$，$C D = 4$，$P D = 2$。

  (1) 求异面直线 $A P$ 与 $B C$ 所成角的余弦值；

  (2) 求证：$P D perp$ 平面 $P B C$；

  (3) 求直线 $A B$ 与平面 $P B C$ 所成角的正弦值。

  #align(center)[
    #block(breakable: false, width: 250pt, height: 280pt)[
      // 四棱锥 P-ABCD：P 上、D 左、A 下、C 中、B 右
      #place(dx: 95pt, dy: 65pt, line(end: (-65pt, 150pt), stroke: 0.8pt))       // P→D
      #place(dx: 95pt, dy: 65pt, line(end: (-25pt, 195pt), stroke: 0.8pt))       // P→A
      #place(dx: 95pt, dy: 65pt, line(end: (75pt, 145pt), stroke: 0.8pt))        // P→B
      #place(dx: 95pt, dy: 65pt, line(end: (28pt, 110pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // P→C
      #place(dx: 30pt, dy: 215pt, line(end: (65pt, 45pt), stroke: 0.8pt))        // D→A
      #place(dx: 70pt, dy: 260pt, line(end: (100pt, -50pt), stroke: 0.8pt))      // A→B
      #place(dx: 123pt, dy: 175pt, line(end: (-28pt, 40pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // C→A（被挡）
      #place(dx: 123pt, dy: 175pt, line(end: (47pt, 35pt), stroke: 0.8pt))       // C→B
      #place(dx: 30pt, dy: 215pt, line(end: (93pt, -40pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // D→C（被挡）
      // 点
      #place(dx: 93pt, dy: 63pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 28pt, dy: 213pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 68pt, dy: 258pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 121pt, dy: 173pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 168pt, dy: 208pt, circle(radius: 1.8pt, fill: black))
      // 标签
      #place(dx: 86pt, dy: 52pt)[$P$]
      #place(dx: 12pt, dy: 212pt)[$D$]
      #place(dx: 62pt, dy: 264pt)[$A$]
      #place(dx: 126pt, dy: 168pt)[$C$]
      #place(dx: 172pt, dy: 208pt)[$B$]
    ]
  ]

  图中 $A D perp$ 平面 $P D C$、$A D text(∥) B C$；虚线 $P C$、$D C$、$C A$ 为被挡住的棱或辅助线。

  === 解析

  *(1) 异面直线 $A P$ 与 $B C$ 所成的角。* 因为 $A D text(∥) B C$，所以 $A P$ 与 $B C$ 所成的角等于 $A P$ 与 $A D$ 所成的角，即 $angle P A D$。

  由 $A D perp$ 平面 $P D C$ 得 $A D perp P D$，所以 $triangle P A D$ 是直角三角形（直角在 $D$），且

  $ A P = sqrt(A D^2 + P D^2) = sqrt(1 + 4) = sqrt(5), $

  于是

  $ cos angle P A D = (A D)/(A P) = 1/(sqrt(5)) = (sqrt(5))/5. $

  所以异面直线 $A P$ 与 $B C$ 所成角的余弦值为 $(sqrt(5))/5$。

  *(2) 证明 $P D perp$ 平面 $P B C$。*

  - 由 $A D perp$ 平面 $P D C$ 得 $A D perp P D$；
  - 又 $A D text(∥) B C$，故 $B C perp P D$；
  - 已知 $P D perp P B$；
  - $P B$、$B C$ 是平面 $P B C$ 内两条相交直线（交于 $B$），所以

  $ P D perp "平面" P B C. quad square $

  *(3) 直线 $A B$ 与平面 $P B C$ 所成角的正弦值。*

  *方法一（几何法，转化为"线线角"）。* 由 (2) 知 $P D perp$ 平面 $P B C$，于是直线与平面所成的角 $theta$ 满足

  $ sin theta = |cos angle(A B, P D)|. $

  在 $B C$ 上取点 $E$ 使 $B E = A D = 1$，则 $A D text(∥) B E$ 且相等，四边形 $A D E B$ 是*平行四边形*，故

  $ A B text(∥) D E, quad A B = D E, $

  于是 $angle(A B, P D) = angle(D E, P D) = angle P D E$。

  再算 $triangle P D E$：

  - 由 $A D perp$ 平面 $P D C$ 得 $A D perp D C$；又 $A D text(∥) B C$，故 $D C perp B C$，即 $angle D C E = 90degree$；而 $D C = 4$、$C E = B C - B E = 2$，于是

  $ D E = sqrt(D C^2 + C E^2) = sqrt(16 + 4) = 2 sqrt(5); $

  - 因为 $P D perp$ 平面 $P B C$ 且 $P E subset$ 平面 $P B C$，所以 $P D perp P E$，即 $triangle P D E$ 是直角三角形（直角在 $P$）。

  因此

  $ sin theta = cos angle P D E = (P D)/(D E) = 2/(2 sqrt(5)) = (sqrt(5))/5. $

  *方法二（坐标法）。* 由 (2) 知 $P D perp$ 平面 $P B C$，以 $D$ 为原点、$D P$ 方向为 $y$ 轴、平面 $P D C$ 为 $x D y$ 平面、$D A$ 方向为 $z$ 轴建立坐标系。由 $P D = 2$、$C D = 4$、$P D perp P B$、$B C text(∥) D A$ 且 $B C = 3$、$A D = 1$ 可算得

  $ A(0, 0, 1), quad P(0, 2, 0), quad C(2 sqrt(3), 2, 0), quad B(2 sqrt(3), 2, 3). $

  平面 $P B C$ 的法向量就是 $arrow(D P) = (0, 2, 0)$，故取 $bold(n) = (0, 1, 0)$。又

  $ arrow(A B) = (2 sqrt(3), 2, 2), quad |arrow(A B)| = 2 sqrt(5), quad |bold(n) dot arrow(A B)| = 2, $

  于是

  $ sin theta = (|bold(n) dot arrow(A B)|)/(|bold(n)| |arrow(A B)|) = 2/(2 sqrt(5)) = (sqrt(5))/5. $

  所以直线 $A B$ 与平面 $P B C$ 所成角的正弦值为 $(sqrt(5))/5$。

  === 要点

  - *(1) 用平行关系把异面直线搬到一起*：$A D text(∥) B C$ 一步到位，三角形 $P A D$ 又是直角三角形，答案立刻可得。
  - *(2) "线面垂直"给后面的角搭桥*：$P D perp$ 平面 $P B C$ 一旦证出，第 (3) 问就有了"法向量"（就是 $D P$），线面角可直接写成 $sin theta = |cos angle(A B, P D)|$。
  - *(2) 证明只需两条相交直线*：$B C perp P D$（由 $A D perp P D$ 与平行传递）、$P B perp P D$（已知），且 $P B$、$B C$ 交于 $B$。
  - *(3) 两种方法都对*：几何法把 $A B$ 平移到 $D E$（取 $B E = A D = 1$ 造平行四边形），坐标法则直接算向量；本题坐标里 $C$ 的位置由 $P D perp P B$ 定出（$sin angle = 1/2$），这一步是"隐含条件"的落实。
  - *答案的巧合要留意*：(1) 与 (3) 都等于 $(sqrt(5))/5$，不是抄错，而是本题结构中 $A P$、$A B$ 与同一平面的夹角关系所致。
  #line(length: 100%, stroke: 0.5pt + gray)

  == 八、定义法找二面角

  *要点*：二面角的*平面角*作法：在棱上取一点 $O$，分别在两个半平面内作*垂直于棱*的射线 $O A$、$O B$，则 $angle A O B$ 就是二面角的平面角。正方体、长方体中常取"棱的中点"或"底面中心"，因为它天然给出等腰三角形（可用"三线合一"证垂直）。

  === 【例 7】求二面角 $D_1 - A C - D$ 的正切值

  *【例 7】* 正方体 $A B C D - A_1 B_1 C_1 D_1$ 中，二面角 $D_1 - A C - D$ 的正切值为（#h(0.6em)）

  #grid(columns: (1fr, 1fr, 1fr, 1fr), gutter: 4pt,
    [(A) $1$], [(B) $2$], [(C) $(sqrt(2))/2$], [(D) $sqrt(2)$])

  #align(center)[
    #block(breakable: false, width: 245pt, height: 275pt)[
      // 正方体
      #place(dx: 30pt, dy: 210pt, line(end: (100pt, 0pt), stroke: 0.8pt))       // A→B
      #place(dx: 130pt, dy: 210pt, line(end: (0pt, -100pt), stroke: 0.8pt))     // B→B1
      #place(dx: 130pt, dy: 110pt, line(end: (-100pt, 0pt), stroke: 0.8pt))     // B1→A1
      #place(dx: 30pt, dy: 110pt, line(end: (0pt, 100pt), stroke: 0.8pt))       // A1→A
      #place(dx: 85pt, dy: 65pt, line(end: (100pt, 0pt), stroke: 0.8pt))        // D1→C1
      #place(dx: 185pt, dy: 65pt, line(end: (0pt, 100pt), stroke: 0.8pt))       // C1→C
      #place(dx: 85pt, dy: 165pt, line(end: (0pt, -100pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // D→D1
      #place(dx: 85pt, dy: 165pt, line(end: (100pt, 0pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // D→C
      #place(dx: 30pt, dy: 210pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // A→D
      #place(dx: 130pt, dy: 210pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // B→C
      // 平面 ACD1 的两条边（红）与底面 AC（蓝）
      #place(dx: 85pt, dy: 65pt, line(end: (-55pt, 145pt), stroke: (paint: rgb("#c7362e"), thickness: 1.3pt)))        // D1→A
      #place(dx: 85pt, dy: 65pt, line(end: (100pt, 100pt), stroke: (paint: rgb("#c7362e"), thickness: 1.3pt)))        // D1→C
      #place(dx: 30pt, dy: 210pt, line(end: (155pt, -45pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.3pt)))       // A→C
      // 平面角的边：D→O（红）与 D1→O（红虚线）
      #place(dx: 85pt, dy: 165pt, line(end: (22.5pt, -22.5pt), stroke: (paint: rgb("#c7362e"), thickness: 1.2pt)))    // D→O
      #place(dx: 85pt, dy: 65pt, line(end: (22.5pt, 77.5pt), stroke: (paint: rgb("#c7362e"), thickness: 1pt, dash: "dashed"))) // D1→O
      // 点
      #place(dx: 28pt, dy: 208pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 208pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 183pt, dy: 163pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 83pt, dy: 163pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 28pt, dy: 108pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 108pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 183pt, dy: 63pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 83pt, dy: 63pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 105.5pt, dy: 140.5pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 12pt, dy: 214pt)[$A$]
      #place(dx: 134pt, dy: 214pt)[$B$]
      #place(dx: 190pt, dy: 168pt)[$C$]
      #place(dx: 72pt, dy: 168pt)[$D$]
      #place(dx: 8pt, dy: 98pt)[$A_1$]
      #place(dx: 134pt, dy: 98pt)[$B_1$]
      #place(dx: 190pt, dy: 54pt)[$C_1$]
      #place(dx: 70pt, dy: 52pt)[$D_1$]
      #place(dx: 108pt, dy: 134pt)[#text(fill: rgb("#c7362e"))[$O$]]
    ]
  ]

  图中红线为 $D_1 A$、$D_1 C$ 与 $D O$、$D_1 O$（红虚线），蓝线为 $A C$；$O$ 是 $A C$ 的中点（也是底面中心）。

  === 解析

  *① 作平面角。* 取 $A C$ 的中点 $O$（它就是底面中心，在 $B D$ 上）。

  - 底面是正方形，故 $B D perp A C$，于是 $D O perp A C$；
  - $D_1 A = D_1 C$（都是正方体的面对角线，长相等），所以 $triangle A C D_1$ 是等腰三角形，$O$ 是底边 $A C$ 的中点，由"三线合一"得 $D_1 O perp A C$。

  因此 $angle D_1 O D$ 就是二面角 $D_1 - A C - D$ 的平面角。

  *② 在 $triangle D_1 D O$ 中计算。* 设正方体棱长为 $a$。因为 $D_1 D perp$ 底面，所以 $D_1 D perp D O$，即 $triangle D_1 D O$ 是直角三角形，直角在 $D$；并且

  $ D_1 D = a, quad D O = 1/2 B D = (sqrt(2))/2 a. $

  于是

  $ tan angle D_1 O D = (D_1 D)/(D O) = a/((sqrt(2))/2 a) = 2/(sqrt(2)) = sqrt(2). $

  故选 *(D)*。

  *③ 换个算法核对。* 也可先算 $D_1 O$：在 $triangle D_1 D O$ 中

  $ D_1 O = sqrt(D_1 D^2 + D O^2) = sqrt(a^2 + a^2/2) = (sqrt(6))/2 a, $

  于是

  $ sin angle D_1 O D = (D_1 D)/(D_1 O) = a/((sqrt(6))/2 a) = 2/(sqrt(6)), quad cos angle D_1 O D = (D O)/(D_1 O) = ((sqrt(2))/2 a)/((sqrt(6))/2 a) = 1/(sqrt(3)), $

  两者相除仍得 $tan angle D_1 O D = sqrt(2)$，与上面一致。

  === 要点

  - *定义法三步*：在*棱*上取点（本题取中点 $O$）→ 在两个半平面内分别作棱的垂线（$O D$、$O D_1$）→ 说明所作角就是平面角。
  - *正方形给一组垂直*：$B D perp A C$，且 $D$、$O$、$B$ 共线，所以 $D O perp A C$。
  - *等腰三角形给另一组垂直*：$D_1 A = D_1 C$（面对角线相等）$=>$ "三线合一" $=>$ $D_1 O perp A C$。
  - *最后落在直角三角形上*：$D_1 D perp$ 底面 $=>$ $D_1 D perp D O$，于是 $tan angle D_1 O D = (D_1 D)/(D O)$ 一步得 $sqrt(2)$。
  - *求"正切"的小技巧*：若直接用 $tan = ("对边")/("邻边")$ 不顺手，可先算 $sin$ 与 $cos$ 再相除（本题第二种算法），两者互为验证。
  #line(length: 100%, stroke: 0.5pt + gray)

  === 【练 6】用三垂线法定点、并求二面角 $M - A C - D$ 的正切值

  *【练 6】* 如图，在四棱锥 $P - A B C D$ 中，底面 $A B C D$ 是边长为 $1$ 的正方形，$P A perp$ 底面 $A B C D$，$P A = A B$，点 $M$ 在棱 $P D$ 上，$P B text(∥)$ 平面 $A C M$。

  (1) 试确定点 $M$ 的位置，并说明理由；

  (2) 求二面角 $M - A C - D$ 的正切值。

  #align(center)[
    #block(breakable: false, width: 250pt, height: 285pt)[
      // 四棱锥 P-ABCD：A 为顶点投影，B 左前，C 中前，D 右
      #place(dx: 90pt, dy: 60pt, line(end: (-60pt, 150pt), stroke: 0.8pt))       // P→A（高，画虚线）
      #place(dx: 90pt, dy: 60pt, line(end: (-70pt, 195pt), stroke: 0.8pt))       // P→B
      #place(dx: 90pt, dy: 60pt, line(end: (55pt, 145pt), stroke: 0.8pt))        // P→C
      #place(dx: 90pt, dy: 60pt, line(end: (100pt, 120pt), stroke: 0.8pt))       // P→D
      #place(dx: 30pt, dy: 210pt, line(end: (60pt, 45pt), stroke: 0.8pt))        // A→B
      #place(dx: 90pt, dy: 255pt, line(end: (100pt, -45pt), stroke: 0.8pt))      // B→C
      #place(dx: 145pt, dy: 165pt, line(end: (-55pt, 45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // C→D
      #place(dx: 30pt, dy: 210pt, line(end: (115pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // A→D
      #place(dx: 30pt, dy: 210pt, line(end: (60pt, 45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // A→C
      #place(dx: 30pt, dy: 210pt, line(end: (0pt, -150pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // P→A 的虚线（高）
      // M 在 PD 中点，及 AM、CM
      #place(dx: 140pt, dy: 90pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      #place(dx: 30pt, dy: 210pt, line(end: (110pt, -120pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.2pt)))      // A→M
      #place(dx: 90pt, dy: 255pt, line(end: (50pt, -165pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.2pt)))       // C→M
      // 点
      #place(dx: 88pt, dy: 58pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 28pt, dy: 208pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 88pt, dy: 253pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 143pt, dy: 163pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 188pt, dy: 118pt, circle(radius: 1.8pt, fill: black))
      // 标签
      #place(dx: 82pt, dy: 46pt)[$P$]
      #place(dx: 14pt, dy: 210pt)[$A$]
      #place(dx: 84pt, dy: 262pt)[$B$]
      #place(dx: 148pt, dy: 168pt)[$C$]
      #place(dx: 192pt, dy: 112pt)[$D$]
      #place(dx: 146pt, dy: 82pt)[#text(fill: rgb("#c7362e"))[$M$]]
    ]
  ]

  图中 $P A perp$ 底面（$P$ 在 $A$ 正上方，$P A$ 画虚线），$M$ 为 $P D$ 中点（红点），蓝线为 $A M$、$C M$。

  === 解析

  *(1) $M$ 是 $P D$ 的中点。* 设 $O$ 为底面中心（$A C$ 与 $B D$ 的交点），连 $O M$。

  - 因为 $P B text(∥)$ 平面 $A C M$，且 $P B subset$ 平面 $P B D$；
  - 平面 $A C M$ 与平面 $P B D$ 有公共点 $O$（$O in A C$）与 $M$，故它们的交线就是直线 $O M$；

  由线面平行的性质定理得

  $ P B text(∥) O M. $

  在 $triangle P B D$ 中，$O$ 是 $B D$ 的中点，$M$ 在 $P D$ 上且 $O M text(∥) P B$，由中位线定理的逆用（或相似）得 $M$ 是 $P D$ 的中点。

  *(2) 求二面角 $M - A C - D$ 的正切值。* 用*三垂线法*作平面角：在棱 $A C$ 上取一点 $E$，使 $E$ 到 $A$ 的距离为 $1/4$（后面会看到这样取最好算），即 $E$ 分 $A C$ 为 $A E : E C = 1 : 3$。

  由 $P A perp$ 底面得 $P A perp A D$、$P A perp A B$；底面是正方形，所以 $A C perp B D$。又 $P A = A B = A D = 1$。以 $A$ 为原点，$A B$、$A D$、$A P$ 方向为 $x$、$y$、$z$ 轴，则

  $ A(0,0,0), quad C(1,1,0), quad D(0,1,0), quad P(0,0,1), quad M(0, 1/2, 1/2). $

  取 $E(1/4, 1/4, 0)$（它在 $A C$ 上）。

  - *在平面 $D A C$（底面）内*：垂直于 $A C$ 的方向可取 $(-1, 1, 0)$，从 $E$ 出发沿此方向与 $A D$ 交于点 $N(0, 1/2, 0)$，故 $arrow(E N) = (-1/4, 1/4, 0)$，且 $E N perp A C$；
  - *在平面 $M A C$ 内*：垂直于 $A C$ 的方向可取 $(-1, 1, 2)$（它与 $arrow(A C) = (1,1,0)$ 垂直，且与 $arrow(A M) = (0, 1/2, 1/2)$ 满足平面内的线性组合关系），故取 $arrow(E M') = (-1, 1, 2)$ 方向的射线，它与 $A C$ 垂直。

  于是 $angle N E M'$ 就是二面角 $M - A C - D$ 的平面角。计算：

  $ arrow(E N) dot arrow(E M') = (-1/4)(-1) + (1/4)(1) + 0 dot 2 = 1/2, $

  $ |arrow(E N)| = (sqrt(2))/4, quad |arrow(E M')| = sqrt(6) ("取单位方向向量 (1,1,2) 的模为" sqrt(6) "时两者同向" ), $

  取方向向量 $bold(u)_1 = (-1, 1, 0)$、$bold(u)_2 = (-1, 1, 2)$，则

  $ cos angle(bold(u)_1, bold(u)_2) = (1 + 1 + 0)/(sqrt(2) dot sqrt(6)) = 2/(2 sqrt(3)) = 1/(sqrt(3)), $

  $ sin angle = sqrt(1 - 1/3) = sqrt(2/3), quad tan angle = (sqrt(2/3))/(1/(sqrt(3))) = sqrt(2). $

  所以二面角 $M - A C - D$ 的正切值为 $sqrt(2)$。

  *另解（法向量，验算）*：平面 $D A C$ 就是底面，法向量 $bold(n)_1 = (0,0,1)$；平面 $M A C$ 中 $arrow(A C) = (1,1,0)$、$arrow(A M) = (0, 1/2, 1/2)$，取

  $ bold(n)_2 = arrow(A C) times arrow(A M) = (1/2, -1/2, 1/2) "∝" (1, -1, 1). $

  于是

  $ cos angle = (|bold(n)_1 dot bold(n)_2|)/(|bold(n)_1| |bold(n)_2|) = 1/(1 dot sqrt(3)) = 1/(sqrt(3)), quad tan angle = sqrt(2), $

  与解法一致。

  === 要点

  - *(1) 的关键是"找交线"*：平面 $A C M$ 与平面 $P B D$ 的公共点是 $O$ 和 $M$，交线即 $O M$，再由 $P B text(∥)$ 平面 $A C M$ 得 $P B text(∥) O M$，最后用中位线定出 $M$ 是 $P D$ 中点。
  - *(2) 三垂线法的实质*：找一条与棱 $A C$ 垂直的直线（本题方向 $(-1,1,0)$），再在另一个半平面内找与棱垂直的方向（$(-1,1,2)$），两方向的夹角就是平面角。
  - *$E$ 的取法不影响结果*：平面角与 $E$ 在 $A C$ 上的位置无关，取 $E(1/4,1/4,0)$ 只是让两条射线分别落在 $A D$ 和平面 $M A C$ 上、便于叙述。
  - *别忘了 $P A = A B = 1$*：正方体式的数据让坐标全是整数或简单分数，$M(0, 1/2, 1/2)$ 也一目了然。
  - *法向量法可作验算*：$bold(n)_2 ∝ (1,-1,1)$ 与 $bold(n)_1 = (0,0,1)$ 给出 $cos angle = 1/(sqrt(3))$、$tan angle = sqrt(2)$，与几何法一致。
  #line(length: 100%, stroke: 0.5pt + gray)

  === 【练 7】线面角、线面垂直与二面角综合

  *【练 7】* 如图，在四棱锥 $P - A B C D$ 中，$P A perp$ 底面 $A B C D$，$A B perp A D$，$A C perp C D$，$angle A B C = 60degree$，$P A = A B = B C$，$E$ 是 $P C$ 的中点。

  (1) 求 $P B$ 和平面 $P A D$ 所成的角的大小；

  (2) 证明：$A E perp$ 平面 $P C D$；

  (3) 求二面角 $A - P D - C$ 的正弦值。

  #align(center)[
    #block(breakable: false, width: 250pt, height: 280pt)[
      // 四棱锥 P-ABCD
      #place(dx: 60pt, dy: 60pt, line(end: (-30pt, 155pt), stroke: 0.8pt))      // P→A
      #place(dx: 60pt, dy: 60pt, line(end: (0pt, 200pt), stroke: 0.8pt))        // P→B
      #place(dx: 60pt, dy: 60pt, line(end: (100pt, 150pt), stroke: 0.8pt))      // P→C
      #place(dx: 60pt, dy: 60pt, line(end: (150pt, 115pt), stroke: 0.8pt))      // P→D
      #place(dx: 30pt, dy: 215pt, line(end: (30pt, 45pt), stroke: 0.8pt))       // A→B
      #place(dx: 60pt, dy: 260pt, line(end: (100pt, -45pt), stroke: 0.8pt))     // B→C
      #place(dx: 160pt, dy: 215pt, line(end: (-100pt, 45pt), stroke: 0.8pt))    // C→D
      #place(dx: 30pt, dy: 215pt, line(end: (130pt, 0pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // A→D
      #place(dx: 30pt, dy: 215pt, line(end: (30pt, 45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // A→C
      // E 为 PC 中点与 AE
      #place(dx: 110pt, dy: 135pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      #place(dx: 30pt, dy: 215pt, line(end: (80pt, -80pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.2pt)))        // A→E
      #place(dx: 30pt, dy: 215pt, line(end: (84.2pt, -117.4pt), stroke: (paint: rgb("#c7362e"), thickness: 1.1pt, dash: "dashed")))  // A→F（A 到 PD 的垂足）
      #place(dx: 110pt, dy: 135pt, line(end: (4.2pt, -37.4pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))              // E→F
      #place(dx: 112.2pt, dy: 97.6pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))                                            // 垂足 F
      // 点
      #place(dx: 58pt, dy: 58pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 28pt, dy: 213pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 58pt, dy: 258pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 158pt, dy: 213pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 208pt, dy: 168pt, circle(radius: 1.8pt, fill: black))
      // 标签
      #place(dx: 46pt, dy: 46pt)[$P$]
      #place(dx: 12pt, dy: 213pt)[$A$]
      #place(dx: 52pt, dy: 266pt)[$B$]
      #place(dx: 162pt, dy: 218pt)[$C$]
      #place(dx: 214pt, dy: 162pt)[$D$]
      #place(dx: 116pt, dy: 128pt)[#text(fill: rgb("#c7362e"))[$E$]]
      #place(dx: 116pt, dy: 88pt)[#text(fill: rgb("#c7362e"))[$F$]]
    ]
  ]

  图中 $P A perp$ 底面，$B$ 在前、$D$ 在右后；$E$ 是 $P C$ 中点、$F$ 是 $A$ 到 $P D$ 的垂足（两个红点）；蓝线为 $A E$、$E F$，红虚线为 $A F$。$sin theta = A E slash A F$ 即在这一组辅助线上取得。

  === 解析

  *(1) $P B$ 与平面 $P A D$ 所成的角。* 因为 $P A perp$ 底面，所以 $P A perp A B$；又已知 $A B perp A D$，且 $P A$、$A D$ 是平面 $P A D$ 内两条相交直线，故

  $ A B perp "平面" P A D. $

  也就是说 $B$ 在平面 $P A D$ 内的投影是 $A$，于是 $P B$ 的投影是 $P A$，所求角为 $angle B P A$。由 $P A = A B$ 得

  $ tan angle B P A = (A B)/(P A) = 1 quad => quad angle B P A = 45degree. $

  *(2) 证明 $A E perp$ 平面 $P C D$。*

  - 由 $A C perp C D$ 与 $P A perp$ 底面（故 $P A perp C D$）得 $C D perp$ 平面 $P A C$，又 $A E subset$ 平面 $P A C$，所以 $C D perp A E$；
  - 在 $triangle P A C$ 中：由 $triangle A B C$ 中 $A B = B C$ 且 $angle A B C = 60degree$ 知它是等边三角形，故 $A C = A B = P A$；于是 $triangle P A C$ 是等腰三角形（$P A = A C$），而 $E$ 是底边 $P C$ 的中点，由"三线合一"得 $A E perp P C$。

  由 $A E perp C D$、$A E perp P C$，且 $P C$、$C D$ 是平面 $P C D$ 内两条相交直线（交于 $C$），所以

  $ A E perp "平面" P C D. quad square $

  *(3) 二面角 $A - P D - C$ 的正弦值。* 由 (2) 知 $A E perp$ 平面 $P C D$，即 $E$ 是 $A$ 在平面 $P C D$ 内的投影。于是二面角 $theta = A - P D - C$ 满足

  $ sin theta = (A E)/("点" A "到直线" P D "的距离"). $

  设 $P A = A B = B C = 1$。由 $triangle A B C$ 等边得 $A C = 1$；又 $A B perp A D$、$A C perp C D$：以 $A$ 为原点、$A B$ 为 $x$ 轴、$A D$ 为 $y$ 轴、$A P$ 为 $z$ 轴建系，可算得

  $ A(0,0,0), quad P(0,0,1), quad C(1/2, (sqrt(3))/2, 0), quad D(0, (2 sqrt(3))/3, 0), quad E(1/4, (sqrt(3))/4, 1/2). $

  于是

  $ A E = sqrt(1/16 + 3/16 + 1/4) = (sqrt(2))/2, $

  而点 $A$ 到直线 $P D$ 的距离为

  $ d = (|arrow(P A) times arrow(P D)|)/(|arrow(P D)|) = ((2 sqrt(3))/3)/(sqrt(7/3)) = 2/(sqrt(7)), $

  所以

  $ sin theta = (A E)/d = ((sqrt(2))/2)/(2/(sqrt(7))) = (sqrt(14))/4. $

  所以二面角 $A - P D - C$ 的正弦值为 $(sqrt(14))/4$。

  *验算（法向量）*：平面 $A P D$ 就是 $y O z$ 平面，$bold(n)_1 = (1,0,0)$；平面 $C P D$ 的法向量可取 $bold(n)_2 = (sqrt(3), 3, 2 sqrt(3))$，于是

  $ cos angle(bold(n)_1, bold(n)_2) = (sqrt(3))/(1 dot 2 sqrt(6)) = 1/(2 sqrt(2)), quad sin theta = sqrt(1 - 1/8) = (sqrt(14))/4, $

  与上面一致。

  === 要点

  - *(1) 的关键仍是"找投影"*：$A B perp$ 平面 $P A D$（由 $P A perp$ 底面与 $A B perp A D$ 得），所以 $B$ 的投影是 $A$，$P B$ 的投影是 $P A$，所求角为 $angle B P A = 45degree$。
  - *(2) 两步各得一条垂直*：$C D perp$ 平面 $P A C$ 给 $C D perp A E$；等腰 $triangle P A C$ 的"三线合一"给 $A E perp P C$。其中 $triangle A B C$ 等边（$A B = B C$、$angle A B C = 60degree$）是推出 $P A = A C$ 的关键。
  - *(3) 借用 (2) 的结论*：$A E perp$ 平面 $P C D$ $=>$ $E$ 是 $A$ 的投影，于是 $sin theta = (A E)/("点" A "到" P D "的距离")$——把二面角问题转化为"两条长度之比"。
  - *点到直线的距离用向量最稳*：$d = |arrow(P A) times arrow(P D)|/|arrow(P D)|$，避免作垂足。
  - *答案 $(sqrt(14))/4 approx 0.935$* 接近 $1$，说明这个二面角较大（约 $69degree$ 的余角关系），与图中"两个半平面张得较开"相符。
]
