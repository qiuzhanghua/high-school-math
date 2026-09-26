#import "template.typ": *

#set document(title: [线面垂直])

#template(heading2-align: left, page-footer: "第 1 页")[

  == 一、线面垂直的判定与性质

  *判定（③）*：若一条直线垂直于平面内*两条相交直线*，则它垂直于这个平面。

  *性质*：若 $a perp alpha$，则 $a$ 垂直于 $alpha$ 内的*任意*一条直线（这是证"线线垂直"，尤其是异面直线垂直的主要手段）。

  证明"线面垂直"的常用套路：

  - *等腰三角形 + 中线*：$A B = A C$、$D$ 为 $B C$ 中点 $=>$ $A D perp B C$；
  - *勾股定理逆定理*：算出三边平方关系得直角；
  - *正方形/矩形的邻边*、*直径所对的圆周角*、*菱形对角线互相垂直*；
  - *线面垂直推线线垂直*：先用已知的线面垂直得到一组线线垂直，再配合"平面内两条相交直线"完成判定。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 二、典型例题

  === 【例 1】证 $A E perp "平面" P C D$

  *【例 1】* 在四棱锥 $P - A B C D$ 中，$P A perp "平面" A B C D$，底面 $A B C D$ 是正方形，且 $P A = A D = 3$，点 $E$ 为线段 $P D$ 的中点。求证：$A E perp "平面" P C D$。

  #align(center)[
    #block(breakable: false, width: 250pt, height: 262pt)[
      // 底面 ABCD：AD 为前边（水平），AB 在左后方（向左下方纵深），故 AB 画虚线
      #place(dx: 110pt, dy: 180pt, line(end: (100pt, 0pt), stroke: 0.8pt))      // A→D（前边）
      #place(dx: 210pt, dy: 180pt, line(end: (-30pt, 60pt), stroke: 0.8pt))     // D→C
      #place(dx: 180pt, dy: 240pt, line(end: (-100pt, 0pt), stroke: 0.8pt))     // C→B（前下边）
      #place(dx: 80pt, dy: 240pt, line(end: (30pt, -60pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // B→A（在后，被挡）
      // 侧棱：PA 垂直于底面
      #place(dx: 110pt, dy: 50pt, line(end: (0pt, 130pt), stroke: 0.8pt))       // P→A
      #place(dx: 110pt, dy: 50pt, line(end: (-30pt, 190pt), stroke: 0.8pt))     // P→B
      #place(dx: 110pt, dy: 50pt, line(end: (100pt, 130pt), stroke: 0.8pt))     // P→D
      // 平面 PCD 的两条边（蓝）与目标线 AE（红）
      #place(dx: 110pt, dy: 50pt, line(end: (70pt, 190pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))    // P→C
      #place(dx: 180pt, dy: 240pt, line(end: (-100pt, 0pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))  // C→D（对调后 D 在左下）
      #place(dx: 110pt, dy: 180pt, line(end: (50pt, -65pt), stroke: (paint: rgb("#c7362e"), thickness: 1.3pt)))   // A→E
      // 点
      #place(dx: 108pt, dy: 48pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 108pt, dy: 178pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 78pt, dy: 238pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 178pt, dy: 238pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 208pt, dy: 178pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 158pt, dy: 113pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 115pt, dy: 36pt)[$P$]
      #place(dx: 87pt, dy: 176pt)[$A$]
      #place(dx: 56pt, dy: 246pt)[$D$]
      #place(dx: 186pt, dy: 244pt)[$C$]
      #place(dx: 216pt, dy: 170pt)[$B$]
      #place(dx: 165pt, dy: 101pt)[#text(fill: rgb("#c7362e"))[$E$]]
    ]
  ]

  图中 $P A perp "平面" A B C D$；蓝线为平面 $P C D$ 的两条边 $P C$、$C D$，红线 $A E$ 是目标直线（$E$ 为 $P D$ 中点），灰虚线为被挡住的棱。

  === 解析

  *思路*：要证 $A E perp "平面" P C D$，按判定定理只需在平面 $P C D$ 内找到*两条相交直线*都与 $A E$ 垂直——最自然的两条是 $P D$ 与 $C D$。

  *证明*：

  1. 因为 $P A perp "平面" A B C D$，而 $A D subset "平面" A B C D$，所以

  $ P A perp A D. $

  又 $P A = A D = 3$，即 $triangle P A D$ 是等腰直角三角形，且 $P D$ 是它的斜边。

  2. 因为 $E$ 是 $P D$ 的中点，由等腰三角形"三线合一"（或"直角三角形斜边上的中线"的逆用）得

  $ A E perp P D. $

  3. 因为底面 $A B C D$ 是正方形，所以

  $ C D perp A D. $

  又 $P A perp "平面" A B C D$、$C D subset "平面" A B C D$，所以 $P A perp C D$。于是 $C D$ 垂直于平面 $P A D$ 内的两条相交直线 $A D$、$P A$，故

  $ C D perp "平面" P A D. $

  4. 因为 $A E subset "平面" P A D$，所以

  $ C D perp A E. $

  5. 由 $A E perp P D$、$A E perp C D$，且 $P D$、$C D$ 是平面 $P C D$ 内的两条相交直线，由线面垂直的判定定理得

  $ A E perp "平面" P C D. quad square $

  === 要点

  - *先看"等腰 + 中点"*：$P A perp$ 底面给出 $P A perp A D$，配合 $P A = A D$ 与中点 $E$，立刻得到 $A E perp P D$——这是第一组垂直。
  - *第二组垂直要"借"已知的线面垂直*：$P A perp$ 底面 $=>$ $P A perp C D$，再与 $C D perp A D$ 合起来得 $C D perp "平面" P A D$，从而 $C D perp A E$。
  - *"两条相交直线"缺一不可*：本题用 $P D$ 与 $C D$（它们在 $D$ 处相交），所以必须点明"相交"。
  - *长度条件用来造等腰*：$P A = A D = 3$ 的作用就是让 $triangle P A D$ 成为等腰直角三角形，别把它当成单纯的计算数据。
  - *书写三步走*：先垂直（$A E perp P D$、$A E perp C D$），再点明两线在平面内且相交，最后下结论。
  #line(length: 100%, stroke: 0.5pt + gray)

  == 三、练习：多面体中的线面垂直

  === 【练 1】证 $A F perp "平面" B C F$

  *【练 1】* 如图，多面体 $A B C D E F$ 中，平面 $A B C text(∥) "平面" D E F$，$A E text(∥) C D$，$A E perp "平面" A B C$，四边形 $A B F E$ 为直角梯形，其中 $A B text(∥) E F$，$A B perp B C$，$A B = B C = 2 A E = 2 E F$。求证：$A F perp "平面" B C F$。

  #align(center)[
    #block(breakable: false, width: 220pt, height: 268pt)[
      // 可见棱
      #place(dx: 60pt, dy: 110pt, line(end: (25pt, 25pt), stroke: 0.8pt))      // E→F
      #place(dx: 60pt, dy: 110pt, line(end: (120pt, 5pt), stroke: 0.8pt))      // E→D
      #place(dx: 85pt, dy: 135pt, line(end: (95pt, -20pt), stroke: 0.8pt))     // F→D（顶面 DEF 的边）
      #place(dx: 180pt, dy: 115pt, line(end: (0pt, 90pt), stroke: 0.8pt))      // D→C
      #place(dx: 180pt, dy: 205pt, line(end: (-70pt, 45pt), stroke: 0.8pt))    // C→B
      #place(dx: 60pt, dy: 200pt, line(end: (50pt, 50pt), stroke: 0.8pt))      // A→B
      #place(dx: 60pt, dy: 200pt, line(end: (0pt, -90pt), stroke: 0.8pt))      // A→E
      // 平面 BCF 的三条边（蓝）
      #place(dx: 85pt, dy: 135pt, line(end: (25pt, 115pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))   // F→B
      #place(dx: 85pt, dy: 135pt, line(end: (95pt, 70pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))    // F→C
      #place(dx: 180pt, dy: 205pt, line(end: (-70pt, 45pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))  // C→B
      // 目标直线 AF（红）与不可见的 AC（灰虚线）
      #place(dx: 60pt, dy: 200pt, line(end: (25pt, -65pt), stroke: (paint: rgb("#c7362e"), thickness: 1.3pt)))   // A→F
      #place(dx: 60pt, dy: 200pt, line(end: (120pt, 5pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // A→C（被挡）
      // 点
      #place(dx: 58pt, dy: 108pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 83pt, dy: 133pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 58pt, dy: 198pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 108pt, dy: 248pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 178pt, dy: 203pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 178pt, dy: 113pt, circle(radius: 1.8pt, fill: black))
      // 标签
      #place(dx: 44pt, dy: 98pt)[$E$]
      #place(dx: 66pt, dy: 126pt)[$F$]
      #place(dx: 42pt, dy: 200pt)[$A$]
      #place(dx: 106pt, dy: 256pt)[$B$]
      #place(dx: 184pt, dy: 208pt)[$C$]
      #place(dx: 184pt, dy: 104pt)[$D$]
    ]
  ]

  图中 $A E perp "平面" A B C$；蓝线为平面 $B C F$ 的三条边 $B F$、$F C$、$C B$，红线 $A F$ 是目标直线，灰虚线 $A C$ 被挡住。

  === 解析

  *思路*：要证 $A F perp "平面" B C F$，需在平面 $B C F$ 中找到两条相交直线都与 $A F$ 垂直——一条是 $B C$（由已知的线面垂直得到），另一条是 $B F$（需在直角梯形里用长度关系算出来）。

  *证明*：

  1. 因为 $A E perp "平面" A B C$，而 $B C subset "平面" A B C$，所以

  $ A E perp B C. $

  2. 又 $A B perp B C$，且 $A B$、$A E$ 是平面 $A B F E$ 内的两条相交直线，故

  $ B C perp "平面" A B F E. $

  3. 因为 $A F subset "平面" A B F E$，所以

  $ B C perp A F. $

  4. 再算长度关系。由 $A B text(∥) E F$、$A E perp A B$ 知直角梯形 $A B F E$ 中 $A E perp A B$、$A E perp E F$，且

  $ A E = E F, quad A B = 2 A E. $

  设 $A E = E F = 1$，则 $A B = 2$。过 $F$ 作 $F H perp A B$ 于 $H$，则 $A H = E F = 1$、$F H = A E = 1$，于是

  $ H B = A B - A H = 1, quad B F^2 = H B^2 + F H^2 = 1 + 1 = 2. $

  又

  $ A F^2 = A E^2 + E F^2 = 1 + 1 = 2, quad A B^2 = 4, $

  所以 $A F^2 + B F^2 = 2 + 2 = 4 = A B^2$，由勾股定理的逆定理得

  $ A F perp B F quad ("在" triangle A B F "中") . $

  5. 由 $A F perp B C$、$A F perp B F$，且 $B C$、$B F$ 是平面 $B C F$ 内的两条相交直线（交于 $B$），由线面垂直的判定定理得

  $ A F perp "平面" B C F. quad square $

  === 要点

  - *两条垂直各有来源*：$A F perp B C$ 来自"线面垂直 $=>$ 线线垂直"（先证 $B C perp "平面" A B F E$）；$A F perp B F$ 来自*长度关系 + 勾股逆定理*。
  - *把空间问题压回平面*：$A$、$B$、$F$、$E$ 共面，所以 $A F$、$B F$、$A B$ 的长度关系可以在平面 $A B F E$ 内用平面几何算。
  - *"直角梯形"要挖出直角*：$A B text(∥) E F$ 且 $A E perp A B$ $=>$ $A E perp E F$，两个直角都要用到。
  - *比例条件 $A B = 2 E F = 2 A E$ 是关键*：它使 $A F = B F = sqrt(2)$ 而 $A B = 2$，正好凑成 $A F^2 + B F^2 = A B^2$；若比例变了，$A F perp B F$ 就不成立。
  - *书写顺序*：先"线面垂直 $=>$ 线线垂直"，再"勾股逆定理得垂直"，最后点明两条相交直线。
  #line(length: 100%, stroke: 0.5pt + gray)

  === 【练 2】证 $B D perp P A$

  *【练 2】* 四棱锥 $P - A B C D$ 中，$P D perp "底面" A B C D$，$C D text(∥) A B$，$A D = D C = C B = 1$，$A B = 2$，$D P = sqrt(3)$。证明：$B D perp P A$。

  #align(center)[
    #block(breakable: false, width: 205pt, height: 268pt)[
      // 底面梯形 ABCD（斜二测）：AB 为长底，DC 为短底且 DC∥AB
      #place(dx: 45pt, dy: 245pt, line(end: (130pt, 5pt), stroke: 0.8pt))        // A→B
      #place(dx: 175pt, dy: 250pt, line(end: (-42.5pt, -53pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // B→C
      #place(dx: 132.5pt, dy: 197pt, line(end: (-65pt, -3pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // C→D（被挡）
      #place(dx: 67.5pt, dy: 194pt, line(end: (-22.5pt, 51pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // D→A（被挡）
      // 侧棱
      #place(dx: 67.5pt, dy: 84pt, line(end: (-22.5pt, 161pt), stroke: 0.8pt))   // P→A
      #place(dx: 67.5pt, dy: 84pt, line(end: (107.5pt, 166pt), stroke: 0.8pt))   // P→B
      #place(dx: 67.5pt, dy: 84pt, line(end: (65pt, 113pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))      // P→C
      #place(dx: 67.5pt, dy: 84pt, line(end: (0pt, 110pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))      // P→D（高，被挡）
      // 点
      #place(dx: 65.5pt, dy: 82pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 43pt, dy: 243pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 173pt, dy: 248pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 130.5pt, dy: 195pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 65.5pt, dy: 192pt, circle(radius: 1.8pt, fill: black))
      // 标签
      #place(dx: 72pt, dy: 74pt)[$P$]
      #place(dx: 28pt, dy: 238pt)[$A$]
      #place(dx: 178pt, dy: 254pt)[$B$]
      #place(dx: 136pt, dy: 200pt)[$C$]
      #place(dx: 48pt, dy: 186pt)[$D$]
    ]
  ]

  图中 $P D perp "底面" A B C D$：$P D$ 为高（虚线），$P$ 在 $D$ 的正上方；后排的棱 $P D$、$P C$、$D A$、$D C$、$B C$ 均画灰虚线（被挡住），$P A$、$P B$、$A B$ 为实线。

  === 解析

  *思路*：$B D$ 与 $P A$ 是异面直线，按"线线垂直"的通法，只需证 $B D perp "平面" P A D$，再由线面垂直推出 $B D perp P A$。

  *① 先证 $B D perp A D$。* 取 $A B$ 的中点 $E$。

  - 由 $C D text(∥) A B$ 且 $A E = 1/2 A B = 1 = C D$，得 $A E text(∥) C D$ 且相等，所以四边形 $A E C D$ 是平行四边形，从而 $C E = A D = 1$；
  - 于是在 $triangle E B C$ 中，$E B = B C = C E = 1$，即它是等边三角形，故 $angle C B A = 60degree$；
  - 又梯形 $A B C D$ 中 $A D = C B$，故它关于中垂线对称，$angle D A B = angle C B A = 60degree$。

  在 $triangle D A B$ 中，$A D = 1$、$A B = 2$、$angle D A B = 60degree$，由余弦定理

  $ B D^2 = 1^2 + 2^2 - 2 dot 1 dot 2 dot cos 60degree = 1 + 4 - 2 = 3, $

  即 $B D = sqrt(3)$。于是

  $ A D^2 + B D^2 = 1 + 3 = 4 = A B^2, $

  由勾股定理的逆定理得 $angle A D B = 90degree$，即

  $ B D perp A D. $

  *② 再由线面垂直推线线垂直。* 因为 $P D perp "底面" A B C D$，而 $B D subset "底面" A B C D$，所以

  $ P D perp B D. $

  又 $A D$、$P D$ 是平面 $P A D$ 内的两条相交直线，由 ① 与 ② 得

  $ B D perp "平面" P A D. $

  因为 $P A subset "平面" P A D$，所以

  $ B D perp P A. quad square $

  === 要点

  - *异面直线垂直的固定套路*：先证"线面垂直"（本题 $B D perp "平面" P A D$），再由线面垂直的性质得到线线垂直。
  - *底面梯形的处理*：取长底中点 $E$，"截出"一个平行四边形 $A E C D$ 和一个等边三角形 $E B C$，于是 $angle D A B = 60degree$ 就出来了——这是等腰梯形题的常用辅助线。
  - *两条信息都要用*：$P D perp$ 底面给出 $P D perp B D$；$B D perp A D$ 由长度与勾股逆定理给出。缺一条都推不出线面垂直。
  - *"相交直线"要写明*：$A D$ 与 $P D$ 在 $D$ 处相交，所以 $B D$ 垂直于平面 $P A D$。
  - *$D P = sqrt(3)$ 是干扰条件*：本题的证明只用到底面数据，$D P = sqrt(3)$ 供后续求体积、求角使用。
]
