#import "template.typ": *

#set document(title: [面面垂直及其应用])

#template(heading2-align: left, page-footer: "第 1 页")[

  == 一、面面垂直的判定与性质

  *判定*：若一个平面经过另一个平面的一条*垂线*，则这两个平面垂直。即

  $ a perp alpha, quad a subset beta quad => quad alpha perp beta. $

  *性质*：若两个平面垂直，则在一个平面内*垂直于交线*的直线垂直于另一个平面。即

  $ alpha perp beta, quad alpha inter beta = l, quad a subset alpha, quad a perp l quad => quad a perp beta. $

  *两条使用提示*：

  - *证面面垂直*：只需在其中一个平面内"找出"（或"作出"）一条另一个平面的垂线——这条垂线通常由*线面垂直*而来；
  - *用面面垂直*：在垂直的两个平面中作交线的垂线，即可得到另一平面的垂线，从而把"面面垂直"转化为"线面垂直"。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 二、典型例题

  === 【例 1】证平面 $A E F perp$ 平面 $B_1 B C C_1$

  *【例 1】* 直三棱柱 $A B C - A_1 B_1 C_1$ 的底面 $A B C$ 是边长为 $2$ 的正三角形，$E$、$F$ 分别是 $B C$、$C C_1$ 的中点。证明：平面 $A E F perp$ 平面 $B_1 B C C_1$。

  #align(center)[
    #block(breakable: false, width: 205pt, height: 250pt)[
      // 底面 ABC 与顶面 A1B1C1；AC、A1C1 水平且在后；B、B1 左移到 A 与 C 之间
      #place(dx: 40pt, dy: 195pt, line(end: (38pt, 45pt), stroke: 0.8pt))        // A→B
      #place(dx: 78pt, dy: 240pt, line(end: (37pt, -45pt), stroke: 0.8pt))       // B→C
      #place(dx: 40pt, dy: 195pt, line(end: (75pt, 0pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // A→C（水平、在后）
      #place(dx: 40pt, dy: 90pt, line(end: (38pt, 45pt), stroke: 0.8pt))         // A1→B1
      #place(dx: 78pt, dy: 135pt, line(end: (37pt, -45pt), stroke: 0.8pt))       // B1→C1
      #place(dx: 40pt, dy: 90pt, line(end: (75pt, 0pt), stroke: 0.8pt))          // A1→C1（水平）
      // 侧棱
      #place(dx: 40pt, dy: 195pt, line(end: (0pt, -105pt), stroke: 0.8pt))       // A→A1
      #place(dx: 78pt, dy: 240pt, line(end: (0pt, -105pt), stroke: 0.8pt))       // B→B1
      #place(dx: 115pt, dy: 195pt, line(end: (0pt, -105pt), stroke: 0.8pt))      // C→C1
      // 平面 B1BCC1 的边（蓝）
      #place(dx: 115pt, dy: 195pt, line(end: (0pt, -105pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))   // C→C1
      #place(dx: 115pt, dy: 90pt, line(end: (-37pt, 45pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))   // C1→B1
      #place(dx: 78pt, dy: 240pt, line(end: (37pt, -45pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))   // B→C
      // 平面 AEF 的三条边（红）
      #place(dx: 40pt, dy: 195pt, line(end: (56.5pt, 22.5pt), stroke: (paint: rgb("#c7362e"), thickness: 1.1pt))) // A→E
      #place(dx: 40pt, dy: 195pt, line(end: (75pt, -52.5pt), stroke: (paint: rgb("#c7362e"), thickness: 1.1pt)))  // A→F
      #place(dx: 96.5pt, dy: 217.5pt, line(end: (18.5pt, -75pt), stroke: (paint: rgb("#c7362e"), thickness: 1.1pt))) // E→F
      // 点
      #place(dx: 38pt, dy: 193pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 76pt, dy: 238pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 113pt, dy: 193pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 38pt, dy: 88pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 76pt, dy: 133pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 113pt, dy: 88pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 94.5pt, dy: 215.5pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      #place(dx: 113pt, dy: 140.5pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 22pt, dy: 198pt)[$A$]
      #place(dx: 80pt, dy: 248pt)[$B$]
      #place(dx: 119pt, dy: 186pt)[$C$]
      #place(dx: 20pt, dy: 78pt)[$A_1$]
      #place(dx: 56pt, dy: 128pt)[$B_1$]
      #place(dx: 119pt, dy: 80pt)[$C_1$]
      #place(dx: 100pt, dy: 214pt)[#text(fill: rgb("#c7362e"))[$E$]]
      #place(dx: 119pt, dy: 133pt)[#text(fill: rgb("#c7362e"))[$F$]]
    ]
  ]

  图中蓝线为侧面（矩形）$B_1 B C C_1$ 的轮廓，红线为平面 $A E F$ 的三条边；$E$ 是 $B C$ 中点、$F$ 是 $C C_1$ 中点，灰虚线为被挡住的棱 $A C$。

  === 解析

  *思路*：要证"平面 $A E F perp$ 平面 $B_1 B C C_1$"，按判定定理，只需在平面 $A E F$ 内找一条平面 $B_1 B C C_1$ 的垂线——最自然的就是 $A E$。

  *证明*：

  1. 因为底面 $A B C$ 是正三角形，$E$ 是 $B C$ 的中点，由等腰三角形"三线合一"得

  $ A E perp B C. $

  2. 因为棱柱是*直*三棱柱，所以侧棱垂直于底面，即 $B B_1 perp "平面" A B C$；又 $A E subset "平面" A B C$，故

  $ B B_1 perp A E. $

  3. 由 ①、② 得：$A E$ 垂直于平面 $B_1 B C C_1$ 内的两条相交直线 $B C$、$B B_1$（它们交于点 $B$），由线面垂直的判定定理

  $ A E perp "平面" B_1 B C C_1. $

  4. 因为 $A E subset$ 平面 $A E F$，即平面 $A E F$ 经过平面 $B_1 B C C_1$ 的一条垂线 $A E$，由面面垂直的判定定理得

  $ "平面" A E F perp "平面" B_1 B C C_1. quad square $

  === 要点

  - *证面面垂直 $=>$ 先证线面垂直*：本题的关键是证出 $A E perp "平面" B_1 B C C_1$，再用"平面 $A E F$ 过这条垂线"完成判定。
  - *"正三角形 + 中点"必出垂直*：$E$ 是 $B C$ 中点，由三线合一得 $A E perp B C$——这是第一组垂直，也是全题的突破口。
  - *"直棱柱"的价值*：直棱柱给出"侧棱 $perp$ 底面"，从而 $B B_1 perp A E$；这一步把"跨面"的垂直关系落到了底面内。
  - *"两条相交直线"要写明*：$B C$ 与 $B B_1$ 在 $B$ 处相交，都在平面 $B_1 B C C_1$ 内，缺一不可。
  - *$F$ 与"边长为 $2$"在本题中不起作用*：$F$ 只是用来*确定平面* $A E F$，边长数据是干扰条件（供后续求体积、求角）。
  #line(length: 100%, stroke: 0.5pt + gray)

  == 三、练习：圆柱中的面面垂直

  === 【练 1】证平面 $A B D perp$ 平面 $A D C$

  *【练 1】* 如图所示，圆柱 $O_1 O$ 中，母线 $A B$ 与圆底垂直，$B C$ 是 圆 $O$ 的直径，点 $D$ 是 圆 $O$ 的圆周上异于 $B$、$C$ 的点。求证：平面 $A B D perp$ 平面 $A D C$。

  #align(center)[
    #block(breakable: false, width: 245pt, height: 262pt)[
      // 圆柱：上下底面椭圆 + 右侧竖直线（左侧竖直边即母线 AB）
      #place(dx: 45pt, dy: 72pt, ellipse(width: 170pt, height: 46pt, stroke: 0.8pt))
      #place(dx: 45pt, dy: 192pt, ellipse(width: 170pt, height: 46pt, stroke: 0.8pt))
      #place(dx: 215pt, dy: 95pt, line(end: (0pt, 120pt), stroke: 0.8pt))
      // 直径 BC（被挡住，虚线）
      #place(dx: 45pt, dy: 215pt, line(end: (170pt, 0pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))
      // 平面 ABD 的三条边（红）：AB 即最左侧竖直母线，另两条为 BD、AD
      #place(dx: 45pt, dy: 95pt, line(end: (0pt, 120pt), stroke: (paint: rgb("#c7362e"), thickness: 1.2pt)))   // A→B
      #place(dx: 45pt, dy: 215pt, line(end: (85pt, 23pt), stroke: (paint: rgb("#c7362e"), thickness: 1.2pt)))   // B→D
      #place(dx: 130pt, dy: 238pt, line(end: (-85pt, -143pt), stroke: (paint: rgb("#c7362e"), thickness: 1.2pt))) // D→A
      // 点
      #place(dx: 128pt, dy: 93pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 213pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 43pt, dy: 93pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 43pt, dy: 213pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 213pt, dy: 213pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 236pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 110pt, dy: 72pt)[$O_1$]
      #place(dx: 133pt, dy: 208pt)[$O$]
      #place(dx: 24pt, dy: 84pt)[$A$]
      #place(dx: 22pt, dy: 212pt)[$B$]
      #place(dx: 218pt, dy: 216pt)[$C$]
      #place(dx: 133pt, dy: 244pt)[#text(fill: rgb("#c7362e"))[$D$]]
    ]
  ]

  图中圆柱上下底面为椭圆，$A B$ 是最左侧的竖直母线（$perp$ 圆底），$B C$ 是底面直径（灰虚线），$D$ 在底面前方的圆周上；红线为平面 $A B D$ 的三条边 $A B$、$B D$、$A D$。

  === 解析

  *思路*：要证"平面 $A B D perp$ 平面 $A D C$"，按判定定理，只需在其中一个平面内找另一个平面的一条垂线——$C D$ 正好是对面两条直线的垂线。

  *证明*：

  1. 因为 $B C$ 是 圆 $O$ 的直径，$D$ 在圆周上，所以由"直径所对的圆周角是直角"得

  $ angle B D C = 90degree, quad "即" quad C D perp B D. $

  2. 因为 $A B$ 是母线，$A B perp$ 圆底（底面），而 $C D subset$ 底面，所以

  $ A B perp C D. $

  3. 由 ①、② 得：$C D$ 垂直于平面 $A B D$ 内的两条相交直线 $B D$、$A B$（它们交于点 $B$），由线面垂直的判定定理

  $ C D perp "平面" A B D. $

  4. 因为 $C D subset$ 平面 $A D C$，即平面 $A D C$ 经过平面 $A B D$ 的一条垂线 $C D$，由面面垂直的判定定理得

  $ "平面" A B D perp "平面" A D C. quad square $

  === 要点

  - *圆中"直径"的信息要立刻用*：$B C$ 是直径、$D$ 在圆周上 $=>$ $angle B D C = 90degree$ $=>$ $C D perp B D$，这是全题的突破口。
  - *圆柱的母线 $=>$ 线面垂直*：$A B perp$ 底面，从而 $A B$ 垂直于底面内的*任意*直线，于是 $A B perp C D$。
  - *选哪条线当"垂线"*：证"平面 $A B D perp$ 平面 $A D C$"，就找平面 $A D C$ 中垂直于平面 $A B D$ 的直线——$C D$ 同时垂直于 $B D$ 与 $A B$，正好胜任。
  - *"两条相交直线"要写明*：$B D$ 与 $A B$ 在 $B$ 处相交，都在平面 $A B D$ 内。
  - *与例 1 的对比*：两题都是"先证线面垂直，再用面面垂直的判定"，区别只在于"线面垂直"来路不同（例 1 用正三角形与直棱柱，本题用直径所对圆周角与母线）。
  #line(length: 100%, stroke: 0.5pt + gray)

  === 【练 2】证平面 $Q A D perp$ 平面 $A B C D$

  *【练 2】* 在四棱锥 $Q - A B C D$ 中，底面 $A B C D$ 是正方形。若 $A D = 2$，$Q D = Q A = sqrt(5)$，$Q C = 3$。证明：平面 $Q A D perp$ 平面 $A B C D$。

  #align(center)[
    #block(breakable: false, width: 210pt, height: 272pt)[
      // 底面正方形 ABCD（斜二测）：B 左移，避免 Q、A、B 看起来共线
      #place(dx: 75pt, dy: 190pt, line(end: (100pt, 0pt), stroke: 0.8pt))        // A→D（前边）
      #place(dx: 175pt, dy: 190pt, line(end: (-45pt, 55pt), stroke: 0.8pt))      // D→C
      #place(dx: 130pt, dy: 245pt, line(end: (-100pt, 0pt), stroke: 0.8pt))      // C→B
      #place(dx: 30pt, dy: 245pt, line(end: (45pt, -55pt), stroke: 0.8pt))       // B→A
      // 侧棱
      #place(dx: 125pt, dy: 60pt, line(end: (-50pt, 130pt), stroke: 0.8pt))      // Q→A
      #place(dx: 125pt, dy: 60pt, line(end: (50pt, 130pt), stroke: 0.8pt))       // Q→D
      #place(dx: 125pt, dy: 60pt, line(end: (-95pt, 185pt), stroke: 0.8pt))      // Q→B
      #place(dx: 125pt, dy: 60pt, line(end: (5pt, 185pt), stroke: 0.8pt))        // Q→C
      // 平面 QAD 的三条边（红）
      #place(dx: 125pt, dy: 60pt, line(end: (-50pt, 130pt), stroke: (paint: rgb("#c7362e"), thickness: 1.2pt)))
      #place(dx: 125pt, dy: 60pt, line(end: (50pt, 130pt), stroke: (paint: rgb("#c7362e"), thickness: 1.2pt)))
      #place(dx: 75pt, dy: 190pt, line(end: (100pt, 0pt), stroke: (paint: rgb("#c7362e"), thickness: 1.2pt)))
      // 底面其余三条边（蓝）
      #place(dx: 175pt, dy: 190pt, line(end: (-45pt, 55pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))
      #place(dx: 130pt, dy: 245pt, line(end: (-100pt, 0pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))
      #place(dx: 30pt, dy: 245pt, line(end: (45pt, -55pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))
      // 点
      #place(dx: 123pt, dy: 58pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 73pt, dy: 188pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 28pt, dy: 243pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 243pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 173pt, dy: 188pt, circle(radius: 1.8pt, fill: black))
      // 标签
      #place(dx: 130pt, dy: 44pt)[$Q$]
      #place(dx: 56pt, dy: 186pt)[$A$]
      #place(dx: 8pt, dy: 250pt)[$B$]
      #place(dx: 134pt, dy: 250pt)[$C$]
      #place(dx: 180pt, dy: 182pt)[$D$]
    ]
  ]

  图中底面 $A B C D$ 是正方形（斜二测画成平行四边形）；红线为平面 $Q A D$ 的三条边 $Q A$、$Q D$、$A D$，蓝线为底面另外三条边。

  === 解析

  *思路*：证"平面 $Q A D perp$ 平面 $A B C D$"，只需在平面 $Q A D$ 内找一条底面 $A B C D$ 的垂线。取 $A D$ 的中点 $O$，则 $Q O$ 就是这条垂线——先用长度算清楚。

  *证明*：

  1. 取 $A D$ 的中点 $O$，连 $Q O$。因为 $Q A = Q D = sqrt(5)$，所以 $triangle Q A D$ 是等腰三角形，由"三线合一"得

  $ Q O perp A D, quad "且" quad Q O = sqrt(Q A^2 - A O^2) = sqrt(5 - 1) = 2. $

  2. 在正方形 $A B C D$ 中，$O$ 是 $A D$ 的中点、$A D = 2$，把底面看成平面图形算得

  $ O D = 1, quad C D = 2, quad angle O D C = 90degree, $

  所以

  $ O C^2 = O D^2 + C D^2 = 1 + 4 = 5. $

  3. 于是在 $triangle Q O C$ 中：

  $ Q O^2 + O C^2 = 4 + 5 = 9 = Q C^2, $

  由勾股定理的逆定理得

  $ Q O perp O C. $

  4. $A D$ 与 $O C$ 是底面内的两条相交直线（交于点 $O$），由 ① 与 ③ 得

  $ Q O perp "平面" A B C D. $

  5. 因为 $Q O subset$ 平面 $Q A D$，即平面 $Q A D$ 经过平面 $A B C D$ 的一条垂线 $Q O$，由面面垂直的判定定理得

  $ "平面" Q A D perp "平面" A B C D. quad square $

  === 要点

  - *"等腰三角形取底边中点"是造垂线第一步*：$Q A = Q D$ 提示取 $A D$ 中点 $O$，立刻得到 $Q O perp A D$ 并算出 $Q O = 2$。
  - *把空间问题压回平面算长度*：$O C$ 在底面内，用 $O D = 1$、$C D = 2$ 与直角关系求出 $O C = sqrt(5)$，这是平面几何的基本功。
  - *勾股逆定理定"垂直"*：$Q O^2 + O C^2 = Q C^2$ 说明 $angle Q O C = 90degree$，从而 $Q O perp O C$——$Q C = 3$ 这个条件就是为此服务的。
  - *"两条相交直线"要写明*：$A D$ 与 $O C$ 在 $O$ 处相交，都在底面内，所以 $Q O perp$ 底面。
  - *与前面两题对照*：三题都是"先线面垂直、再面面垂直"，区别在于线面垂直的来源——例 1（正三角形+直棱柱）、练 1（直径所对圆周角+母线）、练 2（等腰三角形+勾股逆定理）。
]
