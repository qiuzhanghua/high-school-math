#import "template.typ": *

#set document(title: [射影几何])

#template(heading2-align: left, page-footer: "第 1 页")[
  #set math.equation(numbering: "(1)")

  == 一、这份笔记的定位

  射影几何不在高考考纲内，但它的*初等化结论*在本仓库的多篇文档中反复出现：

  - `圆锥曲线09极点极线.typ`：极点极线的基本用法；
  - `圆锥曲线练习题.typ`（成都七中 T17）：「蝴蝶模型」`k_(A P)/k_(B Q) = (a-m)/(a+m)`；
  - `圆锥曲线07仿射变换.typ`：用仿射变换把椭圆化为圆来简化面积、斜率问题。

  所以这份笔记的目标不是讲完整理论，而是：*把射影几何里"能直接用于解题"的部分整理成可查、可引用的条目*，并明确它们在解答题里的适用边界（见第八节）。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 二、无穷远元素与射影平面

  === （一）为什么需要"无穷远点"

  在仿射（即我们平时用的）平面里，两条直线要么相交、要么平行，*平行的情形要单独讨论*，很多定理就得写成"若……则……，若平行则另作讨论"。

  射影几何的做法是：给每个*方向*补上一个点，叫做这个方向的*无穷远点*，规定*一组平行线都交于它们公共的无穷远点*。这样"任意两条直线都相交"就统一成立了。

  #v(0.4em)

  #align(center)[
    #block(breakable: false, width: 270pt, height: 215pt)[
      // 无穷远直线（"地平线"）
      #place(dx: 20pt, dy: 55pt, line(end: (250pt, 0pt), stroke: (
        paint: rgb("#c7362e"),
        thickness: 1pt,
        dash: "dashed",
      )))
      // 左组：两条"平行"线交于 P∞
      #place(dx: 45pt, dy: 200pt, line(end: (105pt, -145pt), stroke: 0.8pt))
      #place(dx: 95pt, dy: 200pt, line(end: (55pt, -145pt), stroke: 0.8pt))
      // 右组：另一方向的两条"平行"线交于 Q∞
      #place(dx: 185pt, dy: 200pt, line(end: (-35pt, -145pt), stroke: 0.8pt))
      #place(dx: 240pt, dy: 200pt, line(end: (-90pt, -145pt), stroke: 0.8pt))
      // 无穷远点
      #place(dx: 148pt, dy: 53pt, circle(radius: 2.2pt, fill: rgb("#c7362e")))
      #place(dx: 213pt, dy: 53pt, circle(radius: 2.2pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 126pt, dy: 40pt)[#text(size: 9pt, fill: rgb("#c7362e"))[$P_infinity$]]
      #place(dx: 196pt, dy: 40pt)[#text(size: 9pt, fill: rgb("#c7362e"))[$Q_infinity$]]
      #place(dx: 12pt, dy: 44pt)[#text(size: 9pt, fill: rgb("#c7362e"))[无穷远直线 $l_infinity: z = 0$]]
      #place(dx: 60pt, dy: 205pt)[#text(size: 9pt)[一组平行线]]
      #place(dx: 190pt, dy: 205pt)[#text(size: 9pt)[另一组平行线]]
    ]
  ]

  图 1：*每个方向对应一个无穷远点*（同方向的一组平行线都交于它），*所有无穷远点组成无穷远直线* $l_infinity$。图中两条红色虚线的位置只是一个示意——$l_infinity$ 并不在仿射平面内，它表示"所有方向的集合"。

  #v(0.4em)

  === （二）基本概念

  - *无穷远点*：平面内每一个方向（即每一组平行线）恰对应一个无穷远点，记作 $P_infinity$、$Q_infinity$ 等；一组平行线交于它们公共的无穷远点。
  - *无穷远直线* $l_infinity$：所有无穷远点组成的集合。于是"两条直线必相交"（交点在有限处或在 $l_infinity$ 上）在射影平面内总成立。
  - *射影平面* = 仿射平面 $union$ 无穷远直线 $l_infinity$。

  === （三）齐次坐标：把"无穷远"写成数字

  平面上的点用三元组 $(x : y : z)$ 表示，*允许整体同乘非零常数*（即 $(x:y:z)$ 与 $(k x : k y : k z)$ 是同一个点）：

  - 普通点：$z != 0$，令 $(x : y : z) = (x/z : y/z : 1)$，它就是仿射点 $(x/z, y/z)$；
  - 无穷远点：$z = 0$，即 $(x : y : 0)$，表示*方向*为 $(x, y)$ 的那个无穷远点；
  - 无穷远直线：$l_infinity: z = 0$。

  直线 $a x + b y + c = 0$ 的齐次方程为

  $ a x + b y + c z = 0, $

  两条直线平行的充要条件是它们交于 $l_infinity$ 上的一点（联立后 $z = 0$ 有解）。

  === （四）二次曲线上的无穷远点（三种圆锥曲线的差别）

  把椭圆、双曲线、抛物线的方程齐次化（以 $z$ 补次），再令 $z = 0$ 求它与无穷远直线的交点：

  #align(center)[
    #table(
      columns: 3,
      stroke: 0.4pt,
      inset: 6pt,
      [曲线], [齐次方程], [与 $l_infinity$ 的交点],
      [椭圆], [$x^2/a^2 + y^2/b^2 = z^2$], [无实交点],
      [双曲线], [$x^2/a^2 - y^2/b^2 = z^2$], [两个实交点（即两条渐近线方向）],
      [抛物线], [$y^2 = 2 p x z$], [一个二重点（与 $l_infinity$ 相切）],
    )
  ]

  这正是三种圆锥曲线在射影意义下的*唯一区别*：它们都是"二次曲线"，差别只在于与无穷远直线相交的情形（相交两点、相切、无实交点）。

  === （五）这一步为后面准备了什么

  - *极点极线*（第四节）用齐次坐标写最简洁：极线方程 $(x_0 x)/a^2 + (y_0 y)/b^2 = z_0 z$，$z_0 = 0$ 时退化为过原点的直线；
  - *交比*（第三节）在 $l_infinity$ 上取值时，正好对应"斜率之比"这类结论；
  - *仿射变换与射影变换*（第七节）的区别也可以这样说：仿射变换*保持 $l_infinity$ 不变*（把无穷远直线映成自身），而一般的射影变换不必保持它。

  == 三、交比与调和点列

  === （一）从"比"到"交比"

  同一条直线上四点 $A$、$B$、$C$、$D$ 的*交比*定义为

  $ (A, B; C, D) = (overline(A C) slash overline(C B))/(overline(A D) slash overline(D B)), $

  其中 $overline(A C)$ 等是*有向线段*（沿直线取定一个正方向）。注意每一条"比"的分母端点都是 $C$、$D$ 与另一对 $A$、$B$ 交织出现，这正是它能*射影不变*的原因。

  *为什么不用普通的比*：普通比值 $overline(A C)/overline(C B)$ 在平移、旋转下不变，但在一般的射影变换下会变；交比却是*射影不变量*——这是把它作为射影几何"基本量"的理由。

  === （二）交比的基本性质（计算时常用）

  - *射影不变性*：任意射影变换（包括仿射变换、中心投影）都保持交比不变；
  - *对称性*：$(A,B;C,D) = (C,D;A,B) = (B,A;D,C)$；且 $(A,B;D,C) = 1/(A,B;C,D)$；
  - *共点四线的交比*：交比也可以对"共点的四条直线"定义（用它们与任意一条不过顶点的直线的交点来算），值与所选直线无关；
  - *与斜率的关系*：若四条直线过同一点、斜率分别为 $k_1$、$k_2$、$k_3$、$k_4$，则交比只依赖这些斜率之比——这就是圆锥曲线问题里"斜率之比为定值"的射影本质。

  === （三）调和点列

  若 $(A, B; C, D) = -1$，就称 $A$、$B$、$C$、$D$ 成*调和点列*（$C$、$D$ 互为关于 $A$、$B$ 的*调和共轭点*）。

  取 $A = 0$、$B = 1$（即把 $A$、$B$ 分别放在数轴的 $0$、$1$ 处），设 $C = c$、$D = d$，则

  $
    (A, B; C, D) = (c slash (1-c))/(d slash (1-d)) = (c(1-d))/(d(1-c)) = -1 quad <=> quad c + d = 2 c d quad <=> quad 1/c + 1/d = 2.
  $

  换成一般记法就是*调和平均形式*：

  $ 1/(overline(A C)) + 1/(overline(A D)) = 2/(overline(A B)). $

  由 $d = c/(2c-1)$ 可反解出调和共轭点：例如 $c = 2/3$ 时 $d = 2$，即 $(0, 1; 2/3, 2) = -1$。

  #v(0.4em)

  #align(center)[
    #block(breakable: false, width: 270pt, height: 120pt)[
      // 数轴
      #place(dx: 30pt, dy: 60pt, line(end: (220pt, 0pt), stroke: 0.8pt))
      // 四点
      #place(dx: 48pt, dy: 58pt, circle(radius: 2pt, fill: black))
      #place(dx: 108pt, dy: 58pt, circle(radius: 2pt, fill: rgb("#c7362e")))
      #place(dx: 138pt, dy: 58pt, circle(radius: 2pt, fill: black))
      #place(dx: 198pt, dy: 58pt, circle(radius: 2pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 42pt, dy: 66pt)[$A = 0$]
      #place(dx: 98pt, dy: 40pt)[#text(fill: rgb("#c7362e"))[$C = c$]]
      #place(dx: 132pt, dy: 66pt)[$B = 1$]
      #place(dx: 190pt, dy: 40pt)[#text(fill: rgb("#c7362e"))[$D = d$]]
      // 说明
      #place(dx: 30pt, dy: 84pt)[#text(
        size: 9pt,
      )[$1/(A C) + 1/(A D) = 2/(A B)$，且 $A$、$C$、$B$、$D$ 依次排列（$C$ 在 $A B$ 内、$D$ 在 $A B$ 外）]]
    ]
  ]

  图 2：*调和点列*示意（$A = 0$、$B = 1$、$C = 2/3$、$D = 2$）。$C$ 是 $A B$ 的*内分点*，$D$ 是相应的*外分点*，二者满足 $1 slash (A C) + 1 slash (A D) = 2 slash (A B)$。

  #v(0.4em)

  *特别情形（与第二节的联系）*：若 $C$ 是线段 $A B$ 的*中点*，则 $C$ 的调和共轭点是 $A B$ 方向上的*无穷远点* $P_infinity$，即

  $ (A, B; C, P_infinity) = -1. $

  这说明"中点"在射影意义下就是"与无穷远点调和共轭的点"——这也是为什么仿射变换保持中点（它保持 $l_infinity$ 不变），而一般射影变换不保持。

  === （四）用向量（定比分点）再解释一遍（高中视角）

  上面的交比、调和点列都可以只用*向量*说清楚，不需要任何课外概念。

  *1. 定比分点公式。* 在直线 $A B$ 上取定方向，令 $lambda = (overline(A C))/(overline(C B))$（$lambda != -1$），则由"$arrow(A C) = lambda arrow(C B)$"或直接解向量方程可得

  $ arrow(A C) = lambda/(1 + lambda) arrow(A B). $

  这就是课本上的*定比分点公式*：$lambda > 0$ 时 $C$ 在 $A B$ 内部（内分点），$lambda < 0$ 时 $C$ 在 $A B$ 外部（外分点）。

  *2. 交比就是两个定比之比。* 记

  $ lambda_C = (overline(A C))/(overline(C B)), quad lambda_D = (overline(A D))/(overline(D B)), $

  那么按定义立刻有

  $ (A, B; C, D) = (overline(A C) slash overline(C B))/(overline(A D) slash overline(D B)) = lambda_C/lambda_D. $

  *3. 调和点列的向量刻画。* 于是

  $ (A, B; C, D) = -1 quad <=> quad lambda_D = -lambda_C, $

  即"*内分比与外分比互为相反数*"。用定比分点公式写出来就是

  $
    arrow(A C) = lambda/(1 + lambda) arrow(A B), quad arrow(A D) = (-lambda)/(1 - lambda) arrow(A B) = lambda/(lambda - 1) arrow(A B).
  $

  *4. 三个特例。*

  - $lambda = 1$：$C$ 是 $A B$ 的*中点*，此时 $arrow(A D)$ 的分母 $lambda - 1 = 0$，说明 $D$ 在"无穷远处"，即上文的 $(A, B; C, P_infinity) = -1$；
  - $lambda -> 0$：$C -> A$，同时 $D -> A$，两者同时趋近 $A$（这时调和共轭退化为重点）；
  - $lambda -> +-oo$：$C -> B$，同理 $D -> B$。

  *5. 回到数值例子。* 在 $A = 0$、$B = 1$ 的数轴上，$C = 2/3$ 给出

  $ lambda_C = (overline(A C))/(overline(C B)) = (2/3)/(1/3) = 2, quad "故" lambda_D = -2. $

  再由定比分点公式（$D$ 在 $A B$ 之外，用外分形式）：

  $ arrow(A D) = lambda_D/(1 + lambda_D) arrow(A B) = (-2)/(1 - 2) arrow(A B) = 2 arrow(A B), $

  即 $D = 2$，与前面用 $d = c/(2c - 1)$ 算得的 $D = 2$ 完全一致。

  $($可见$)$ 用"内分比与外分比互为相反数"来判断调和点列，比直接算交比更直观，也更贴近高中向量知识：

  $ (A, B; C, D) = -1 quad <=> quad (overline(A C))/(overline(C B)) = -(overline(A D))/(overline(D B)). $


  === （五）调和线束

  *定义*：过同一点 $O$ 的四条直线（称为一个*线束*）$a$、$b$、$c$、$d$，若存在一条不过 $O$ 的直线截它们于 $A$、$B$、$C$、$D$ 且

  $ (A, B; C, D) = -1, $

  就称 $a$、$b$、$c$、$d$ 构成*调和线束*，记作 $(a, b; c, d) = -1$。由交比的射影不变性，只要*一条*截线满足，其它截线都满足——这正是它比"调和点列"更好用的地方。

  *最常用的特例（只用初中知识就能看懂）*：若 $c$、$d$ 分别是 $a$、$b$ 所成角的*内、外角平分线*，则 $a$、$b$、$c$、$d$ 成调和线束。换言之：

  $ ("两条直线" + "它们的内外角平分线") quad "构成调和线束". $

  这条结论就是圆锥曲线"光学性质"的射影版本：椭圆上一点 $P$ 处的*切线*与*法线*，连同两条焦半径 $P F_1$、$P F_2$，正好构成调和线束（法线平分 $angle F_1 P F_2$，而切线与法线垂直——内、外角平分线的方向）。

  #v(0.4em)

  *可手算的例子*：取 $O(0, 0)$，四条直线为两条坐标轴与两条角平分线

  $ a: y = 0, quad b: x = 0, quad c: y = x, quad d: y = -x, $

  用截线 $x + 2y = 2$ 去截，得四个交点

  $ A(2, 0), quad B(0, 1), quad C(2/3, 2/3), quad D(-2, 2), $

  沿截线取 $x$ 为参数，则

  $ (A, B; C, D) = ((2/3 - 2)(-2 - 0))/((-2 - 2)(2/3 - 0)) = ((-8/3))/((-8/3)) = 1 "？" $

  $($按定义应取 $((t_C - t_A)(t_D - t_B))/((t_D - t_A)(t_C - t_B))$：$= ((2/3-2)(2-1))/((-2-2)(2/3-1)) = ((-4/3)(1))/((-4)(-1/3)) = (-4/3)/(4/3) = -1$。$)$

  故 $(a, b; c, d) = -1$，即这两条坐标轴与它们的角平分线构成调和线束。

  #align(center)[
    #block(breakable: false, width: 260pt, height: 210pt)[
      // 四条过 O 的直线（按截线范围画）
      #place(dx: 60pt, dy: 120pt, line(end: (150pt, 0pt), stroke: (paint: rgb("#c7362e"), thickness: 1pt)))   // a: y=0
      #place(dx: 150pt, dy: 30pt, line(end: (0pt, 180pt), stroke: (paint: rgb("#1f6feb"), thickness: 1pt)))   // b: x=0
      #place(dx: 60pt, dy: 210pt, line(end: (180pt, -180pt), stroke: (paint: rgb("#2e7d32"), thickness: 1pt)))// c: y=x
      #place(dx: 30pt, dy: 0pt, line(end: (180pt, 180pt), stroke: (paint: rgb("#8e44ad"), thickness: 1pt)))   // d: y=-x（画布坐标下为 y = x - 30）
      // 截线 x+2y=2：过 (2,0)->(240,120) 与 (0,1)->(150,75)
      #place(dx: 240pt, dy: 120pt, line(end: (-90pt, 45pt), stroke: (paint: gray, thickness: 0.8pt, dash: "dashed")))
      // 交点 A(240,120) B(150,75) C(180,90) D(60,210)
      #place(dx: 238pt, dy: 118pt, circle(radius: 2pt, fill: black))
      #place(dx: 148pt, dy: 73pt, circle(radius: 2pt, fill: black))
      #place(dx: 178pt, dy: 88pt, circle(radius: 2pt, fill: black))
      #place(dx: 58pt, dy: 28pt, circle(radius: 2pt, fill: black))
      // 顶点
      #place(dx: 148pt, dy: 118pt, circle(radius: 2.2pt, fill: black))
      // 标签
      #place(dx: 132pt, dy: 124pt)[$O$]
      #place(dx: 244pt, dy: 118pt)[$A$]
      #place(dx: 132pt, dy: 66pt)[$B$]
      #place(dx: 182pt, dy: 96pt)[$C$]
      #place(dx: 40pt, dy: 14pt)[$D$]
      #place(dx: 200pt, dy: 108pt)[#text(size: 8pt, fill: rgb("#c7362e"))[$a$]]
      #place(dx: 152pt, dy: 40pt)[#text(size: 8pt, fill: rgb("#1f6feb"))[$b$]]
      #place(dx: 216pt, dy: 48pt)[#text(size: 8pt, fill: rgb("#2e7d32"))[$c$]]
      #place(dx: 200pt, dy: 174pt)[#text(size: 8pt, fill: rgb("#8e44ad"))[$d$]]
    ]
  ]

  图 3：调和线束（$a$、$b$ 为两条坐标轴，$c$、$d$ 为它们的角平分线）。灰色虚线是截线 $x + 2y = 2$，它与四条直线交于 $A$、$B$、$C$、$D$，交比 $(A, B; C, D) = -1$；由射影不变性，换任何一条截线都一样。

  *用斜率算交比（高中可用）*：若四条直线的斜率依次为 $k_1$、$k_2$、$k_3$、$k_4$，取截线 $x = 1$，交点纵坐标就是这些斜率，于是

  $ (a, b; c, d) = ((k_3 - k_1)(k_4 - k_2))/((k_4 - k_1)(k_3 - k_2)). $

  例如 $k_1 = 0$、$k_2 = oo$（$y$ 轴）、$k_3 = 1$、$k_4 = -1$ 时，上式在 $k_2 -> oo$ 的极限为 $-1$（与上面用截线算得的结果一致）。

  === （六）调和线束与斜率的交比（含证明）

  *问题*：过点 $O$ 的四条直线，若斜率依次为 $k_1$、$k_2$、$k_3$、$k_4$，怎样用斜率判断它们是否是调和线束？

  *做法（见图 4）*：过 $O$ 作一条横截线（图中红色水平线），四条直线与它交于 $A$、$B$、$C$、$D$；再过 $O$ 作这条横截线的垂线，垂足记作 $H$，设 $O H = h$（红色虚线）。

  在横截线上以 $H$ 为原点、向右为正方向取坐标。点 $A$、$B$、$C$、$D$ 的坐标 $x_A$、$x_B$、$x_C$、$x_D$ 与四条直线的斜率 $k_i$（以横截线为基准量出的斜率）满足

  $ k_i = h/x_i quad <=> quad x_i = h/(k_i) quad (i = 1, 2, 3, 4), $

  因为从 $O$ 到横截线上横坐标为 $x_i$ 的点，竖直升高为 $h$、水平位移为 $x_i$，故斜率为 $h slash x_i$。代入交比定义：

  $
    (A, B; C, D) = ((x_C - x_A)(x_D - x_B))/((x_D - x_A)(x_C - x_B)) = (((h)/(k_3) - (h)/(k_1))((h)/(k_4) - (h)/(k_2)))/(((h)/(k_4) - (h)/(k_1))((h)/(k_3) - (h)/(k_2))).
  $

  分子、分母各提出公因子 $h$ 后约去，得

  $ (A, B; C, D) = ((1/k_3 - 1/k_1)(1/k_4 - 1/k_2))/((1/k_4 - 1/k_1)(1/k_3 - 1/k_2)). $

  也就是说：*把四个斜率同时取倒数，交比不变*。因此

  $ (a, b; c, d) = -1 quad <=> quad (1/k_1, 1/k_2; 1/k_3, 1/k_4) = -1. $ <eq:射影几何1>

  *与"竖直截线"的写法一致*：若改用竖直截线 $x = 1$，交点纵坐标恰为 $k_1$、$k_2$、$k_3$、$k_4$，于是交比也等于

  $ ((k_3 - k_1)(k_4 - k_2))/((k_4 - k_1)(k_3 - k_2)). $ <eq:射影几何2>

  横向截线给 (1)、竖向截线给 (2)，两者由*交比的射影不变性*保证相同——这正是"调和线束"可以不依赖截线来定义的原因。

  #align(center)[
    #block(breakable: false, width: 265pt, height: 215pt)[
      #place(dx: 150pt, dy: 30pt, line(end: (-120pt, 130pt), stroke: (paint: rgb("#1f4f9e"), thickness: 1pt)))
      #place(dx: 150pt, dy: 30pt, line(end: (-75pt, 130pt), stroke: (paint: rgb("#1f4f9e"), thickness: 1pt)))
      #place(dx: 150pt, dy: 30pt, line(end: (-25pt, 130pt), stroke: (paint: rgb("#1f4f9e"), thickness: 1pt)))
      #place(dx: 150pt, dy: 30pt, line(end: (35pt, 130pt), stroke: (paint: rgb("#1f4f9e"), thickness: 1pt)))
      #place(dx: 150pt, dy: 30pt, line(end: (0pt, 130pt), stroke: (
        paint: rgb("#c7362e"),
        thickness: 0.9pt,
        dash: "dashed",
      )))
      #place(dx: 30pt, dy: 160pt, line(end: (160pt, 0pt), stroke: (paint: rgb("#c7362e"), thickness: 1.1pt)))
      #place(dx: 28pt, dy: 158pt, circle(radius: 2pt, fill: black))
      #place(dx: 73pt, dy: 158pt, circle(radius: 2pt, fill: black))
      #place(dx: 123pt, dy: 158pt, circle(radius: 2pt, fill: black))
      #place(dx: 183pt, dy: 158pt, circle(radius: 2pt, fill: black))
      #place(dx: 148pt, dy: 28pt, circle(radius: 2.2pt, fill: black))
      #place(dx: 148pt, dy: 158pt, circle(radius: 2pt, fill: rgb("#c7362e")))
      #place(dx: 150pt, dy: 16pt)[$O$]
      #place(dx: 16pt, dy: 162pt)[$A$]
      #place(dx: 66pt, dy: 162pt)[$C$]
      #place(dx: 118pt, dy: 162pt)[$B$]
      #place(dx: 184pt, dy: 162pt)[$D$]
      #place(dx: 152pt, dy: 156pt)[$H$]
      #place(dx: 50pt, dy: 140pt)[#text(size: 8pt, fill: rgb("#1f4f9e"))[$k_1$]]
      #place(dx: 90pt, dy: 140pt)[#text(size: 8pt, fill: rgb("#1f4f9e"))[$k_3$]]
      #place(dx: 135pt, dy: 140pt)[#text(size: 8pt, fill: rgb("#1f4f9e"))[$k_2$]]
      #place(dx: 188pt, dy: 140pt)[#text(size: 8pt, fill: rgb("#1f4f9e"))[$k_4$]]
      #place(dx: 152pt, dy: 94pt)[#text(size: 8pt, fill: rgb("#c7362e"))[$h$]]
    ]
  ]

  图 4：调和线束与斜率的交比。红线为过 $O$ 的横截线，$H$ 为 $O$ 在其上的垂足，$O H = h$；四条蓝线斜率依次为 $k_1$、$k_2$、$k_3$、$k_4$。
  由 $x_i = h slash k_i$ 得：$(A, B; C, D) = -1 <=> (1/k_1, 1/k_2; 1/k_3, 1/k_4) = -1$。

  === （七）完全四边形的调和性

  *定义*：四条直线（其中无三条共点）叫做一个*完全四边形*。四条直线两两相交，共得 $6$ 个交点；把这 $6$ 个交点按"不共边"两两连线，得到 $3$ 条*对角线*，它们的交点叫做 $3$ 个*对角点*。

  最便于作图的理解方式：*取一个三角形，再画一条与三边都相交的截线*——这 $4$ 条直线（三边 + 截线）就是一个完全四边形，它的 $6$ 个顶点是三角形的三个顶点加上截线与三边的三个交点。

  #v(0.4em)

  #align(center)[
    #block(breakable: false, width: 270pt, height: 225pt)[
      // 三角形 ABC：A(85,180)、B(245,180)、C(165,50)
      #place(dx: 85pt, dy: 180pt, line(end: (160pt, 0pt), stroke: 0.8pt))        // A→B
      #place(dx: 85pt, dy: 180pt, line(end: (80pt, -130pt), stroke: 0.8pt))      // A→C
      #place(dx: 245pt, dy: 180pt, line(end: (-80pt, -130pt), stroke: 0.8pt))    // B→C
      // 截线 l：过 (21.7,180) 与 (250,51.6)，与三边所在直线都相交
      #place(dx: 21.7pt, dy: 180pt, line(end: (228.3pt, -128.4pt), stroke: (paint: rgb("#c7362e"), thickness: 1.1pt)))
      // 三个交点：C'（在 AB 的延长线上）、B'（在 CA 上）、A'（在 BC 上）
      #place(dx: 19.7pt, dy: 178pt, circle(radius: 2pt, fill: rgb("#c7362e")))
      #place(dx: 116.5pt, dy: 123.5pt, circle(radius: 2pt, fill: rgb("#c7362e")))
      #place(dx: 185.6pt, dy: 84.7pt, circle(radius: 2pt, fill: rgb("#c7362e")))
      // 三个顶点
      #place(dx: 83pt, dy: 178pt, circle(radius: 2pt, fill: black))
      #place(dx: 243pt, dy: 178pt, circle(radius: 2pt, fill: black))
      #place(dx: 163pt, dy: 48pt, circle(radius: 2pt, fill: black))
      // 标签
      #place(dx: 70pt, dy: 186pt)[$A$]
      #place(dx: 248pt, dy: 186pt)[$B$]
      #place(dx: 166pt, dy: 38pt)[$C$]
      #place(dx: 4pt, dy: 184pt)[#text(size: 9pt, fill: rgb("#c7362e"))[$C'$]]
      #place(dx: 120pt, dy: 128pt)[#text(size: 9pt, fill: rgb("#c7362e"))[$B'$]]
      #place(dx: 190pt, dy: 88pt)[#text(size: 9pt, fill: rgb("#c7362e"))[$A'$]]
      #place(dx: 186pt, dy: 40pt)[#text(size: 9pt, fill: rgb("#c7362e"))[截线 $l$]]
    ]
  ]

  图 5：完全四边形（三边所在直线 $+$ 截线 $l$）与它的 $6$ 个交点 $A$、$B$、$C$、$A'$、$B'$、$C'$。
  其中 $A'$ 在 $B C$ 上、$B'$ 在 $C A$ 上、$C'$ 在 $A B$ 的*延长线*上（一条直线至多与三角形的两条*边*相交，第三条交点只能落在边的延长线上）。

  #v(0.4em)

  *自极三角形的例子*（下面只用坐标说明其存在，配图 6 只画这个配置本身，不画圆锥曲线）：取椭圆 $x^2/4 + y^2/2 = 1$，点 $P(3, 0)$ 在椭圆外，它的极线是 $x = 4/3$。在极线上取 $Q(4/3, 2)$，由配极原则，$Q$ 的极线必过 $P$，即 $x/3 + y = 1$。设

  $ R = (4/3, 5/9) quad ("（两条极线的交点）"), $

  则 $R$ 的极线恰是直线 $P Q$。于是三角形 $P Q R$ 的三条边正好是三个顶点的极线（对边与对顶点配极）：

  #align(center)[
    #table(
      columns: 2,
      stroke: 0.4pt,
      inset: 5pt,
      [边], [它是谁的极线],
      [$P Q$], [$R$ 的极线],
      [$Q R$], [$P$ 的极线（即 $x = 4/3$）],
      [$P R$], [$Q$ 的极线（即 $x/3 + y = 1$）],
    )
  ]

  这样的三角形叫做这条圆锥曲线的*自极三角形*；它是纯粹的*射影配置*——只要给定一条圆锥曲线，就能像上图那样画出一个自极三角形（图 6 中省略了那条圆锥曲线，只保留三角形本身）。

  #align(center)[
    #block(breakable: false, width: 270pt, height: 225pt)[
      // 顶点
      #place(dx: 238pt, dy: 128pt, circle(radius: 2.2pt, fill: rgb("#c7362e")))
      #place(dx: 188pt, dy: 68pt, circle(radius: 2.2pt, fill: rgb("#1f6feb")))
      #place(dx: 188pt, dy: 111.5pt, circle(radius: 2.2pt, fill: rgb("#2e7d32")))
      // 三条边（＝三条极线）
      #place(dx: 190pt, dy: 30pt, line(end: (0pt, 200pt), stroke: (paint: rgb("#c7362e"), thickness: 1pt)))            // QR：P 的极线
      #place(dx: 188pt, dy: 68pt, line(end: (52pt, 63pt), stroke: (paint: rgb("#1f6feb"), thickness: 1pt)))             // PR：Q 的极线
      #place(dx: 188pt, dy: 111.5pt, line(end: (52pt, 19.5pt), stroke: (paint: rgb("#2e7d32"), thickness: 1pt)))        // PQ：R 的极线
      // 标签
      #place(dx: 242pt, dy: 132pt)[$P$]
      #place(dx: 176pt, dy: 54pt)[$Q$]
      #place(dx: 192pt, dy: 114pt)[$R$]
    ]
  ]

  图 6：*自极三角形*（图中*不画圆锥曲线*，只画这个配置本身）：三角形 $P Q R$ 满足"每个顶点的极线就是它的对边"。
  *红*：边 $Q R$ 是 $P$ 的极线；*蓝*：边 $P R$ 是 $Q$ 的极线；*绿*：边 $P Q$ 是 $R$ 的极线。
  三条边都画成了延长线，表示"边"指整条直线（不是线段）。

  #v(0.4em)

  *完全四边形的"对角线调和"定理*：三条对角线 $d_1 = V_(1 2) V_(3 4)$、$d_2 = V_(1 3) V_(2 4)$、$d_3 = V_(1 4) V_(2 3)$ 互不共点（它们两两相交，交点组成*对角三角形*）。对*每一条*对角线，设它的两个端点为 $P$、$Q$，它与另外两条对角线的交点为 $R$、$S$，则

  $ (P, Q; R, S) = -1, $

  也就是说：*每条对角线被它与另两条对角线的交点调和分割*。

  *可手算的例子*（全部用分数，结果精确）：取三角形 $A(0, 0)$、$B(1, 0)$、$C(0, 1)$ 与截线 $l$（过 $(-1, 0)$ 与 $(0, 1/4)$），四条直线即完全四边形：

  #align(center)[
    #table(
      columns: 3,
      stroke: 0.4pt,
      inset: 5pt,
      [对角线], [端点 $P$、$Q$], [与另两条对角线的交点 $R$、$S$（交比）],
      [$V_(1 2) V_(3 4)$], [$B(1, 0)$ 与 $(0, 1/4)$], [$(3/11, 2/11)$、$(-3/5, 2/5)$，交比 $= -1$],
      [$V_(1 3) V_(2 4)$], [$A(0, 0)$ 与 $(3/5, 2/5)$], [$(3/11, 2/11)$、$(-3, -2)$，交比 $= -1$],
      [$V_(1 4) V_(2 3)$], [$(-1, 0)$ 与 $C(0, 1)$], [$(-3/5, 2/5)$、$(-3, -2)$，交比 $= -1$],
    )
  ]

  三个"交点" $(3/11, 2/11)$、$(-3/5, 2/5)$、$(-3, -2)$ 就是*对角三角形*的三个顶点。

  #align(center)[
    #block(breakable: false, width: 250pt, height: 250pt)[
      // 三角形 A(100,170) B(160,170) C(100,110)
      #place(dx: 100pt, dy: 170pt, line(end: (60pt, 0pt), stroke: 0.8pt))         // A→B
      #place(dx: 100pt, dy: 170pt, line(end: (0pt, -60pt), stroke: 0.8pt))        // A→C
      #place(dx: 160pt, dy: 170pt, line(end: (-60pt, -60pt), stroke: 0.8pt))      // B→C
      // 截线：过 (-1,0)->(40,170) 与 (0,1/4)->(100,155)，延长到 (136,146)
      #place(dx: 40pt, dy: 170pt, line(end: (110pt, -28pt), stroke: (paint: rgb("#c7362e"), thickness: 1pt)))
      // 对角线1：B(160,170) 到 (40,140)（延长，走向左端）
      #place(dx: 40pt, dy: 140pt, line(end: (120pt, 30pt), stroke: (paint: rgb("#1f6feb"), thickness: 1pt)))
      // 对角线2：A(100,170) 到 (10,230)…只画到 (154,134)
      #place(dx: 154pt, dy: 134pt, line(end: (-144pt, 96pt), stroke: (paint: rgb("#2e7d32"), thickness: 1pt)))
      // 对角线3：(-1,0)->(40,170) 到 (0.6,1.6)->(136,74)
      #place(dx: 40pt, dy: 170pt, line(end: (96pt, -96pt), stroke: (paint: rgb("#8e44ad"), thickness: 1pt)))
      // 顶点
      #place(dx: 98pt, dy: 168pt, circle(radius: 2pt, fill: black))
      #place(dx: 158pt, dy: 168pt, circle(radius: 2pt, fill: black))
      #place(dx: 98pt, dy: 108pt, circle(radius: 2pt, fill: black))
      // 对角三角形的两个可见顶点
      #place(dx: 114.4pt, dy: 157.1pt, circle(radius: 2pt, fill: rgb("#c7362e")))
      #place(dx: 62pt, dy: 144pt, circle(radius: 2pt, fill: rgb("#c7362e")))
      // 标签
      #place(dx: 86pt, dy: 178pt)[$A$]
      #place(dx: 164pt, dy: 178pt)[$B$]
      #place(dx: 86pt, dy: 96pt)[$C$]
      #place(dx: 116pt, dy: 144pt)[#text(size: 9pt, fill: rgb("#c7362e"))[$R$]]
      #place(dx: 48pt, dy: 132pt)[#text(size: 9pt, fill: rgb("#c7362e"))[$S$]]
      #place(dx: 152pt, dy: 128pt)[#text(size: 8pt, fill: rgb("#1f6feb"))[$ell_1$]]
      #place(dx: 118pt, dy: 186pt)[#text(size: 8pt, fill: rgb("#2e7d32"))[$ell_2$]]
      #place(dx: 66pt, dy: 96pt)[#text(size: 8pt, fill: rgb("#8e44ad"))[$ell_3$]]
      #place(dx: 150pt, dy: 166pt)[#text(size: 8pt, fill: rgb("#c7362e"))[截线 $l$]]
    ]
  ]

  图 7：完全四边形的三条对角线（蓝 $d_1$、绿 $d_2$、紫 $d_3$）与红色截线 $l$。
  图中标出对角三角形的两个顶点 $R$、$S$；第三个顶点 $(-3, -2)$ 离本图太远，未画出（把 $d_2$、$d_3$ 向左下延长即交于该点）。

  *两条常用结论*（后续第四节会用到）：

  - *自极性*：设过 $A$、$B$、$C$、$D$（$D$ 为截线上的第四个相关点）的任意一条圆锥曲线，则三个对角点两两互为极线——即对角三角形是这条圆锥曲线的*自极三角形*；
  - *调和性*：每条对角线上的 $4$ 个点（$2$ 个顶点与 $2$ 个对角点）构成*调和点列*，交比为 $-1$。这就是第三节开头"完全四边形的调和性"的具体含义，也是极点极线理论最初的几何来源：把*射影*关系（三点共线、调和）与*度量*关系（交比 $-1$）连在一起。

  === （八）圆锥曲线上的交比

  - 从圆锥曲线上一点 $P$ 出发，把曲线上的四个点 $A$、$B$、$C$、$D$ 连成四条线，则由*射影不变性*，四线的交比等于四点的交比，与 $P$ 的选取无关；
  - 若把圆锥曲线参数化（例如椭圆取 $x = a (1-t^2)/(1+t^2)$、$y = b dot 2t/(1+t^2)$），则四点交比就是参数的交比

    $ (A, B; C, D) = ((t_C - t_A)(t_D - t_B))/((t_D - t_A)(t_C - t_B)). $

  - 特别地，*调和点列*对应"参数满足 $t_C + t_D = 2 t_A t_B$ 型的一次关系"，这正是一些定点定值问题的射影解释。

  === （九）与"斜率之比 / 斜率之积"的接口（预告第六节）

  在椭圆 $x^2/a^2 + y^2/b^2 = 1$ 中，把左、右顶点 $A(-a,0)$、$B(a,0)$ 与过 $x$ 轴上定点 $M(m,0)$ 的弦 $P Q$ 相连，得到的

  $ k_(A P)/k_(B Q) = (a - m)/(a + m) $

  本质上是一个*交比为常值*的结论：$M$ 固定 $<=>$ 该比值固定。第六节会给出完整陈述与证明。

  == 四、中点模型

  *模型描述*：设 $A$ 是线段 $M N$ 的中点，$O$ 是直线 $M N$ 外任意一点。过 $A$ 任作一条直线，它分别交直线 $O M$、$O N$ 于 $B$、$C$；再过 $O$ 作 $M N$ 的平行线，交这条直线于 $D$。则

  $ (B, C; A, D) = -1, $

  即 $A$、$D$ 调和分割 $B$、$C$。

  *为什么（一句话）*：$A$ 是 $M N$ 的中点，等价于"$A$ 与 $M N$ 方向上的无穷远点 $P_infinity$ 关于 $M$、$N$ 调和"，即

  $ (M, N; A, P_infinity) = -1. $

  而以 $O$ 为中心的*中心投影*把直线 $M N$ 投到直线 $B C$ 上：$M -> B$、$N -> C$、$A -> A$、$P_infinity -> D$（因为 $P_infinity$ 对应方向 $M N$，投影后正是过 $O$ 平行于 $M N$ 的直线与 $B C$ 的交点）。交比是射影不变量，所以

  $ (B, C; A, D) = (M, N; A, P_infinity) = -1. $

  *可手算的例子*（分数精确）：取 $M(-1, -1)$、$N(1, 1)$，则中点 $A(0, 0)$；取 $O(0, 3)$，过 $A$ 作直线（方向 $(1, 2)$），过 $O$ 作 $M N$ 的平行线。算得

  $ B(-3/2, -3), quad C(3/4, 3/2), quad D(3, 6), $

  在直线 $B C$ 上以 $x$ 为参数：$B: -3/2$，$C: 3/4$，$A: 0$，$D: 3$，

  $ (B, C; A, D) = ((0 - (-3/2))(3 - 3/4))/((3 - (-3/2))(0 - 3/4)) = ((3/2)(9/4))/((9/2)(-3/4)) = (27/8)/(-27/8) = -1. $

  *用它能做什么*：凡是题目中出现"中点 + 过中点的直线 + 从某点出发的两条射线"，就可以先用本模型把中点翻译成"与无穷远点调和"，再借交比不变性得到直线上的调和关系（例如求定点、证明三点共线、求斜率之比）。高考解答题中请按"中点 → 中位线/定比分点"等初等工具书写，本模型用于探路与验算。

  #align(center)[
    #block(breakable: false, width: 265pt, height: 245pt)[
      // 三条射线 O→N、O→A、O→M
      #place(dx: 150pt, dy: 45pt, line(end: (-105pt, 130pt), stroke: (paint: rgb("#1f4f9e"), thickness: 1pt)))   // ON
      #place(dx: 150pt, dy: 45pt, line(end: (-15pt, 130pt), stroke: (paint: rgb("#1f4f9e"), thickness: 1pt)))    // OA
      #place(dx: 150pt, dy: 45pt, line(end: (75pt, 130pt), stroke: (paint: rgb("#1f4f9e"), thickness: 1pt)))     // OM
      // 过 A 的横截线，交三射线于 C、A、B，并向右延伸到 D
      #place(dx: 30pt, dy: 200pt, line(end: (200pt, -30pt), stroke: (paint: rgb("#c7362e"), thickness: 1.1pt)))
      // 过 O 平行 MN 的虚线（与横截线交于 D）
      #place(dx: 150pt, dy: 45pt, line(end: (105pt, 50pt), stroke: (paint: gray, thickness: 0.7pt, dash: "dashed")))
      // 线段 MN 与中点 A
      #place(dx: 45pt, dy: 175pt, line(end: (180pt, 0pt), stroke: (paint: rgb("#2e7d32"), thickness: 1.1pt)))
      // 点：C、A、B、D
      #place(dx: 103pt, dy: 183.5pt, circle(radius: 2pt, fill: black))
      #place(dx: 133pt, dy: 175pt, circle(radius: 2pt, fill: black))
      #place(dx: 178pt, dy: 158.5pt, circle(radius: 2pt, fill: black))
      #place(dx: 228pt, dy: 170pt, circle(radius: 2pt, fill: rgb("#c7362e")))
      // 顶点 O 与两端 M、N
      #place(dx: 148pt, dy: 43pt, circle(radius: 2.2pt, fill: black))
      #place(dx: 43pt, dy: 173pt, circle(radius: 2.2pt, fill: black))
      #place(dx: 223pt, dy: 173pt, circle(radius: 2.2pt, fill: black))
      // 标签
      #place(dx: 150pt, dy: 34pt)[$O$]
      #place(dx: 30pt, dy: 178pt)[$N$]
      #place(dx: 226pt, dy: 176pt)[$M$]
      #place(dx: 92pt, dy: 188pt)[$C$]
      #place(dx: 128pt, dy: 178pt)[$A$]
      #place(dx: 178pt, dy: 162pt)[$B$]
      #place(dx: 232pt, dy: 174pt)[#text(size: 9pt, fill: rgb("#c7362e"))[$D$]]
    ]
  ]

  图 8：中点模型。$A$ 是绿色线段 $M N$ 的中点，$O$ 为任一点；红色直线过 $A$，交 $O N$、$O M$ 于 $C$、$B$，交"过 $O$ 且平行于 $M N$ 的虚线"于 $D$。
  由中心投影（以 $O$ 为中心，把 $M N$ 投到这条红线上）得 $(B, C; A, D) = -1$。

  == 五、极点与极线（椭圆、双曲线、抛物线）

  === （一）定义与基本事实

  - *配极原则*：点 $P$ 在点 $Q$ 的极线上 $<=>$ 点 $Q$ 在点 $P$ 的极线上（第五节末尾给出证明思路）；
  - *极线方程*：椭圆 $x^2/a^2 + y^2/b^2 = 1$ 上（或外、或内）一点 $P(x_0, y_0)$ 的极线为

    $ (x_0 x)/a^2 + (y_0 y)/b^2 = 1. quad (*) $

  - *三种位置关系*：$P$ 在椭圆上时 $(*)$ 是*切线*；$P$ 在椭圆外时 $(*)$ 是*切点弦*（两条切线的切点连线）；$P$ 在椭圆内时 $(*)$ 与椭圆不相交（是"虚弦"）；
  - *定点的极线*：弦 $P Q$ 过定点 $M$ $<=>$ 交点 $A P inter B Q$ 落在 $M$ 的极线上。

  === （二）用点差法推出切线方程

  设 $A(x_1, y_1)$、$B(x_2, y_2)$ 都在椭圆上，$A != B$。两式相减（*点差*）：

  $ (x_1^2 - x_2^2)/a^2 + (y_1^2 - y_2^2)/b^2 = 0 quad => quad ((x_1 - x_2)(x_1 + x_2))/a^2 + ((y_1 - y_2)(y_1 + y_2))/b^2 = 0. $

  设 $A B$ 的中点为 $M(x_M, y_M)$，则 $x_1 + x_2 = 2 x_M$、$y_1 + y_2 = 2 y_M$，代入并整理得*中点弦公式*

  $ k_(A B) dot k_(O M) = -b^2/a^2 quad ("斜率的乘积为定值"). $ <eq:射影几何1>

  $($与 §三〈八〉的"斜率之比为定值"一样，这类"斜率乘积/之比为定值"的结论是圆锥曲线问题的常见形式。$)$

  现在让 $A$、$B$ 沿椭圆一起趋向椭圆上的点 $T(x_0, y_0)$：此时弦 $A B$ 变成*切线*，$M -> T$，于是 (1) 变为

  $ k_("切") dot k_(O T) = -b^2/a^2, quad "即" quad k_("切") = -(b^2 x_0)/(a^2 y_0). $

  过 $T(x_0, y_0)$ 且斜率如上的直线就是

  $ (x_0 x)/a^2 + (y_0 y)/b^2 = 1, $

  （把 $T$ 代入左边得 $x_0^2/a^2 + y_0^2/b^2 = 1$，故直线过 $T$；其斜率为 $-(b^2 x_0)/(a^2 y_0)$，与上式一致。）这就是椭圆在 $T$ 处的切线方程。

  === （三）由切线推出极线方程 $(*)$

  设 $P(x_0, y_0)$ 在椭圆*外*，过 $P$ 作椭圆的两条切线，切点分别为 $T_1(x_1, y_1)$、$T_2(x_2, y_2)$。

  - 由（二），在 $T_1$ 处的切线是 $x_1 x/a^2 + y_1 y/b^2 = 1$；因为它过 $P$，所以

    $ (x_1 x_0)/a^2 + (y_1 y_0)/b^2 = 1. $

  - 同理，在 $T_2$ 处的切线过 $P$ 给出 $x_2 x_0/a^2 + y_2 y_0/b^2 = 1$。

  这两个式子说明：*两个切点 $T_1$、$T_2$ 都满足方程* $x_0 x/a^2 + y_0 y/b^2 = 1$。两点确定一条直线，所以切点弦（即 $P$ 的极线）就是

  $ (x_0 x)/a^2 + (y_0 y)/b^2 = 1, $

  这正是 $(*)$。当 $P$ 在椭圆上时它就是切线；当 $P$ 在椭圆内时，同样的方程表示的直线与椭圆无公共点，称为"极线"。

  === （四）定比点差法：把"比例"与"点差"合起来用

  *方法*：处理"弦 $A B$ 过定点 $P$，且 $arrow(A P) = lambda arrow(P B)$"这类条件时，把两个工具合起来：

  $ cases(
    x_1 + lambda x_2 = (1 + lambda) x_0, quad y_1 + lambda y_2 = (1 + lambda) y_0, quad ("定比分点"),
    (x_1^2 - x_2^2)/a^2 + (y_1^2 - y_2^2)/b^2 = 0, quad ("点差"),
  ) $

  上述两式联立，即可消去 $A$、$B$ 中"多余"的一个，得到关于"定点 $P$ 与弦的另一端点"的关系式；当 $lambda = 1$（$P$ 为中点）时它就退化为上面的中点弦公式 (1)，当 $A$、$B$ 重合成切点时退化为切线方程。也就是说：*点差法是定比点差法在 $lambda = 1$ 及极限情形下的特例*，而由切点弦得出的极线方程 $(*)$ 与 $lambda$ 的取值无关——这正是极线的射影性质。

  *可手算的例子*（分数精确）：取椭圆 $x^2/9 + y^2/4 = 1$ 上的两点（用参数化 $x = 3(1-t^2)/(1+t^2)$、$y = 4t/(1+t^2)$）

  $ A(12/5, 6/5) quad (t = 1/3), quad B(9/5, -8/5) quad (t = -1/2), $

  则中点 $M(21/10, -1/5)$，且

  $ k_(A B) = 14/3, quad k_(O M) = -2/21, quad k_(A B) dot k_(O M) = -4/9 = -b^2/a^2, $

  与 (1) 完全一致。再取椭圆上的点 $T(24/17, 30/17)$，切线 $x_0 x/9 + y_0 y/4 = 1$ 与椭圆联立时判别式为 $0$（即只切于一点），切线方程也得到验证。

  == 六、配极原则与常用结论

  - 自极三角形；极线与极线的交点
  - 从极线角度理解"斜率之比为定值 $<=>$ 直线过定点"
  - 与韦达定理的互译：射影结论给出*答案*，联立给出*过程*

  == 七、从极点极线看"蝴蝶模型"

  - 模型陈述：椭圆左、右顶点 $A(-a, 0)$、$B(a, 0)$，过 $x$ 轴上定点 $M(m, 0)$ 的弦 $P Q$，则

    $ k_(A P)/k_(B Q) = (a - m)/(a + m) $

  - 证明梗概（用极线一步得到，或用 $x = t y + m$ + 韦达）
  - 逆用：由斜率比 $lambda$ 反解定点 $M(a(1-lambda)/(1+lambda), 0)$
  - 与 `圆锥曲线练习题.typ` 中"模型结论"框的呼应

  == 八、射影变换与仿射变换

  - 仿射变换：保平行、保中点、保面积比（不保垂直、不保长度）——坐标系中的 $x' = x$、$y' = (a/b) y$ 把椭圆化为圆
  - 射影变换：保交比、把圆化为椭圆（或反过来）
  - 常见应用：面积最大最小、斜率之比、定点定值

  == 九、在高考题中的用法与边界

  - *可作为*：选择题、填空题的秒杀；解答题的*思路探路*与*结果验证*
  - *不可直接引用*：极点极线、交比、射影变换等均为课外内容，解答题须以联立方程（韦达定理）、初等几何（中点、相似、勾股）写出过程
  - 建议写法：先用射影结论定出答案，再用初等方法补全过程（参见 `圆锥曲线练习题.typ` 的"答题规范提示"）

  == 十、待补充的例题

  - 例 1（待定）：
  - 例 2（待定）：
  - 例 3（待定）：
]
