#import "template.typ": *

#set document(title: [平行中位线])

#template(heading2-align: left, page-footer: "第 1 页")[
  #set math.equation(numbering: "(1)")

  == 一、立体几何中的六条基本判定

  *底层逻辑*：立体几何的证明说到底只有两个"主方向"——*平行*与*垂直*，而每一种关系都可以在"线线、线面、面面"三个层次之间来回转化。下面六条是转化的基本通道（符号约定：$alpha$、$beta$ 表示平面，$a$、$b$、$c$、$d$、$l$ 表示直线）。

  === ① 线面平行的判定

  若 $a text(∥) b$、$b subset alpha$ 且 $a subset.not alpha$，则

  $ a text(∥) alpha. $

  *用法*：在平面内"找"一条与已知直线平行的直线——最常见的手段就是*中位线*或*平行四边形*。

  === ② 面面平行的判定

  若 $a, b subset alpha$，$a$ 与 $b$ *相交*，且 $a text(∥) c$、$b text(∥) d$（$c, d subset beta$），则

  $ alpha text(∥) beta. $

  *用法*：把"面面平行"拆成两组"线面平行"（本题中的 $a, b$ 必须是*两条相交直线*，缺一不可）。

  === ③ 线面垂直的判定

  若 $a perp b$、$a perp c$，$b, c subset alpha$ 且 $b$ 与 $c$ *相交*，则

  $ a perp alpha. $

  *用法*：在平面内找*两条相交直线*都与 $a$ 垂直；证"线线垂直"的常用手段是勾股定理、等腰三角形"三线合一"等。

  === ④ 面面垂直的判定

  若 $a perp alpha$ 且 $a subset beta$，则

  $ alpha perp beta. $

  *用法*：要证两个平面垂直，只需在其中一个平面里找一条*垂直于另一个平面*的直线。

  === ⑤ 线线垂直（含异面直线）

  若 $a perp alpha$ 且 $b subset alpha$，则

  $ a perp b. $

  *用法*：这是证明*异面直线垂直*最常用的手段——先证"线面垂直"，再由"线面垂直"推"线线垂直"。

  === ⑥ 面面垂直的性质（用法）

  若 $alpha perp beta$、$alpha inter beta = l$、$a subset alpha$ 且 $a perp l$，则

  $ a perp beta. $

  *用法*："在两个垂直的平面中，垂直于交线的直线必垂直于另一个平面"——这是把"面面垂直"转化为"线面垂直"的最主要通道。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 二、转化的两条主线

  *平行线*：由"线线平行"出发，可以一层层"升维"：

  $ "线线平行" -> "线面平行" -> "面面平行" $

  - 线线平行怎么来：*中位线*（三角形两边中点连线平行于第三边）、平行四边形对边、棱柱侧棱互相平行、平行线分线段成比例等；
  - 线面平行怎么用：过这条直线作一个平面与已知平面相交，交线与它平行（性质定理）；
  - 面面平行怎么用：一个平面与两个平行平面相交，两条交线平行。

  *垂直线*：垂直的转化是"线线 $<==>$ 线面 $<==>$ 面面"：

  $ "线线垂直" -> "线面垂直" -> "面面垂直", quad "面面垂直" -> "线面垂直" -> "线线垂直" $

  - 证"线线垂直"：用勾股定理逆定理、等腰三角形"三线合一"、矩形/正方形的邻边等；
  - 证"线面垂直"：需要平面内*两条相交直线*都与它垂直（③）；
  - 证"面面垂直"：只需在其中一个平面内找到另一平面的垂线（④）；
  - 用"面面垂直"：作交线的垂线（⑥）——这是立体几何解答题中出现频率最高的一步。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 三、要点提示

  - *"相交"二字不能丢*：③ 中 $b$、$c$ 必须相交，② 中 $a$、$b$ 必须相交；"平面内两条平行直线都平行（或垂直）于同一条直线"是推不出结论的。
  - *"$a subset.not alpha$"也要写明*：① 中若 $a$ 就在平面 $alpha$ 内，则只能说 $a$ 与 $b$ 平行，不能写 $a text(∥) alpha$。
  - *中位线是"造平行"的第一工具*：看到"中点"，先想"连中点得中位线"（本册后续的题目大多由此起步）。
  - *垂直优先找"线面垂直"*：异面直线垂直几乎都要绕道"线面垂直"（⑤）。
  - *写证明要"三句话"*：条件（谁包含谁、谁与谁垂直/平行）+ 依据（哪条判定）+ 结论，缺一不可。
  #line(length: 100%, stroke: 0.5pt + gray)

  == 四、典型例题：线面平行（中位线法）

  === 【例 1】四棱锥中证线面平行

  *【例 1】* 如图，四棱锥 $P - A B C D$ 中，底面 $A B C D$ 是边长为 $2$ 的菱形，$angle D A B = 60degree$，$A C inter B D = O$，点 $P$ 在底面的射影为点 $O$，$P O = 3$，点 $E$ 为线段 $P D$ 的中点。求证：$P B text(∥) "平面" A E C$。

    #align(center)[
    #block(breakable: false, width: 200pt, height: 212pt)[
      // 棱：P 到底面四个顶点
      #place(dx: 85pt, dy: 25pt, line(end: (-25pt, 95pt), stroke: 0.8pt))
      #place(dx: 85pt, dy: 25pt, line(end: (-75pt, 145pt), stroke: 0.8pt))
      #place(dx: 85pt, dy: 25pt, line(end: (25pt, 165pt), stroke: 0.8pt))
      #place(dx: 85pt, dy: 25pt, line(end: (75pt, 115pt), stroke: 0.8pt))
      // 底面四条边
      #place(dx: 60pt, dy: 120pt, line(end: (-50pt, 50pt), stroke: 0.8pt))
      #place(dx: 10pt, dy: 170pt, line(end: (100pt, 20pt), stroke: 0.8pt))
      #place(dx: 110pt, dy: 190pt, line(end: (50pt, -50pt), stroke: 0.8pt))
      #place(dx: 160pt, dy: 140pt, line(end: (-100pt, -20pt), stroke: 0.8pt))
      // 对角线（虚线）
      #place(dx: 60pt, dy: 120pt, line(end: (50pt, 70pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))
      #place(dx: 10pt, dy: 170pt, line(end: (150pt, -30pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))
      // 关键辅助线 OE（中位线）
      #place(dx: 85pt, dy: 155pt, line(end: (37.5pt, -72.5pt), stroke: (paint: rgb("#c7362e"), thickness: 1.2pt)))
      // 点
      #place(dx: 83pt, dy: 23pt, circle(radius: 2pt, fill: black))
      #place(dx: 58pt, dy: 118pt, circle(radius: 2pt, fill: black))
      #place(dx: 8pt, dy: 168pt, circle(radius: 2pt, fill: black))
      #place(dx: 108pt, dy: 188pt, circle(radius: 2pt, fill: black))
      #place(dx: 158pt, dy: 138pt, circle(radius: 2pt, fill: black))
      #place(dx: 83pt, dy: 153pt, circle(radius: 2pt, fill: black))
      #place(dx: 120.5pt, dy: 80.5pt, circle(radius: 2.2pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 90pt, dy: 12pt)[$P$]
      #place(dx: 40pt, dy: 116pt)[$A$]
      #place(dx: 2pt, dy: 172pt)[$B$]
      #place(dx: 112pt, dy: 194pt)[$C$]
      #place(dx: 166pt, dy: 134pt)[$D$]
      #place(dx: 88pt, dy: 158pt)[$O$]
      #place(dx: 126pt, dy: 70pt)[#text(fill: rgb("#c7362e"))[$E$]]
    ]
  ]

  图中 $P O perp "平面" A B C D$（$O$ 是 $P$ 在底面的射影），$E$ 为 $P D$ 的中点；红色线段 $O E$ 是解题的关键辅助线。


  === 解析

  *思路*：要证 $P B text(∥) "平面" A E C$，按①的判定，只需在平面 $A E C$ 内*找一条与 $P B$ 平行的直线*。题中出现了两个"中点"，正合用中位线。

  *证明*：

  1. 因为 $A B C D$ 是菱形，它的对角线互相平分，所以 $O$ 是 $B D$ 的中点；
  2. 又已知 $E$ 是 $P D$ 的中点，于是在三角形 $P B D$ 中，$O$、$E$ 分别是 $B D$、$P D$ 的中点，由*中位线定理*得

  $ O E text(∥) P B; $

  3. 因为 $O in A C$、$E in "平面" A E C$，所以 $O E subset "平面" A E C$；
  4. 又 $P B subset.not "平面" A E C$（$P B$ 在平面外），

  由线面平行的判定定理得

  $ P B text(∥) "平面" A E C. quad square $

  *说明*：题中的"边长为 $2$""$angle D A B = 60degree$""$P O = 3$"以及"$P$ 在底面的射影为 $O$"这些条件，在*本问*的证明里都没用上——它们是题目的完整背景（通常供后续小问求体积、求角使用）。证明线面平行时*不必*去算长度和角度，只要把"平行关系"找出来即可。

  === 要点

  - *看到"中点"就想"中位线"*：本题的关键一步是把 $O$（菱形对角线交点即 BD 中点）与 $E$（PD 中点）连起来，在三角形 $P B D$ 中形成中位线。
  - *中位线的三种来源*：三角形两边中点连线、梯形中位线、"等位线"（如平行四边形的对边、棱柱侧棱）。
  - *证线面平行必须写全三件事*：线线平行（$O E text(∥) P B$）+ 直线在平面内（$O E subset "平面" A E C$）+ 直线在平面外（$P B subset.not "平面" A E C$）。
  - *选择"在哪个三角形里作中位线"*：目标直线是 $P B$，就要找含 $P B$ 的三角形（这里 $triangle P B D$），再看它的另外两边能否找到中点。
  - *多余条件不必用*：几何证明中，有些已知条件是为后续问题服务的；只要逻辑链完整，用到哪些条件都可以。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 五、练习：直三棱柱中的线面平行

  === 【练 1】证 $A B_1 text(∥) "平面" C_1 B D$

  *【练 1】* 如图，在直三棱柱 $A B C - A_1 B_1 C_1$ 中，$A B perp B C$，$D$ 是 $A C$ 的中点，$A A_1 = A B = 2$。求证：$A B_1 text(∥) "平面" C_1 B D$。

  #align(center)[
    #block(breakable: false, width: 210pt, height: 250pt)[
      // 底面 ABC
      #place(dx: 35pt, dy: 165pt, line(end: (110pt, 25pt), stroke: 0.8pt))    // A→B
      #place(dx: 145pt, dy: 190pt, line(end: (-50pt, 35pt), stroke: 0.8pt))   // B→C
      #place(dx: 95pt, dy: 225pt, line(end: (-60pt, -60pt), stroke: 0.8pt))   // C→A
      // 顶面 A1B1C1
      #place(dx: 35pt, dy: 55pt, line(end: (110pt, 25pt), stroke: 0.8pt))
      #place(dx: 145pt, dy: 80pt, line(end: (-50pt, 35pt), stroke: 0.8pt))
      #place(dx: 95pt, dy: 115pt, line(end: (-60pt, -60pt), stroke: 0.8pt))
      // 侧棱
      #place(dx: 35pt, dy: 165pt, line(end: (0pt, -110pt), stroke: 0.8pt))    // AA1
      #place(dx: 145pt, dy: 190pt, line(end: (0pt, -110pt), stroke: 0.8pt))   // BB1
      #place(dx: 95pt, dy: 225pt, line(end: (0pt, -110pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // CC1（被挡住）
      // 面 BCC1B1 的两条对角线（交于 M）
      #place(dx: 145pt, dy: 80pt, line(end: (-50pt, 145pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // B1→C
      #place(dx: 145pt, dy: 190pt, line(end: (-50pt, -75pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // B→C1
      // 关键辅助线 DM（中位线）
      #place(dx: 65pt, dy: 195pt, line(end: (55pt, -42.5pt), stroke: (paint: rgb("#c7362e"), thickness: 1.2pt)))
      // 目标直线 AB1
      #place(dx: 35pt, dy: 165pt, line(end: (110pt, -85pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))
      // 点
      #place(dx: 33pt, dy: 163pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 143pt, dy: 188pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 93pt, dy: 223pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 33pt, dy: 53pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 143pt, dy: 78pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 93pt, dy: 113pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 63pt, dy: 193pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      #place(dx: 118pt, dy: 150.5pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 16pt, dy: 168pt)[$A$]
      #place(dx: 148pt, dy: 194pt)[$B$]
      #place(dx: 98pt, dy: 230pt)[$C$]
      #place(dx: 10pt, dy: 42pt)[$A_1$]
      #place(dx: 148pt, dy: 68pt)[$B_1$]
      #place(dx: 98pt, dy: 104pt)[$C_1$]
      #place(dx: 44pt, dy: 196pt)[#text(fill: rgb("#c7362e"))[$D$]]
      #place(dx: 122pt, dy: 140pt)[#text(fill: rgb("#c7362e"))[$M$]]
    ]
  ]

  图中蓝线是目标直线 $A B_1$，红点是 $A C$ 的中点 $D$ 与对角线交点 $M$，红线 $D M$ 是找出来的中位线（灰虚线为面 $B C C_1 B_1$ 的两条对角线，$C C_1$ 被挡住故画虚线）。

  === 解析

  *思路*：目标直线 $A B_1$ 与平面 $C_1 B D$ 中的 $D$ 有关，而 $D$ 是中点——自然想到"再找一个中点"凑中位线。

  *证明*：

  1. 因为 $B C C_1 B_1$ 是平行四边形，它的两条对角线 $B_1 C$ 与 $B C_1$ 互相平分，设交点为 $M$，则 $M$ 是 $B_1 C$ 的中点；
  2. 又 $D$ 是 $A C$ 的中点，于是在 $triangle A B_1 C$ 中，$D$、$M$ 分别是 $A C$、$B_1 C$ 的中点，由中位线定理

  $ D M text(∥) A B_1; $

  3. 因为 $M in B C_1$、$D in "平面" C_1 B D$，所以 $D M subset "平面" C_1 B D$；
  4. 又 $A B_1 subset.not "平面" C_1 B D$，

  由线面平行的判定定理得

  $ A B_1 text(∥) "平面" C_1 B D. quad square $

  *说明*：条件"$A B perp B C$""$A A_1 = A B = 2$"在本问中同样*没有用到*——它们是为后续求角、求距离准备的背景条件。

  === 要点

  - *在"侧面"里找中点*：直三棱柱中，侧面 $B C C_1 B_1$ 是矩形（平行四边形），其对角线交点就是上、下两条边的中点——这是"再找一个中点"的常用来源。
  - *中位线要在同一个三角形里*：本题把 $D$、$M$ 放在 $triangle A B_1 C$ 中，才有 $D M text(∥) A B_1$；写证明时要交代清楚"$D$、$M$ 分别是哪两边的中点"。
  - *照旧写全三件事*：线线平行 + 直线在平面内 + 直线在平面外。
  - *棱柱中"等位线"很多*：侧棱互相平行且相等、上下底面对应边平行，随时可以用来"搬运"平行关系。
  - *条件用不完是正常的*：立体几何大题常分几问，前一问往往只用部分条件，不必强行凑。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 六、典型例题：线面平行（构建平行四边形）

  === 【例 2】立方体中证 $E F text(∥) "平面" A C D_1$

  *【例 2】* 在立方体 $A B C D - A_1 B_1 C_1 D_1$ 中，$E$ 是 $C C_1$ 的中点，$F$ 是 $A B$ 的中点。求证：$E F text(∥) "平面" A C D_1$。

  #align(center)[
    #block(breakable: false, width: 230pt, height: 250pt)[
      // 前面 ABB1A1
      #place(dx: 30pt, dy: 210pt, line(end: (100pt, 0pt), stroke: 0.8pt))      // A→B
      #place(dx: 130pt, dy: 210pt, line(end: (0pt, -100pt), stroke: 0.8pt))    // B→B1
      #place(dx: 130pt, dy: 110pt, line(end: (-100pt, 0pt), stroke: 0.8pt))    // B1→A1
      #place(dx: 30pt, dy: 110pt, line(end: (0pt, 100pt), stroke: 0.8pt))      // A1→A
      // 后面 DCC1D1
      #place(dx: 85pt, dy: 65pt, line(end: (100pt, 0pt), stroke: 0.8pt))       // D1→C1
      #place(dx: 185pt, dy: 65pt, line(end: (0pt, 100pt), stroke: 0.8pt))      // C1→C
      #place(dx: 85pt, dy: 165pt, line(end: (0pt, -100pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // D→D1
      #place(dx: 85pt, dy: 165pt, line(end: (100pt, 0pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // D→C
      // 连接前后面的棱
      #place(dx: 30pt, dy: 210pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // A→D
      #place(dx: 130pt, dy: 210pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // B→C
      #place(dx: 30pt, dy: 110pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // A1→D1
      #place(dx: 130pt, dy: 110pt, line(end: (55pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // B1→C1
      // 平面 ACD1 的三条边（灰虚线）
      #place(dx: 30pt, dy: 210pt, line(end: (155pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // A→C
      #place(dx: 185pt, dy: 165pt, line(end: (-100pt, -100pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // C→D1
      #place(dx: 85pt, dy: 65pt, line(end: (-55pt, 145pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // D1→A
      // 辅助线：AM（在平面内）与目标线 EF
      #place(dx: 30pt, dy: 210pt, line(end: (105pt, -95pt), stroke: (paint: rgb("#c7362e"), thickness: 1.2pt)))   // A→M
      #place(dx: 80pt, dy: 210pt, line(end: (105pt, -95pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))   // F→E
      // 点
      #place(dx: 28pt, dy: 208pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 208pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 183pt, dy: 163pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 83pt, dy: 163pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 28pt, dy: 108pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 108pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 183pt, dy: 63pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 83pt, dy: 63pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 78pt, dy: 208pt, circle(radius: 1.8pt, fill: rgb("#1f6feb")))
      #place(dx: 183pt, dy: 113pt, circle(radius: 1.8pt, fill: rgb("#1f6feb")))
      #place(dx: 133pt, dy: 113pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 12pt, dy: 214pt)[$A$]
      #place(dx: 134pt, dy: 214pt)[$B$]
      #place(dx: 190pt, dy: 168pt)[$C$]
      #place(dx: 72pt, dy: 168pt)[$D$]
      #place(dx: 8pt, dy: 98pt)[$A_1$]
      #place(dx: 134pt, dy: 98pt)[$B_1$]
      #place(dx: 190pt, dy: 54pt)[$C_1$]
      #place(dx: 70pt, dy: 52pt)[$D_1$]
      #place(dx: 74pt, dy: 216pt)[#text(fill: rgb("#1f6feb"))[$F$]]
      #place(dx: 190pt, dy: 112pt)[#text(fill: rgb("#1f6feb"))[$E$]]
      #place(dx: 136pt, dy: 116pt)[#text(fill: rgb("#c7362e"))[$M$]]
    ]
  ]

  图中蓝线 $F E$ 是目标直线，红点 $M$ 是 $C D_1$ 的中点，红线 $A M$ 在平面 $A C D_1$ 内（灰虚线为平面 $A C D_1$ 的三条边与立方体被挡住的棱）。

  === 解析

  *思路*：$E$、$F$ 都是中点，但它们在*不同的面*上，直接连线看不出平行关系。办法是*再取一个中点*，构造平行四边形把 $E F$ "搬"到平面内。

  *证明*：

  1. 取 $C D_1$ 的中点 $M$。在 $triangle C C_1 D_1$ 中，$E$、$M$ 分别是 $C C_1$、$C D_1$ 的中点，由中位线定理

  $ E M text(∥) C_1 D_1, quad E M = 1/2 C_1 D_1; $

  2. 在立方体中 $A B text(∥) C_1 D_1$ 且 $A B = C_1 D_1$，而 $F$ 是 $A B$ 的中点，所以

  $ A F text(∥) E M quad "且" quad A F = E M; $

  3. 于是四边形 $A F E M$ 是*平行四边形*，故

  $ E F text(∥) A M; $

  4. 因为 $A in "平面" A C D_1$、$M in C D_1 subset "平面" A C D_1$，所以 $A M subset "平面" A C D_1$；
  5. 又 $E F subset.not "平面" A C D_1$，

  由线面平行的判定定理得

  $ E F text(∥) "平面" A C D_1. quad square $

  === 要点

  - *两个中点不在同一个面怎么办*：再取一个中点（本题取 $C D_1$ 的中点 $M$），把"疑似平行"的线段搬进目标平面所在的三角形里。
  - *"构建平行四边形"的套路*：先证一组对边*平行且相等*（本题 $A F text(∥) E M$ 且相等），即得平行四边形，从而对边平行；这是立体几何中"造平行"的常用手段。
  - *立方体里的免费条件*：$A B text(∥) C_1 D_1$、$A B = C_1 D_1$ 这类"上下底面对应边平行且相等"的关系随时可用，不必再证。
  - *中位线不只是三角形里的*：在 $triangle C C_1 D_1$ 中用一次中位线，就同时得到"平行"和"等于一半"两个结论，后者正是"相等"的来源。
  - *最后仍是三件事*：线线平行（$E F text(∥) A M$）+ $A M$ 在平面内 + $E F$ 在平面外。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 七、练习：菱形底面的直四棱柱

  === 【练 2】证 $M N text(∥) "平面" C_1 D E$

  *【练 2】* 如图，直四棱柱 $A B C D - A_1 B_1 C_1 D_1$ 的底面是菱形，$A A_1 = 4$，$A B = 2$，$angle B A D = 60degree$，$E$、$M$、$N$ 分别是 $B C$、$B B_1$、$A_1 D$ 的中点。证明：$M N text(∥) "平面" C_1 D E$。

  #align(center)[
    #block(breakable: false, width: 210pt, height: 245pt)[
      // 底面菱形 ABCD（斜投影为平行四边形）
      #place(dx: 40pt, dy: 215pt, line(end: (100pt, 0pt), stroke: 0.8pt))      // A→B
      #place(dx: 140pt, dy: 215pt, line(end: (35pt, -45pt), stroke: 0.8pt))   // B→C
      #place(dx: 40pt, dy: 215pt, line(end: (35pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // A→D
      #place(dx: 75pt, dy: 170pt, line(end: (100pt, 0pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // D→C
      // 顶面
      #place(dx: 40pt, dy: 95pt, line(end: (100pt, 0pt), stroke: 0.8pt))      // A1→B1
      #place(dx: 140pt, dy: 95pt, line(end: (35pt, -45pt), stroke: 0.8pt))    // B1→C1
      #place(dx: 40pt, dy: 95pt, line(end: (35pt, -45pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // A1→D1
      #place(dx: 75pt, dy: 50pt, line(end: (100pt, 0pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))    // D1→C1
      // 侧棱
      #place(dx: 40pt, dy: 215pt, line(end: (0pt, -120pt), stroke: 0.8pt))    // AA1
      #place(dx: 140pt, dy: 215pt, line(end: (0pt, -120pt), stroke: 0.8pt))   // BB1
      #place(dx: 175pt, dy: 170pt, line(end: (0pt, -120pt), stroke: 0.8pt))   // CC1
      #place(dx: 75pt, dy: 170pt, line(end: (0pt, -120pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // DD1
      // 平面 C1DE 的三条边（蓝）
      #place(dx: 175pt, dy: 50pt, line(end: (-100pt, 120pt), stroke: (paint: rgb("#1f6feb"), thickness: 1pt)))   // C1→D
      #place(dx: 75pt, dy: 170pt, line(end: (82.5pt, 22.5pt), stroke: (paint: rgb("#1f6feb"), thickness: 1pt)))  // D→E
      #place(dx: 157.5pt, dy: 192.5pt, line(end: (17.5pt, -142.5pt), stroke: (paint: rgb("#1f6feb"), thickness: 1pt)))  // E→C1
      // 目标直线 MN（红）
      #place(dx: 57.5pt, dy: 132.5pt, line(end: (82.5pt, 22.5pt), stroke: (paint: rgb("#c7362e"), thickness: 1.2pt)))  // N→M
      // 点
      #place(dx: 38pt, dy: 213pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 138pt, dy: 213pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 173pt, dy: 168pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 73pt, dy: 168pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 38pt, dy: 93pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 138pt, dy: 93pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 173pt, dy: 48pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 73pt, dy: 48pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 155.5pt, dy: 190.5pt, circle(radius: 1.8pt, fill: rgb("#1f6feb")))
      #place(dx: 138pt, dy: 153pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      #place(dx: 55.5pt, dy: 130.5pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 22pt, dy: 218pt)[$A$]
      #place(dx: 142pt, dy: 218pt)[$B$]
      #place(dx: 180pt, dy: 172pt)[$C$]
      #place(dx: 62pt, dy: 166pt)[$D$]
      #place(dx: 18pt, dy: 84pt)[$A_1$]
      #place(dx: 142pt, dy: 84pt)[$B_1$]
      #place(dx: 180pt, dy: 40pt)[$C_1$]
      #place(dx: 60pt, dy: 38pt)[$D_1$]
      #place(dx: 158pt, dy: 196pt)[#text(fill: rgb("#1f6feb"))[$E$]]
      #place(dx: 142pt, dy: 146pt)[#text(fill: rgb("#c7362e"))[$M$]]
      #place(dx: 40pt, dy: 126pt)[#text(fill: rgb("#c7362e"))[$N$]]
    ]
  ]

  图中蓝线围出平面 $C_1 D E$（三条边 $C_1 D$、$D E$、$E C_1$），红线 $M N$ 是目标直线（灰虚线为被挡住的棱）。

  === 解析

  *思路*：目标直线 $M N$ 的两个端点分别落在两个"对面"上，仍用"再取中点、连成平行四边形"的老办法：先把 $M N$ "搬"到与底面有关的位置，再与 $D E$ 挂上钩。

  *证明*：

  1. 取 $A D$ 的中点 $Q$，连 $N Q$。在 $triangle A_1 A D$ 中，$N$、$Q$ 分别是 $A_1 D$、$A D$ 的中点，由中位线定理

  $ N Q text(∥) A_1 A, quad N Q = 1/2 A_1 A = 2; $

  2. 又 $M$ 是 $B B_1$ 的中点，故

  $ M B text(∥) B B_1 text(∥) A_1 A, quad M B = 1/2 B B_1 = 2, $

  于是 $N Q text(∥) M B$ 且 $N Q = M B$，四边形 $N Q B M$ 是平行四边形，从而

  $ M N text(∥) Q B; $

  3. 再取 $E$ 所在的位置看：$Q$、$E$ 分别是 $A D$、$B C$ 的中点，而底面是菱形，$A D text(∥) B C$ 且 $A D = B C$，所以

  $ D Q text(∥) B E quad "且" quad D Q = B E, $

  即四边形 $D Q B E$ 也是平行四边形，于是

  $ Q B text(∥) D E; $

  4. 由 $M N text(∥) Q B$、$Q B text(∥) D E$ 得（公理 4：平行于同一直线的两条直线平行）

  $ M N text(∥) D E; $

  5. 因为 $D E subset "平面" C_1 D E$，且 $M N subset.not "平面" C_1 D E$，由线面平行的判定定理得

  $ M N text(∥) "平面" C_1 D E. quad square $

  === 要点

  - *两次用平行四边形的"传递"*：$N Q B M$ 与 $D Q B E$ 各给出一次平行，再用"平行于同一直线的两直线平行"把 $M N$ 与 $D E$ 连起来。
  - *中点要找得"对"*：取 $A D$ 的中点 $Q$ 是关键——它同时服务于两个平行四边形（一个竖着、一个躺在底面里）。
  - *菱形底面的用处*：只需要 $A D text(∥) B C$ 且相等；题目给的 $A A_1 = 4$、$A B = 2$、$angle B A D = 60degree$ 在本问中*都用不到*（供后续求角、求距离）。
  - *共面关系要交代清楚*：$D$、$E$、$C_1$ 确定平面 $C_1 D E$，$D E$ 是它的边，所以 $M N text(∥) D E$ 就能推出线面平行。
  - *两条路可相互印证*：用向量或坐标计算也能得到 $vec(M N) = -vec(D E)$，与这里的综合法结论一致。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 八、典型例题：三棱锥中的线面平行

  === 【例 3】证 $O E text(∥) "平面" P A C$

  *【例 3】* 如图，$P O$ 是三棱锥 $P - A B C$ 的高，$P A = P B$，$A B perp A C$，$E$ 是 $P B$ 的中点。(1) 证明：$O E text(∥) "平面" P A C$。

  #align(center)[
    #block(breakable: false, width: 230pt, height: 220pt)[
      // 底面 ABC
      #place(dx: 60pt, dy: 200pt, line(end: (110pt, 0pt), stroke: 0.8pt))       // A→B
      #place(dx: 170pt, dy: 200pt, line(end: (-145pt, -35pt), stroke: 0.8pt))  // B→C
      #place(dx: 25pt, dy: 165pt, line(end: (35pt, 35pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // C→A（被挡）
      // 侧棱
      #place(dx: 115pt, dy: 80pt, line(end: (-55pt, 120pt), stroke: 0.8pt))    // P→A
      #place(dx: 115pt, dy: 80pt, line(end: (55pt, 120pt), stroke: 0.8pt))     // P→B
      #place(dx: 115pt, dy: 80pt, line(end: (-90pt, 85pt), stroke: 0.8pt))     // P→C
      // 高 PO（虚线）
      #place(dx: 115pt, dy: 80pt, line(end: (0pt, 120pt), stroke: (paint: gray, thickness: 0.6pt, dash: "dashed")))
      // 关键辅助线 OE（红）与目标线 PA（蓝）
      #place(dx: 115pt, dy: 200pt, line(end: (27.5pt, -60pt), stroke: (paint: rgb("#c7362e"), thickness: 1.2pt)))  // O→E
      #place(dx: 115pt, dy: 80pt, line(end: (-55pt, 120pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))   // P→A
      // 点
      #place(dx: 58pt, dy: 198pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 168pt, dy: 198pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 23pt, dy: 163pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 113pt, dy: 78pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 113pt, dy: 198pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 140.5pt, dy: 138pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 42pt, dy: 204pt)[$A$]
      #place(dx: 174pt, dy: 204pt)[$B$]
      #place(dx: 8pt, dy: 158pt)[$C$]
      #place(dx: 118pt, dy: 68pt)[$P$]
      #place(dx: 108pt, dy: 205pt)[$O$]
      #place(dx: 146pt, dy: 133pt)[#text(fill: rgb("#c7362e"))[$E$]]
    ]
  ]

  图中 $P O perp "平面" A B C$（虚线为高），$E$ 是 $P B$ 的中点；蓝线 $P A$ 是平面 $P A C$ 内的目标参照线，红线 $O E$ 是找出的中位线。

  === 解析

  *① 先确定 $O$ 的位置。* 因为 $P O perp "平面" A B C$，所以 $P O perp O A$、$P O perp O B$，即 $triangle P O A$ 与 $triangle P O B$ 都是直角三角形；又 $P A = P B$、$P O$ 公共，故这两个直角三角形全等，于是

  $ O A = O B. $

  结合图形可知 $A$、$O$、$B$ 共线（$O$ 在高 $P O$ 与 $A B$ 的交点处），所以

  $ O "是" A B "的中点". $

  *② 用中位线。* 在 $triangle P A B$ 中，已知 $E$ 是 $P B$ 的中点，而 $O$ 是 $A B$ 的中点，由中位线定理

  $ O E text(∥) P A. $

  *③ 落到平面 $P A C$ 上。* 因为 $P A subset "平面" P A C$，且 $O E subset.not "平面" P A C$，由线面平行的判定定理得

  $ O E text(∥) "平面" P A C. quad square $

  === 要点

  - *"高"的用法*：$P O perp$ 底面 $->$ $P O perp O A$、$P O perp O B$，再配合 $P A = P B$ 与公共边 $P O$，用勾股/全等得到 $O A = O B$——这是本题"先定 $O$"的关键一步。
  - *判断中点要看图形*：由 $O A = O B$ 只能说明 $O$ 在 $A B$ 的垂直平分线上；题图中 $O$ 恰在 $A B$ 上，因此它是 $A B$ 的中点（考试中这类位置关系以图形为准）。
  - *$A B perp A C$ 在本问没用上*：它通常是后续小问（求二面角、求距离）的条件。
  - *中位线仍是主力*：一旦确定 $O$ 是 $A B$ 的中点，$O E text(∥) P A$ 就是 $triangle P A B$ 的中位线，问题立刻变为"三件事"。
  - *注意平面名称*：$P A subset "平面" P A C$（而不是 $P A C$ 中其他直线），所以要证的"参照线"是 $P A$，不要写成 $P C$。

]
