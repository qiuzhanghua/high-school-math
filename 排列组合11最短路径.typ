#import "template.typ": *

#set document(title: [排列组合最短路径])

#template(heading2-align: left, page-footer: "第 1 页")[
  #set math.equation(numbering: "(1)")

  == 一、网格中的最短路径

  把街道看成方格网，只允许向右、向上走（或只允许向右、向下走），这样的路线叫*最短路径*（走回头路一定不是最短）。

  *① 从一个点到另一个点。* 从 $(0,0)$ 走到 $(m, n)$（向右 $m$ 步、向上 $n$ 步，共 $m + n$ 步），只要确定"哪几步向右"，路线就唯一确定了，所以最短路径数为

  $ C_(m+n)^m = C_(m+n)^n $

  *② 必须经过某个中间点。* 若路线必须经过点 $P$，就把整条路分成两段：先算起点到 $P$ 的走法，再算 $P$ 到终点的走法，两者相乘（分步乘法计数原理）。

  *③ 有障碍或禁行路段。* 先算出"没有障碍"时的总数，再减去"经过禁行处"的走法（往往用容斥）；也可以在每个交叉点处"从下、左两个方向相加"，用杨辉三角式地递推。

  画图时先把起点、终点、中间点的坐标标出来（以网格的"段"为单位），再数横向步数与纵向步数，是防止数错的关键。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 【例 1】先到 $F$ 会合，再到 $G$（选择题）

  *【例 1】* 如图，小明从街道的 $E$ 处出发，先到 $F$ 处与小红会合，再一起到位于 $G$ 处的老年公寓参加志愿者活动，则小明到老年公寓可以选择的最短路径一共有（#h(0.8em)）

  #grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    gutter: 4pt,
    [A. $24$], [B. $18$], [C. $12$], [D. $9$],
  )

  #align(center)[
    #block(width: 300pt, height: 200pt)[
      #place(dx: 30pt, dy: 155pt, line(length: 220pt, stroke: 0.8pt))
      #place(dx: 30pt, dy: 110pt, line(length: 220pt, stroke: 0.8pt))
      #place(dx: 30pt, dy: 65pt, line(length: 220pt, stroke: 0.8pt))
      #place(dx: 30pt, dy: 20pt, line(length: 220pt, stroke: 0.8pt))
      #place(dx: 30pt, dy: 20pt, line(length: 135pt, angle: 90deg, stroke: 0.8pt))
      #place(dx: 85pt, dy: 20pt, line(length: 135pt, angle: 90deg, stroke: 0.8pt))
      #place(dx: 140pt, dy: 20pt, line(length: 135pt, angle: 90deg, stroke: 0.8pt))
      #place(dx: 195pt, dy: 20pt, line(length: 135pt, angle: 90deg, stroke: 0.8pt))
      #place(dx: 250pt, dy: 20pt, line(length: 135pt, angle: 90deg, stroke: 0.8pt))
      // 三个点
      #place(dx: 30pt, dy: 155pt, circle(radius: 2.5pt, fill: rgb("#c7362e")))
      #place(dx: 140pt, dy: 65pt, circle(radius: 2.5pt, fill: rgb("#c7362e")))
      #place(dx: 250pt, dy: 20pt, circle(radius: 2.5pt, fill: rgb("#c7362e")))
      // 标注
      #place(dx: 16pt, dy: 160pt)[$E$]
      #place(dx: 126pt, dy: 70pt)[$F$]
      #place(dx: 256pt, dy: 10pt)[$G$]
    ]
  ]

  === 解析

  以 $E$ 为原点、以"网格的段"为单位建立坐标（向右为横轴、向上为纵轴），从图中数出

  $ E = (0, 0), quad F = (2, 2), quad G = (4, 3) $

  *① 从 $E$ 到 $F$。* 要向右 $2$ 段、向上 $2$ 段，共 $4$ 步；在 $4$ 步里选 $2$ 步向右即可确定整条路：

  $ C_4^2 = 6 $

  *② 从 $F$ 到 $G$。* 要向右 $2$ 段、向上 $1$ 段，共 $3$ 步；选 $1$ 步向上：

  $ C_3^1 = 3 $

  *③ 分步相乘。* 小明一定要先经过 $F$ 再前往 $G$，由分步乘法计数原理，最短路径共有

  $ C_4^2 times C_3^1 = 6 times 3 = 18 $

  条。

  故选 *#text(fill: rgb("#c7362e"))[B]*。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 【例 2】长方体框架：三维最短路径与"不连续向上"

  *【例 2】* 建筑工地搭建脚手架的局部类似于一个 $2 times 2 times 3$ 的长方体框架，一个建筑工人欲从 $A$ 处攀爬到 $B$ 处，则最近路线有 #underline[#h(2em)] 种，其中不连续向上攀爬的方法一共有 #underline[#h(2em)] 种。

  #align(center)[
    #block(width: 220pt, height: 175pt)[
      #let V(i, j, k) = (30pt + 28pt * i + 15pt * j, 150pt - 9pt * j - 17pt * k)
      // 实线：可见的 9 条棱
      #let solid = (
        (V(0,0,0), V(2,0,0)), (V(0,0,3), V(2,0,3)), (V(0,0,0), V(0,0,3)), (V(2,0,0), V(2,0,3)),
        (V(0,2,3), V(2,2,3)), (V(0,2,0), V(0,2,3)), (V(2,2,0), V(2,2,3)),
        (V(2,0,0), V(2,2,0)), (V(0,0,3), V(0,2,3)), (V(2,0,3), V(2,2,3)),
      )
      #for (p, q) in solid {
        place(dx: p.at(0), dy: p.at(1), line(end: (q.at(0) - p.at(0), q.at(1) - p.at(1)), stroke: 0.8pt))
      }
      // 虚线：被遮住的 3 条棱
      #let dashed = ((V(0,2,0), V(2,2,0)), (V(0,2,0), V(0,0,0)))
      #for (p, q) in dashed {
        place(dx: p.at(0), dy: p.at(1), line(end: (q.at(0) - p.at(0), q.at(1) - p.at(1)), stroke: (paint: black, thickness: 0.7pt, dash: "dashed")))
      }
      // 棱长标注
      #place(dx: 58pt, dy: 152pt)[$2$]
      #place(dx: 36pt, dy: 133pt)[$2$]
      #place(dx: 12pt, dy: 120pt)[$3$]
      // 顶点
      #place(dx: 26pt, dy: 146pt, circle(radius: 2.2pt, fill: rgb("#c7362e")))
      #place(dx: 112pt, dy: 77pt, circle(radius: 2.2pt, fill: rgb("#c7362e")))
      #place(dx: 8pt, dy: 153pt)[$A$]
      #place(dx: 120pt, dy: 74pt)[$B$]
    ]
  ]

  === 解析

  长方体框架的三条棱长分别是 $2, 2, 3$，$A$、$B$ 是相对的两个顶点。沿棱走"最近路线"，就是每个方向都只朝 $B$ 靠近，一共要走

  $ 2 + 2 + 3 = 7 $

  步：横向 $2$ 步、纵深 $2$ 步、向上 $3$ 步。

  *① 最近路线的总数。* 把 $7$ 步排成一列，只要确定"哪几步向上、哪几步走横向、哪几步走纵深"就决定了整条路，所以这是含重复元素的排列：

  $ (7!)/(3! 2! 2!) = 5040/24 = 210 $

  *② 不连续向上（任意两步"向上"都不相邻）。* 先排"不向上"的 $4$ 步（横向 $2$ 步、纵深 $2$ 步）：

  $ (4!)/(2! 2!) = 6 $

  这 $4$ 步排好后，前后与两两之间共 $4 + 1 = 5$ 个空；把 $3$ 步"向上"插进其中 $3$ 个空（每个空至多放 $1$ 步，就保证了不连续向上）：

  $ C_5^3 = 10 $

  由分步乘法计数原理，"不连续向上"的走法共有

  $ 6 times 10 = 60 $

  于是两空依次填 $210$、$60$。

  #line(length: 100%, stroke: 0.5pt + gray)

  === 方法总结

  - *把"走路"翻译成"选步"*：从 $(0,0)$ 到 $(m,n)$ 的最短路径数就是"在 $m + n$ 步中选 $m$ 步向右"，即 $C_(m+n)^m$。
  - *经过中间点就分段相乘*：起点 $->$ 中间点 $->$ 终点，两段的走法数相乘（例 1 中 $6 times 3 = 18$）。
  - *先把坐标数清楚*：以"段"为单位标出各点坐标（例 1 中 $E(0,0)$、$F(2,2)$、$G(4,3)$），横向差、纵向差一目了然，不会数错。
  - *有禁行路段时先算总数再扣*：用容斥减去"经过禁行处"的走法；也可以在图上逐点递推（每个交叉点的走法数等于它的左边与下边两点之和）。
  - *"三维"长方体框架同理*（例 2）：三条棱上的步数分别为 $2, 2, 3$，最近路线就是"这 $7$ 步的排列"，即 $7!/(3! 2! 2!) = 210$；若再限制"不连续向上"，就先排"不向上"的 $4$ 步（$4!/(2! 2!) = 6$），再把 $3$ 步"向上"插进 $5$ 个空（$C_5^3 = 10$），相乘得 $60$。
  - *注意"最短"意味着不走回头路*：只能向右、向上（或只向下、向右），一旦允许来回走，路径数就不再是组合数了。
]
