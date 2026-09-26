#import "template.typ": *

#set document(title: [Dandelin 双球])

#template(heading2-align: left, page-footer: "第 1 页")[

  == 一、基本知识

  *圆锥面*：一条直线绕与它相交的定直线旋转一周，所得的曲面叫做*圆锥面*（定直线叫轴，旋转直线叫母线，两直线的交点叫顶点 $S$）。圆锥面由*上、下两个"半锥"*组成。

  用一个平面去截圆锥面，截口曲线的形状由*截平面与圆锥面的相对位置*决定：

  #table(
    columns: (auto, 1fr),
    stroke: 0.5pt,
    align: (left, left),
    inset: (x: 8pt, y: 6pt),
    [*截平面的位置*], [*截口曲线*],
    [垂直于轴], [圆],
    [与轴的夹角*大于*半顶角（只与一个半锥的母线都相交）], [椭圆],
    [*平行于*一条母线], [抛物线],
    [与轴的夹角*小于*半顶角（与上、下两个半锥都相交）], [双曲线],
  )

  *Dandelin 双球*（丹德林双球）：在圆锥面内放入*两个球*，使它们分别与圆锥面相切（切出一个*圆*），并且都与截平面相切，把切点记作 $F_1$、$F_2$。这两个球叫 Dandelin 双球。

  由*切线长相等*这一简单事实，就能证明截口曲线是椭圆（或抛物线、双曲线），并同时找出它的*焦点*——这就是 Dandelin 双球的用处。

  == 二、椭圆的证明

  *已知*：平面 $alpha$ 与圆锥面相交，截口曲线为 $c$。在圆锥面内作两个球 $O_1$、$O_2$，它们分别与圆锥面相切于圆 $k_1$、$k_2$，且都与平面 $alpha$ 相切，切点分别为 $F_1$、$F_2$。

  *求证*：$c$ 上任意一点 $P$ 满足 $P F_1 + P F_2$ 为定值；从而 $c$ 是以 $F_1$、$F_2$ 为焦点的椭圆。

  #align(center)[
    #block(breakable: false, width: 240pt, height: 356pt)[
      // 圆锥面的轴截面：两条母线
      #place(dx: 130pt, dy: 45pt, line(end: (-85pt, 205pt), stroke: 0.8pt))       // S→左下母线
      #place(dx: 130pt, dy: 45pt, line(end: (85pt, 205pt), stroke: 0.8pt))        // S→右下母线
      // 两个内切球（在轴截面中为圆）
      #place(dx: 107pt, dy: 82pt, circle(radius: 23pt, stroke: 0.8pt))            // 球 O1
      #place(dx: 74.5pt, dy: 134.5pt, circle(radius: 55.5pt, stroke: 0.8pt))      // 球 O2
      // 截平面（在轴截面中为一条直线，与两球相切）
      #place(dx: 65pt, dy: 158.3pt, line(end: (120pt, -52.1pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))
      // 母线 S—A1—P—A2 上的辅助线段（红）：PA1 与 PA2 分别等于 PF1 与 PF2
      #place(dx: 108.7pt, dy: 96.2pt, line(end: (-21.7pt, 52.5pt), stroke: (paint: rgb("#c7362e"), thickness: 1.1pt)))  // A1→P
      #place(dx: 87pt, dy: 148.7pt, line(end: (-8.3pt, 20pt), stroke: (
        paint: rgb("#c7362e"),
        thickness: 1.1pt,
      )))        // P→A2
      #place(dx: 139.1pt, dy: 126.1pt, line(end: (-52.1pt, 22.6pt), stroke: (
        paint: rgb("#c7362e"),
        thickness: 0.9pt,
        dash: "dashed",
      ))) // F1→P
      #place(dx: 108.2pt, dy: 139.5pt, line(end: (-21.2pt, 9.2pt), stroke: (
        paint: rgb("#c7362e"),
        thickness: 0.9pt,
        dash: "dashed",
      )))  // F2→P
      // 点
      #place(dx: 128pt, dy: 43pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 137.1pt, dy: 124.1pt, circle(radius: 1.8pt, fill: rgb("#1f6feb")))
      #place(dx: 106.2pt, dy: 137.5pt, circle(radius: 1.8pt, fill: rgb("#1f6feb")))
      #place(dx: 85pt, dy: 146.7pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      #place(dx: 106.7pt, dy: 94.2pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      #place(dx: 76.7pt, dy: 166.7pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 134pt, dy: 32pt)[$S$]
      #place(dx: 143pt, dy: 116pt)[$F_1$]
      #place(dx: 92pt, dy: 141pt)[$F_2$]
      #place(dx: 70pt, dy: 150pt)[$P$]
      #place(dx: 110pt, dy: 86pt)[$A_1$]
      #place(dx: 56pt, dy: 170pt)[$A_2$]
      #v(276pt)
      #text(size: 10pt)[
        图为圆锥面的*轴截面*示意：两条斜线是过顶点 $S$ 的母线，两个圆是 Dandelin 双球被该截面截出的*大圆*，蓝线是截平面的迹。
        在母线 $S A_1 P A_2$ 上：$P$ 在截平面上，$A_1$、$A_2$ 分别是母线与两球的切点，$F_1$、$F_2$ 是两球与截平面的切点（即焦点）。
        红色实线段 $P A_1$、$P A_2$ 与红色虚线段 $P F_1$、$P F_2$ 分别相等（同一点到同一个球的两条切线段）。
      ]
    ]
  ]

  #v(14pt)

  *证明*：

  1. 设圆锥面的顶点为 $S$。连接 $S P$ 并延长，这条母线交圆 $k_1$、$k_2$ 于 $A_1$、$A_2$ 两点（$S$、$A_1$、$P$、$A_2$ 在同一条母线上，且 $A_1$ 在 $S$ 与 $P$ 之间）。

  2. *切线长相等*（过球外一点作球的两条切线段长度相等）：

  - $P F_1$ 是点 $P$ 到球 $O_1$ 的切线段（平面 $alpha$ 与球 $O_1$ 相切于 $F_1$），$P A_1$ 也是点 $P$ 到球 $O_1$ 的切线段（母线与球相切于 $A_1$），所以

  $ P F_1 = P A_1; $

  - 同理，对球 $O_2$：

  $ P F_2 = P A_2. $

  3. 两式相加：

  $ P F_1 + P F_2 = P A_1 + P A_2 = A_1 A_2. $

  4. 因为两个球的位置固定，圆 $k_1$、$k_2$ 也固定，所以同一条母线上两切点之间的距离 $A_1 A_2$ 是*定值*，与点 $P$ 在 $c$ 上的位置无关。

  于是 $P F_1 + P F_2 = A_1 A_2$（定值）。由椭圆的定义，截口曲线 $c$ 是以 $F_1$、$F_2$ 为焦点的椭圆，且它的长轴长等于 $A_1 A_2$。

  == 三、双曲线的证明

  *已知*：平面 $alpha$ 与圆锥面的*上、下两个半锥都相交*，截口曲线为 $c$。在上、下半锥内各作一个球 $O_1$、$O_2$，它们分别与圆锥面相切于圆 $k_1$、$k_2$，且都与 $alpha$ 相切，切点为 $F_1$、$F_2$。

  *求证*：$c$ 上任意一点 $P$ 满足 $|P F_1 - P F_2|$ 为定值，从而 $c$ 是以 $F_1$、$F_2$ 为焦点的双曲线。

  #align(center)[
    #block(breakable: false, width: 250pt, height: 300pt)[
      // 圆锥面轴截面：上下两个半锥（X 形），四个方向为母线
      #place(dx: 115pt, dy: 40pt, line(end: (-70pt, 90pt), stroke: 0.8pt))
      #place(dx: 115pt, dy: 40pt, line(end: (70pt, 90pt), stroke: 0.8pt))
      #place(dx: 115pt, dy: 220pt, line(end: (-70pt, -90pt), stroke: 0.8pt))
      #place(dx: 115pt, dy: 220pt, line(end: (70pt, -90pt), stroke: 0.8pt))
      // 两个等半径的球（各在一个半锥内）
      #place(dx: 88pt, dy: 58pt, circle(radius: 27pt, stroke: 0.8pt))
      #place(dx: 88pt, dy: 148pt, circle(radius: 27pt, stroke: 0.8pt))
      // 截平面（竖直，切两球于 F1、F2）
      #place(dx: 142pt, dy: 45pt, line(end: (0pt, 170pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))
      // 母线 S—A1—P—A2 上的辅助线段（红）
      #place(dx: 136.3pt, dy: 101.6pt, line(end: (5.7pt, -6.3pt), stroke: (paint: rgb("#c7362e"), thickness: 1.1pt)))
      #place(dx: 142pt, dy: 95.3pt, line(end: (-48.3pt, 63.1pt), stroke: (paint: rgb("#c7362e"), thickness: 1.1pt)))
      #place(dx: 142pt, dy: 95.3pt, line(end: (0pt, 79.7pt), stroke: (
        paint: rgb("#c7362e"),
        thickness: 0.9pt,
        dash: "dashed",
      )))
      // 点
      #place(dx: 113pt, dy: 38pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 140pt, dy: 83pt, circle(radius: 1.8pt, fill: rgb("#1f6feb")))
      #place(dx: 140pt, dy: 173pt, circle(radius: 1.8pt, fill: rgb("#1f6feb")))
      #place(dx: 140pt, dy: 93.3pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      #place(dx: 134.3pt, dy: 99.6pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      #place(dx: 91.7pt, dy: 156.4pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 119pt, dy: 27pt)[$S$]
      #place(dx: 146pt, dy: 76pt)[$F_1$]
      #place(dx: 146pt, dy: 166pt)[$F_2$]
      #place(dx: 146pt, dy: 88pt)[$P$]
      #place(dx: 138pt, dy: 94pt)[$A_1$]
      #place(dx: 74pt, dy: 152pt)[$A_2$]
      #v(238pt)
      #text(size: 10pt)[
        双曲线情形：轴截面中圆锥面呈 X 形。上下*两个半锥*内各放一个球（图中两个等半径的圆），蓝线是截平面的迹，它与两球相切于 $F_1$、$F_2$。
        顶点 $S$ 落在两切点 $A_1$、$A_2$ 之间，故 $P A_1 = P S - S A_1$、$P A_2 = P S + S A_2$，相减得 $|P F_1 - P F_2| = S A_1 + S A_2$（定值）。
      ]
    ]
  ]

  *证明*：

  1. 设顶点为 $S$，连 $S P$ 并延长（交于另一个半锥），这条母线与圆 $k_1$、$k_2$ 分别交于 $A_1$、$A_2$。注意此时顶点 $S$ 恰在 $A_1$ 与 $A_2$ 之间（这正是"两个半锥都被截到"的体现），所以 $P$、$A_1$、$S$、$A_2$ 在同一条直线上依次排列。

  2. 仍由*切线长相等*：

  $ P F_1 = P A_1, quad P F_2 = P A_2. $

  3. 两式相减，并利用 $S$ 位于 $A_1$、$A_2$ 之间（即 $P A_1 = P S - S A_1$、$P A_2 = P S + S A_2$）：

  $ |P F_1 - P F_2| = |P A_1 - P A_2| = S A_1 + S A_2. $

  4. 两个球固定 $=>$ 圆 $k_1$、$k_2$ 固定 $=>$ 同一条母线上两切点到顶点 $S$ 的距离 $S A_1$、$S A_2$ 都是定值，故 $|P F_1 - P F_2| = S A_1 + S A_2$ 为定值，与 $P$ 无关。由双曲线的定义，截口曲线 $c$ 是以 $F_1$、$F_2$ 为焦点的双曲线。（对另一支上的点，同理可得同样的定值。）

  == 四、抛物线的证明

  *已知*：平面 $alpha$ 与圆锥面相交，且 $alpha$ *平行于一条母线* $l_0$，截口曲线为 $c$。作一个球 $O$，它与圆锥面相切于圆 $k$（所在平面记为 $beta$），与 $alpha$ 相切于点 $F$。记

  $ l = alpha inter beta, $

  即截平面与"切圆所在平面"的交线。

  *求证*：$c$ 上任意一点 $P$ 满足 $P F$ 等于 $P$ 到直线 $l$ 的距离，从而 $c$ 是以 $F$ 为焦点、$l$ 为准线的抛物线。

  #align(center)[
    #block(breakable: false, width: 250pt, height: 320pt)[
      // 圆锥面轴截面：两条母线（左陡右缓）
      #place(dx: 70pt, dy: 40pt, line(end: (-40pt, 160pt), stroke: 0.8pt))
      #place(dx: 70pt, dy: 40pt, line(end: (160pt, 160pt), stroke: 0.8pt))
      // 内切球
      #place(dx: 46.4pt, dy: 89.2pt, circle(radius: 51.4pt, stroke: 0.8pt))
      // 截平面（平行于左侧母线），切球于 F
      #place(dx: 160pt, dy: 105pt, line(end: (-24pt, 97pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))
      // 母线 S—A—P（红虚线 A→P）
      #place(dx: 134.1pt, dy: 104.3pt, line(end: (20.7pt, 20.5pt), stroke: (
        paint: rgb("#c7362e"),
        thickness: 0.9pt,
        dash: "dashed",
      )))
      // 点
      #place(dx: 68pt, dy: 38pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 132.1pt, dy: 102.3pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      #place(dx: 152.8pt, dy: 122.8pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      #place(dx: 145.7pt, dy: 151.1pt, circle(radius: 1.8pt, fill: rgb("#1f6feb")))
      // 标签
      #place(dx: 74pt, dy: 27pt)[$S$]
      #place(dx: 126pt, dy: 96pt)[$A$]
      #place(dx: 156pt, dy: 118pt)[$P$]
      #place(dx: 152pt, dy: 148pt)[$F$]
      #v(258pt)
      #text(size: 10pt)[
        抛物线情形：轴截面中截平面（蓝线）与左侧母线*平行*，只放*一个*球，它与截平面相切于 $F$。
        连 $S P$ 交切圆于 $A$，由切线长相等得 $P F = P A$；再由 $alpha text(∥) l_0$ 可把 $P A$ 换算成 $P$ 到准线的距离，从而 $P F$ 等于该距离。
      ]
    ]
  ]

  *证明*：

  1. 连 $S P$ 交圆 $k$ 于 $A$。由切线长相等（$P F$ 是点 $P$ 到球 $O$ 的切线段，$P A$ 也是）：

  $ P F = P A. $

  2. 作 $P H perp l$ 于 $H$，则 $P H$ 就是 $P$ 到准线的距离。这一段的严格证明要用到 $alpha text(∥) l_0$：把 $P$、$A$、$H$ 与母线 $l_0$ 放入同一个平面内，用相似三角形（正弦比）把"沿母线的长度 $P A$"与"到 $l$ 的距离 $P H$"都表示为同一个量的 $sin theta$ 倍，从而由 ① 得到

  $ P F = P H. $

  （这一步是抛物线情形与椭圆、双曲线情形的*本质区别*：正是 $alpha text(∥) l_0$ 使得比值 $P H : P A$ 恒等于 $1$；比值不为 $1$ 时截口就分别是椭圆或双曲线。）

  3. 于是 $c$ 上任意一点 $P$ 到定点 $F$ 的距离等于到定直线 $l$ 的距离，故截口曲线是以 $F$ 为焦点的抛物线，$l$ 是它的准线。

  == 五、要点

  - *核心只有一条*：过球外一点作球的两条切线段*长度相等*——Dandelin 双球把"到两定点距离之和/之差"这种*平面内*的条件，转化成圆锥面上"母线被两切圆截出的长度"这种*与点无关*的量。
  - *焦点从哪来*：两球与截平面的*切点*就是焦点；这是"为什么圆锥曲线的焦点天生存在"的几何解释。
  - *判断截口形状看"夹角"*：截平面与轴垂直得圆；只与一个半锥的母线相交得椭圆；平行于一条母线得抛物线；与两个半锥都相交得双曲线。
  - *与坐标法的联系*：Dandelin 双球给出的是纯粹的几何证明，与坐标法（建系、写方程、算 $P F_1 + P F_2$）互为印证；求具体方程时用坐标法更方便，理解"焦点、准线的由来"用双球更直观。
  #line(length: 100%, stroke: 0.5pt + gray)

  == 六、两道真题（Dandelin 模型的应用）

  === 【题 1】（2024 丰台二模·10）求椭圆的离心率

  *【题 1】* "用一个不垂直于圆锥的轴的平面截圆锥，当圆锥的轴与截面所成的角不同时，可以得到不同的截口曲线。"利用这个原理，小明在家里用两个射灯（射出的光锥视为圆锥）在墙上投影出两个相同的椭圆，光锥的一条母线恰好与墙面垂直。图 2 是一个射灯投影的直观图，圆锥 $P O$ 的轴截面 $A P B$ 是等边三角形，椭圆 $O_1$ 所在平面为 $alpha$，$P B perp alpha$，则椭圆 $O_1$ 的离心率为（#h(0.6em)）

  #grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    gutter: 4pt,
    [(A) $sqrt(3)/2$], [(B) $sqrt(6)/3$], [(C) $sqrt(2)/2$], [(D) $sqrt(3)/3$],
  )

  #v(4pt)
  #align(center)[
    #block(breakable: false, width: 255pt, height: 384pt)[
      // 圆锥：顶点 P、底面椭圆（中心 O），AB 为底面直径
      #place(dx: 45pt, dy: 189pt, ellipse(width: 190pt, height: 52pt, stroke: 0.8pt))
      #place(dx: 130pt, dy: 50pt, line(end: (-85pt, 165pt), stroke: 0.8pt))      // P→A
      #place(dx: 130pt, dy: 50pt, line(end: (105pt, 165pt), stroke: 0.8pt))      // P→B
      #place(dx: 130pt, dy: 50pt, line(end: (0pt, 165pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // 轴 PO
      // 截平面 α 内的直径 AM（A 在底面圆周上，M 在母线 PB 上，AM ⊥ PB）
      #place(dx: 45pt, dy: 215pt, line(end: (135.2pt, -86.1pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))
      // 截口椭圆 O1：以 AM 为一条直径（长轴沿 AM 方向）
      #place(dx: 32.6pt, dy: 146pt, rotate(-32.5deg, ellipse(width: 160pt, height: 52pt, stroke: (paint: rgb("#1f6feb"), thickness: 0.9pt))))
      // 点
      #place(dx: 128pt, dy: 48pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 43pt, dy: 213pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 233pt, dy: 213pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 128pt, dy: 213pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 178.2pt, dy: 126.9pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      #place(dx: 110.6pt, dy: 170pt, circle(radius: 1.8pt, fill: rgb("#1f6feb")))
            #place(dx: 99.6pt, dy: 149.5pt, line(end: (26pt, 45pt), stroke: (paint: rgb("#1f6feb"), thickness: 0.9pt)))
      #place(dx: 123.6pt, dy: 192.5pt, circle(radius: 1.8pt, fill: rgb("#1f6feb")))
      #place(dx: 97.6pt, dy: 147.5pt, circle(radius: 1.8pt, fill: rgb("#1f6feb")))
      // 标签
      #place(dx: 134pt, dy: 38pt)[$P$]
      #place(dx: 28pt, dy: 208pt)[$A$]
      #place(dx: 238pt, dy: 208pt)[$B$]
      #place(dx: 132pt, dy: 218pt)[$O$]
      #place(dx: 184pt, dy: 122pt)[#text(fill: rgb("#c7362e"))[$M$]]
      #place(dx: 100pt, dy: 176pt)[$O_1$]
      #place(dx: 129pt, dy: 197pt)[$H$]
      #place(dx: 82pt, dy: 142pt)[$G$]
      #v(250pt)
      #text(size: 10pt)[
        题 1 示意（对应原图 2）：圆锥顶点 $P$，底面椭圆中心 $O$、$A B$ 为底面圆的*直径*；
        $M$ 在母线 $P B$ 上且 $A M perp P B$，$A$、$O_1$、$M$ 共线——$A M$ 是截平面 $alpha$ 截出的椭圆的*一条直径*，$G H$ 是同一平面内与之垂直的另一条直径（$G H$ 是同一平面内与 $A M$ 对应的另一条直径：立体图中它与 $O M$ 垂直，投影到纸面上只画成一条较陡的弦）。
        因为 $P B perp alpha$，$alpha$ 与轴 $P O$ 的夹角为 $90degree - 30degree = 60degree$。
      ]
    ]
  ]

  *公式怎么来的（补充推导）*：设圆锥的半顶角为 $beta$，截平面 $alpha$ 与*轴*的夹角为 $phi$，$alpha$ 截得椭圆，两 Dandelin 球与 $alpha$ 相切于 $F_1$、$F_2$、与圆锥面相切于圆 $k_1$、$k_2$。

  1. 由 Dandelin 双球（本文件第二节的证明）知

  $ 2a = A_1 A_2, $

  其中 $A_1 A_2$ 是同一条母线上被两切圆截出的长度（定值）。

  2. 再求 $2c = F_1 F_2$。取*过轴且垂直于 $alpha$* 的平面 $Pi$：在 $Pi$ 内，圆锥面截出一个等腰三角形（半顶角 $beta$），$alpha$ 的迹是一条与轴成 $phi$ 的直线 $t$，而两个球截出的是与 $t$ 分别*相切*的两个圆（半径 $r_1$、$r_2$，圆心在轴上）。把 $A_1 A_2$ 与 $F_1 F_2$ 都用 $beta$、$phi$ 表示后相除，即得

  $ (F_1 F_2)/(A_1 A_2) = (cos phi)/(cos beta). $

  3. 于是椭圆的离心率

  $ e = (2c)/(2a) = (F_1 F_2)/(A_1 A_2) = (cos phi)/(cos beta). $

  *两个特例可以验证这个公式*：

  - $phi = 90degree$（截平面垂直于轴，截口是*圆*）：$e = (cos 90degree)/(cos beta) = 0$；
  - $phi = beta$（截平面平行于一条母线，截口是*抛物线*）：$e = (cos beta)/(cos beta) = 1$。

  也就是说：$phi$ 从 $beta$ 增大到 $90degree$ 时，截口从抛物线经过椭圆连续变到圆，离心率由 $1$ 连续减到 $0$，与"用一个平面截圆锥可得不同的截口曲线"完全吻合。

  *解析*：设圆锥的半顶角（母线与轴的夹角）为 $beta$，截平面与*轴*的夹角为 $phi$，则截口椭圆的离心率满足

  $ e = (cos phi) / (cos beta). $

  （特殊情形可验证：$phi = 90degree$（截面垂直轴，得圆）时 $e = 0$；截面平行于一条母线（与轴夹角为 $beta$）时 $e = 1$，得抛物线。）

  本题中轴截面 $A P B$ 是等边三角形，故母线 $P B$ 与轴 $P O$ 的夹角 $beta = 30degree$；又 $P B perp alpha$，所以截平面 $alpha$ 与轴 $P O$ 的夹角为

  $ phi = 90degree - 30degree = 60degree. $

  于是

  $ e = (cos 60degree) / (cos 30degree) = (1/2)/(sqrt(3)/2) = sqrt(3)/3. $

  选 *(D)*。

  === 【题 2】求"表面最短路 + 焦半径"的最小值

  *【题 2】* 在圆锥内放入两个球 $O_1$、$O_2$，都与圆锥相切（与每条母线相切），切点圆分别为圆 $C_1$、圆 $C_2$；两球都与平面 $alpha$ 相切于 $F_1$、$F_2$，丹德林利用这个模型证明了 $alpha$ 与圆锥侧面的交线是椭圆、$F_1$、$F_2$ 是它的焦点。若母线与轴的夹角为 $30degree$，圆 $C_1$、圆 $C_2$ 的半径分别为 $1$、$4$，$M$ 为圆 $C_2$ 上的定点，$P$ 为椭圆上的动点，则从 $P$ 沿圆锥表面到达 $M$ 的路线长与线段 $P F_1$ 的长之和的最小值是（#h(0.6em)）

  #grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    gutter: 4pt,
    [(A) $6$], [(B) $8$], [(C) $3 sqrt(3)$], [(D) $4 sqrt(3)$],
  )

  #v(4pt)
  #align(center)[
    #block(breakable: false, width: 260pt, height: 300pt)[
      // 圆锥轴截面：半顶角 30°（母线方向 sin30°:cos30° = 0.5:0.866）
      #place(dx: 120pt, dy: 40pt, line(end: (-95pt, 165pt), stroke: 0.8pt))
      #place(dx: 120pt, dy: 40pt, line(end: (95pt, 165pt), stroke: 0.8pt))
      // 两个内切球：半径比 1:4，分别与两条母线相切
      #place(dx: 106pt, dy: 50.2pt, circle(radius: 14pt, stroke: 0.8pt))
      #place(dx: 64pt, dy: 81pt, circle(radius: 56pt, stroke: 0.8pt))
      // 截平面 α：与两球相切的直线（在两球之间）
      #place(dx: 88pt, dy: 87.7pt, line(end: (58pt, -16.5pt), stroke: (paint: rgb("#1f6feb"), thickness: 1.1pt)))
      // 焦点
      #place(dx: 122.8pt, dy: 76.7pt, circle(radius: 1.8pt, fill: rgb("#1f6feb")))
      #place(dx: 103.8pt, dy: 82.1pt, circle(radius: 1.8pt, fill: rgb("#1f6feb")))
      // 定点 M（圆 C2 与左母线的切点）与母线 P—M
      #place(dx: 62pt, dy: 135pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      #place(dx: 120pt, dy: 40pt, line(end: (-56pt, 97pt), stroke: (paint: rgb("#c7362e"), thickness: 0.9pt, dash: "dashed")))
      // 顶点
      #place(dx: 118pt, dy: 38pt, circle(radius: 1.8pt, fill: black))
      // 标签
      #place(dx: 124pt, dy: 27pt)[$P$]
      #place(dx: 126pt, dy: 58pt)[$C_1$]
      #place(dx: 132pt, dy: 122pt)[$C_2$]
      #place(dx: 128pt, dy: 72pt)[$F_1$]
      #place(dx: 92pt, dy: 80pt)[$F_2$]
      #place(dx: 46pt, dy: 138pt)[$M$]
      #place(dx: 148pt, dy: 76pt)[#text(fill: rgb("#1f6feb"))[$alpha$]]
      #v(210pt)
      #text(size: 10pt)[
        题 2 示意（对应原图）：圆锥半顶角 $30degree$，两球半径比 $1 : 4$、且都与两条母线*相切*（图中 $C_1$、$C_2$ 分别与两母线相切）；
        蓝线为截平面 $alpha$（与两球相切于 $F_1$、$F_2$）；红点为圆 $C_2$ 与左母线的切点 $M$，红色虚线为母线 $P M$。
      ]
    ]
  ]

  *解析*：

  *① 把 $P F_1$ 换成沿母线的长度。* 由 Dandelin 模型的切线长相等：设 $P$ 所在母线与圆 $C_1$ 交于 $A_1$，则

  $ P F_1 = P A_1. $

  *② 求出各圆到顶点的母线长。* 母线与轴夹角 $30degree$，故距顶点母线长为 $l$ 处的"切点圆"半径为 $l sin 30degree = l/2$。由 $r_1 = 1$、$r_2 = 4$ 得

  $ l_1 = 2, quad l_2 = 8, $

  即圆 $C_1$、圆 $C_2$ 分别距顶点 $2$、$8$（沿母线量），而椭圆的每个点 $P$ 都满足 $l_1 <= l_P <= l_2$。

  *③ 把圆锥面沿一条母线剪开展开。* 展开后圆锥面成为一个扇形，扇形上：

  - $M$ 到顶点的距离为 $l_2 = 8$，$P$ 到顶点的距离为 $l_P$，$A_1$ 到顶点的距离为 $l_1 = 2$；
  - "圆锥表面上从 $P$ 到 $M$ 的最短路线"展开后就是*线段* $P M$；
  - $A_1$ 与 $P$ 在同一条母线上，展开后落在*同一条半径*上，故 $P A_1 = l_P - l_1 = l_P - 2$。

  *④ 求最小值。* 设 $M$ 与 $P$ 所在半径的夹角为 $delta$，扇形中

  $ P M = sqrt(l_2^2 + l_P^2 - 2 l_2 l_P cos delta) >= l_2 - l_P = 8 - l_P, $

  等号当 $delta = 0$（即 $M$ 与 $P$ 在同一条母线上）时成立。于是

  $ P M + P F_1 = P M + (l_P - 2) >= (8 - l_P) + (l_P - 2) = 6. $

  当 $P$ 取在母面 $S M$ 上、且 $l_P in [2, 8]$ 时等号成立，故最小值为 $6$。

  选 *(A)*。

  === 要点

  - *离心率的"夹角公式"要会推*：$e = (cos phi) / (cos beta)$（$phi$ 为截面与轴的夹角、$beta$ 为半顶角）；用"圆（$e = 0$）"与"抛物线（$e = 1$）"两个特例即可记住它。
  - *"表面最短 + 焦半径"用展开法*：把圆锥面沿母线剪开成扇形，表面最短路线化为线段；再把 $P F_1$ 换成同一条母线上的 $P A_1$，两者就都能在扇形里用"到顶点的距离"表示。
  - *$P F_1 = P A_1$ 又一次出现*：这正是 Dandelin 证明中的核心事实，说明建模题本质上是 Dandelin 结论的直接应用。
  - *切点圆半径与母线段长的关系*：$r = l sin beta$（$l$ 为顶点到该圆的母线长），这是把"半径比 $1 : 4$"翻译成"母线长 $2 : 8$"的关键一步。
]
