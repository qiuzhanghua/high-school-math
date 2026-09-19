#import "template.typ": *

#set document(title: [空间直角坐标系])

#template(heading2-align: left, page-footer: "第 1 页")[
  #set math.equation(numbering: "(1)")

  == 一、空间向量与坐标运算

  在空间直角坐标系中，设

  $ A(x_1, y_1, z_1), quad B(x_2, y_2, z_2), $

  则

  $
    arrow(A B) = (x_2 - x_1, y_2 - y_1, z_2 - z_1), quad |arrow(A B)| = sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2 + (z_2 - z_1)^2).
  $

  *数量积与夹角*：设 $bold(u) = (a_1, b_1, c_1)$、$bold(v) = (a_2, b_2, c_2)$，则

  $
    bold(u) dot bold(v) = a_1 a_2 + b_1 b_2 + c_1 c_2, quad cos angle(bold(u), bold(v)) = (bold(u) dot bold(v))/(|bold(u)| |bold(v)|).
  $

  *两条常用性质*：

  - $bold(u) perp bold(v) <=> bold(u) dot bold(v) = 0$；
  - $bold(u) text(∥) bold(v) <=> bold(u) = lambda bold(v)$（$lambda in RR$）。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 二、例题

  === 【例 1】已知三点坐标，求两向量夹角的余弦值

  *【例 1】* 已知 $A(0, 1, 2)$、$B(2, 3, 1)$、$C(1, 5, 4)$，求 $arrow(A B)$ 与 $arrow(A C)$ 夹角（记为 $theta$）的余弦值。

  === 解析

  *① 写出两个向量（末减初）。*

  $ arrow(A B) = (2 - 0, 3 - 1, 1 - 2) = (2, 2, -1), $

  $ arrow(A C) = (1 - 0, 5 - 1, 4 - 2) = (1, 4, 2). $

  *② 算数量积与两个模。*

  $ arrow(A B) dot arrow(A C) = 2 times 1 + 2 times 4 + (-1) times 2 = 2 + 8 - 2 = 8, $

  $ |arrow(A B)| = sqrt(2^2 + 2^2 + (-1)^2) = sqrt(9) = 3, quad |arrow(A C)| = sqrt(1^2 + 4^2 + 2^2) = sqrt(21). $

  *③ 代入夹角公式。*

  $ cos theta = (arrow(A B) dot arrow(A C))/(|arrow(A B)| |arrow(A C)|) = 8/(3 sqrt(21)) = (8 sqrt(21))/63. $

  所以 $arrow(A B)$ 与 $arrow(A C)$ 夹角的余弦值为

  $ (8 sqrt(21))/63 quad (approx 0.582). $

  === 要点

  - *第一步永远是"末减初"*：$arrow(A B) = B - A$；写错方向会让夹角变成补角（余弦取相反数）。
  - *夹角公式的三个量*：数量积、两个模，缺一不可；先算数量积再看能不能约分，往往更省力。
  - *注意区分"夹角"与"方向"*：向量夹角的余弦值可以是负数（本题为正，说明夹角是锐角），而两条*直线*的夹角余弦值取绝对值。
  - *结果要化简并检验*：$8/(3sqrt(21))$ 分母有理化得 $(8 sqrt(21))/63$；用计算器估计约 $0.582 in [0,1]$，合理。
  #line(length: 100%, stroke: 0.5pt + gray)

  === 【例 2】求平面 $A B C$ 的一个法向量

  *【例 2】* 已知 $A(0, 0, 0)$、$B(0, 1, -1)$、$C(1, 2, 1)$，求平面 $A B C$ 的一个法向量。

  *方法（待定系数法）*：设平面 $A B C$ 的法向量为 $bold(n) = (x, y, z)$，在平面内找两个*不共线*的向量，令 $bold(n)$ 与它们都垂直，解方程组即可（解不唯一，取一组方便的值）。

  === 解析

  *① 在平面内取两个不共线的向量。*

  $ arrow(A B) = (0, 1, -1), quad arrow(A C) = (1, 2, 1). $

  （$arrow(A B)$ 与 $arrow(A C)$ 显然不共线，它们确定平面 $A B C$。）

  *② 设 $bold(n) = (x, y, z)$，列方程组。*

  $
    cases(
      bold(n) dot arrow(A B) = 0,
      bold(n) dot arrow(A C) = 0,
    ) quad => quad cases(
      y - z = 0,
      x + 2y + z = 0.
    )
  $

  *③ 解方程组并取一组值。* 由第一式得 $y = z$，代入第二式：

  $ x + 2y + y = 0 quad => quad x = -3y. $

  取 $y = 1$，则 $z = 1$、$x = -3$，于是平面 $A B C$ 的一个法向量为

  $ bold(n) = (-3, 1, 1). $

  *④ 检验*：

  $ bold(n) dot arrow(A B) = 0 + 1 - 1 = 0, quad bold(n) dot arrow(A C) = -3 + 2 + 1 = 0, $

  说明 $bold(n)$ 确实与平面内两个不共线向量都垂直，即为平面的法向量。

  （法向量不唯一：任何 $k bold(n) = (-3k, k, k)$（$k != 0$）都是平面 $A B C$ 的法向量。）

  *解法二：叉乘法（向量积）求法向量。*

  当平面内两个向量已经写成坐标时，用*叉乘*可以一步得到法向量，口诀是

  #align(center)[*"坐标横写抄两遍，掐头去尾取中间，交叉相乘再相减"*]

  把 $arrow(A B) = (0, 1, -1)$、$arrow(A C) = (1, 2, 1)$ 各横着写两遍：

  #align(center)[
    #table(
      columns: 6,
      stroke: none,
      inset: (x: 7pt, y: 3pt),
      $0$, $1$, $-1$, $0$, $1$, $-1$,
      $1$, $2$, $1$, $1$, $2$, $1$,
    )
  ]

  *掐头去尾*（去掉最左、最右两列），剩下中间三列，每一列"交叉相乘再相减"（上乘下、下乘上，大减小）：

  - 第 1 组（上排 $1$、$-1$，下排 $2$、$1$）：$1 times 1 - (-1) times 2 = 1 + 2 = 3$；
  - 第 2 组：$(-1) times 1 - 0 times 1 = -1$；
  - 第 3 组：$0 times 2 - 1 times 1 = -1$。

  于是

  $ arrow(A B) times arrow(A C) = (3, -1, -1). $

  它不是别的，正是平面 $A B C$ 的一个法向量（叉乘的结果与两个向量都垂直）。与解法一得到的 $(-3, 1, 1)$ 只差一个负号，两者表示同一个方向。

  *两种解法怎么选*：待定系数法（解法一）思路直白、不依赖公式，适合考试书写；叉乘法熟记口诀后算得更快，适合口算验算。用叉乘时注意"上乘下减下乘上"的顺序不能反，否则整个法向量会反号（不影响后续求角与距离，因为那里都取绝对值）。

  === 要点

  - *求法向量的标准三步*：① 在平面内取两个不共线向量（常用"末减初"写坐标）；② 设 $bold(n) = (x, y, z)$ 并令它与这两个向量都垂直；③ 解方程组、取一组方便的值。
  - *方程个数少于未知数个数，解不唯一*：三个未知数、两个方程，所以有一族解；取 $y = 1$ 之类是最省事的赋值方式（避免取到全为 $0$）。
  - *别忘检验*：代回两个数量积都应为 $0$——这是最省时间的自检。
  - *选向量要"不共线"*：若误取两个共线向量，方程组会退化成同一个方程，解不出唯一的法向方向。
  - *用法向量可以做什么*：证线面垂直（$arrow(A B) = lambda bold(n)$）、求线面角（$sin theta = (|bold(u) dot bold(n)|)/(|bold(u)| |bold(n)|)$）、求二面角（两个半平面的法向量夹角）、求点到平面的距离（$d = (|arrow(A P) dot bold(n)|)/(|bold(n)|)$）。
  #line(length: 100%, stroke: 0.5pt + gray)

  == 三、用向量求线面角

  设直线 $l$ 的方向向量为 $bold(u)$，平面 $alpha$ 的法向量为 $bold(n)$，直线 $l$ 与平面 $alpha$ 所成的角为 $theta$，则

  $ sin theta = |cos angle(bold(u), bold(n))| = (|bold(u) dot bold(n)|)/(|bold(u)| |bold(n)|). $

  *注意*：向量 $bold(u)$ 与 $bold(n)$ 的夹角可能是钝角，而线面角 $theta in [0degree, 90degree]$，所以*要加绝对值*（或先取补角再算）。

  == 四、典型例题（坐标法／解析几何法）

  === 【例 3】证明 $P O perp$ 底面，并求直线 $C P$ 与平面 $B D F$ 所成角

  *【例 3】* 如图，在四棱锥 $P - A B C D$ 中，底面四边形 $A B C D$ 是菱形，$A C inter B D = O$，$triangle P A C$ 是边长为 $2$ 的等边三角形，$P B = P D = sqrt(6)$，$A P = 4 A F$。

  (1) 求证：$P O perp$ 底面 $A B C D$；

  (2) 求直线 $C P$ 与平面 $B D F$ 所成角的大小。

  === 解析

  *(1) 证明。*

  - 因为 $A B C D$ 是菱形，所以 $A C perp B D$，且 $O$ 是 $A C$、$B D$ 的中点；
  - $triangle P A C$ 是边长为 $2$ 的等边三角形，$O$ 是 $A C$ 中点，由"三线合一"得 $P O perp A C$，且 $P O = sqrt(3)$；
  - $P B = P D = sqrt(6)$，$O$ 是 $B D$ 中点，由等腰三角形"三线合一"得 $P O perp B D$；
  - $A C$ 与 $B D$ 是底面内两条相交直线，所以

  $ P O perp "底面" A B C D. quad square $

  *(2) 建系。* 由 (1) 知 $P O perp$ 底面，又 $A C perp B D$，于是可以 $O$ 为原点，$O A$、$O B$、$O P$ 所在直线分别为 $x$、$y$、$z$ 轴建立空间直角坐标系。

  由 $A C = 2$ 得 $O A = O C = 1$；由 $P O = sqrt(3)$、$P B = sqrt(6)$ 得

  $ O B^2 = P B^2 - P O^2 = 6 - 3 = 3 quad => quad O B = O D = sqrt(3). $

  所以各点坐标为

  $ A(1, 0, 0), quad C(-1, 0, 0), quad B(0, sqrt(3), 0), quad D(0, -sqrt(3), 0), quad P(0, 0, sqrt(3)). $

  由 $A P = 4 A F$ 得 $arrow(A F) = 1/4 arrow(A P)$，于是

  $ F = A + 1/4 (P - A) = (1, 0, 0) + 1/4 (-1, 0, sqrt(3)) = (3/4, 0, sqrt(3)/4). $

  *(3) 求平面 $B D F$ 的法向量。* 取平面内两个不共线向量

  $ arrow(B D) = (0, -2 sqrt(3), 0), quad arrow(B F) = (3/4, -sqrt(3), sqrt(3)/4). $

  设 $bold(n) = (x, y, z)$，由 $bold(n) dot arrow(B D) = 0$ 得 $y = 0$；再由 $bold(n) dot arrow(B F) = 0$ 得

  $ 3/4 x + sqrt(3)/4 z = 0 quad => quad z = -sqrt(3) x. $

  取 $x = 1$，得 $bold(n) = (1, 0, -sqrt(3))$。

  *(4) 用夹角公式求线面角。* 直线 $C P$ 的方向向量

  $ arrow(C P) = (1, 0, sqrt(3)), quad |arrow(C P)| = sqrt(1 + 3) = 2, quad |bold(n)| = sqrt(1 + 3) = 2. $

  设直线 $C P$ 与平面 $B D F$ 所成的角为 $theta$，则

  $
    sin theta = (|arrow(C P) dot bold(n)|)/(|arrow(C P)| |bold(n)|) = (|1 times 1 + 0 + sqrt(3) times (-sqrt(3))|)/(2 times 2) = (|1 - 3|)/4 = 1/2.
  $

  因为 $theta in [0degree, 90degree]$，所以

  $ theta = 30degree. $

  即直线 $C P$ 与平面 $B D F$ 所成角为 $30degree$。

  === 要点

  - *先证"线面垂直"再建系*：本题 (1) 的结论 $P O perp$ 底面正是建系的前提——有了它才能让 $z$ 轴与 $P O$ 重合，从而写出 $P(0, 0, sqrt(3))$ 这样干净的坐标。
  - *用"三线合一"造垂直的两步*：等边三角形给 $P O perp A C$，等腰三角形给 $P O perp B D$，两条相交直线凑齐，线面垂直得证。
  - *"$A P = 4 A F$"化成向量式*：$arrow(A F) = 1/4 arrow(A P)$，再 $F = A + 1/4 (P - A)$ 求坐标，比按比例算长度稳得多。
  - *线面角一定加绝对值*：$sin theta = (|bold(u) dot bold(n)|)/(|bold(u)| |bold(n)|)$；本题数量积算得 $-2$，取绝对值才得到 $1/2$。
  - *结果要回到"角"*：由 $sin theta = 1/2$ 且 $theta$ 为锐角（或直角）得 $theta = 30degree$，不要漏掉这一步。
  #line(length: 100%, stroke: 0.5pt + gray)

  == 五、用向量求二面角

  设二面角 $alpha - l - beta$ 的两个半平面 $alpha$、$beta$ 的法向量分别为 $bold(n)_1$、$bold(n)_2$，则

  $ cos angle(bold(n)_1, bold(n)_2) = (bold(n)_1 dot bold(n)_2)/(|bold(n)_1| |bold(n)_2|). $

  *用法*：先算这个值，再结合图形判断二面角是锐角还是钝角：

  - 若从图上看出二面角是*锐角*，则 $cos theta = (|bold(n)_1 dot bold(n)_2|)/(|bold(n)_1| |bold(n)_2|)$；
  - 若看出是*钝角*，则取相反数；
  - 两个法向量的方向都可以自由选取（取反号不影响结果），所以"算出的数量积是负的"并不代表二面角一定是钝角，*必须结合图形判断*。

  == 六、典型例题（二面角）

  === 【例 4】圆锥中的线面垂直与二面角

  *【例 4】* 如图，$D$ 为圆锥的顶点，$O$ 是圆锥底面的圆心，$A E$ 为底面直径，$A E = A D$。$triangle A B C$ 是底面的内接正三角形，$P$ 为 $D O$ 上一点，$P O = sqrt(6)/6 D O$。

  (1) 证明：$P A perp$ 平面 $P B C$；

  (2) 求二面角 $B - P C - E$ 的余弦值。

  #align(center)[
    #block(breakable: false, width: 265pt, height: 300pt)[
      // 圆锥：顶点 D、底面椭圆（中心 O）、两条最外侧母线
      #place(dx: 40pt, dy: 188pt, ellipse(width: 200pt, height: 54pt, stroke: 0.8pt))
      #place(dx: 140pt, dy: 45pt, line(end: (-100pt, 170pt), stroke: 0.8pt))     // D→A
      #place(dx: 140pt, dy: 45pt, line(end: (100pt, 170pt), stroke: 0.8pt))      // D→E
      // 轴 DO（虚线）与母线 DA、DE
      #place(dx: 140pt, dy: 45pt, line(end: (0pt, 170pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))
      // 底面内接正三角形 ABC（虚线）与直径 AE
      #place(dx: 40pt, dy: 215pt, line(end: (150pt, 23pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // A→B
      #place(dx: 190pt, dy: 238pt, line(end: (0pt, -46pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // B→C
      #place(dx: 190pt, dy: 192pt, line(end: (-150pt, 23pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // C→A
      // P 到 A、B、C、E 的连线（虚线）
      #place(dx: 140pt, dy: 145.6pt, line(end: (-100pt, 69.4pt), stroke: (
        paint: gray,
        thickness: 0.5pt,
        dash: "dashed",
      )))
      #place(dx: 140pt, dy: 145.6pt, line(end: (50pt, 92.4pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))
      #place(dx: 140pt, dy: 145.6pt, line(end: (50pt, 46.4pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))
      #place(dx: 140pt, dy: 145.6pt, line(end: (100pt, 69.4pt), stroke: (
        paint: gray,
        thickness: 0.5pt,
        dash: "dashed",
      )))
      // 点
      #place(dx: 138pt, dy: 43pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 138pt, dy: 143.6pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 138pt, dy: 213pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 38pt, dy: 213pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 188pt, dy: 236pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 188pt, dy: 190pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 238pt, dy: 213pt, circle(radius: 1.8pt, fill: black))
      // 标签
      #place(dx: 144pt, dy: 30pt)[$D$]
      #place(dx: 144pt, dy: 138pt)[$P$]
      #place(dx: 146pt, dy: 216pt)[$O$]
      #place(dx: 20pt, dy: 210pt)[$A$]
      #place(dx: 186pt, dy: 244pt)[$B$]
      #place(dx: 194pt, dy: 182pt)[$C$]
      #place(dx: 244pt, dy: 206pt)[$E$]
    ]
  ]

  图中 $D$ 为圆锥顶点、$O$ 为底面圆心，$A E$ 是底面直径（水平），$triangle A B C$ 是底面内接正三角形；
  $P$ 在 $D O$ 上（$P O = sqrt(6)/6 D O$，故 $P$ 靠近底面），$P$ 与 $A$、$B$、$C$、$E$ 的连线均画虚线。

  === 解析

  *(1) 证明。*

  - 因为 $A E$ 是底面直径、$triangle A B C$ 是内接正三角形，所以 $A E$ 垂直平分 $B C$（$E$ 是弧 $B C$ 的中点），即 $B C perp A E$；
  - 又 $D O perp$ 底面，故 $D O perp B C$。$A E$ 与 $D O$ 交于点 $O$，所以 $B C perp$ 平面 $A D O$；
  - 因为 $P A subset$ 平面 $A D O$，所以 $B C perp P A$。

  再证 $P A perp P B$。设底面半径为 $r$：由 $A E = A D = 2r$ 得 $D O = sqrt(A D^2 - A O^2) = sqrt(4 r^2 - r^2) = sqrt(3) r$，于是

  $ P O = sqrt(6)/6 dot sqrt(3) r = sqrt(2)/2 r. $

  所以

  $ P A^2 = A O^2 + P O^2 = r^2 + r^2/2 = 3/2 r^2, quad P B^2 = O B^2 + P O^2 = r^2 + r^2/2 = 3/2 r^2, $

  而 $A B = sqrt(3) r$（正三角形边长），故 $A B^2 = 3 r^2 = P A^2 + P B^2$，由勾股定理的逆定理得

  $ P A perp P B. $

  同理 $P A perp P C$。因为 $P B$、$P C$ 是平面 $P B C$ 内两条相交直线，所以

  $ P A perp "平面" P B C. quad square $

  *(2) 建系。* 以 $O$ 为原点，底面内与 $A E$ 垂直的方向为 $x$ 轴方向、$O E$ 方向为 $y$ 轴、$O D$ 方向为 $z$ 轴（$O E perp B C$，故 $O E$ 与 $A E$ 垂直，可以这样取轴）。取 $r = 1$，则

  $ D(0, 0, sqrt(3)), quad P(0, 0, sqrt(2)/2), quad E(1, 0, 0), $

  $ A(-1, 0, 0), quad B(1/2, sqrt(3)/2, 0), quad C(1/2, -sqrt(3)/2, 0). $

  *求两个半平面的法向量。*

  - 平面 $P B C$：$arrow(P B) = (1/2, sqrt(3)/2, -sqrt(2)/2)$，$arrow(P C) = (1/2, -sqrt(3)/2, -sqrt(2)/2)$。取

  $ bold(n)_1 = (sqrt(2), 0, 1) quad ("检验：" bold(n)_1 dot arrow(P B) = sqrt(2)/2 - sqrt(2)/2 = 0). $

  - 平面 $P C E$：$arrow(P C) = (1/2, -sqrt(3)/2, -sqrt(2)/2)$，$arrow(P E) = (1, 0, -sqrt(2)/2)$。由 $bold(n)_2 dot arrow(P C) = 0$、$bold(n)_2 dot arrow(P E) = 0$ 解得（取整）

  $ bold(n)_2 = (sqrt(6), -sqrt(2), 2 sqrt(3)). $

  *求二面角。*

  $ bold(n)_1 dot bold(n)_2 = sqrt(2) dot sqrt(6) + 1 dot 2 sqrt(3) = 2 sqrt(3) + 2 sqrt(3) = 4 sqrt(3), $

  $ |bold(n)_1| = sqrt(2 + 1) = sqrt(3), quad |bold(n)_2| = sqrt(6 + 2 + 12) = sqrt(20) = 2 sqrt(5). $

  所以

  $ cos angle(bold(n)_1, bold(n)_2) = (4 sqrt(3))/(sqrt(3) dot 2 sqrt(5)) = 2/(sqrt(5)) = (2 sqrt(5))/5. $

  由图形知二面角 $B - P C - E$ 是锐角，故

  $ cos angle(B - P C - E) = (2 sqrt(5))/5. $

  === 要点

  - *第一问的"两段式"*：先用"$B C perp A E$ 且 $B C perp D O$"得 $B C perp P A$，再用*长度关系 + 勾股逆定理*得 $P A perp P B$、$P A perp P C$，凑齐两条相交直线。
  - *把比例条件翻译成坐标*：$A E = A D = 2r$ 给 $D O = sqrt(3) r$，进而 $P O = sqrt(2)/2 r$；取 $r = 1$ 不影响角度结果（角度与整体放缩无关），算起来最省事。
  - *法向量可以取整、取反*：$bold(n)_1$、$bold(n)_2$ 只要方向对即可；本题把 $(sqrt(6)/4, -sqrt(2)/4, sqrt(3)/2)$ 放大 $4$ 倍写成 $(sqrt(6), -sqrt(2), 2 sqrt(3))$。
  - *二面角要结合图形定正负*：先算 $cos angle(bold(n)_1, bold(n)_2)$，再由"从图上看出是锐角/钝角"决定最后取正还是取负。
  - *建系要先有"互相垂直的三条线"*：本题用 $O D perp$ 底面、$O E perp B C$ 这两组垂直关系确定 $z$ 轴与 $x$ 轴方向。
  #line(length: 100%, stroke: 0.5pt + gray)

  == 七、动点问题（存在性）

  === 【例 5】棱上是否存在点 $M$，使二面角为 $30degree$

  *【例 5】* 在三棱锥 $P - A B C$ 中，$A B = B C = 2 sqrt(2)$，$P A = P B = P C = A C = 4$，$O$ 为 $A C$ 的中点。

  (1) 证明：$P O perp$ 平面 $A B C$；

  (2) 是否存在一点 $M$ 在棱 $B C$ 上，使得二面角 $M - P A - C$ 为 $30degree$？若存在，此时求 $P C$ 与平面 $P A M$ 所成角的正弦值。

  #align(center)[
    #block(breakable: false, width: 255pt, height: 280pt)[
      // 底面三角形 ABC 与中线 BO
      #place(dx: 55pt, dy: 215pt, line(end: (40pt, 40pt), stroke: 0.8pt))        // A→B
      #place(dx: 95pt, dy: 255pt, line(end: (120pt, -40pt), stroke: 0.8pt))      // B→C
      #place(dx: 55pt, dy: 215pt, line(end: (160pt, 0pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // A→C（被挡）
      #place(dx: 135pt, dy: 215pt, line(end: (-40pt, 40pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))) // O→B
      // 侧棱与高 PO
      #place(dx: 135pt, dy: 75pt, line(end: (-80pt, 140pt), stroke: 0.8pt))      // P→A
      #place(dx: 135pt, dy: 75pt, line(end: (-40pt, 180pt), stroke: 0.8pt))      // P→B
      #place(dx: 135pt, dy: 75pt, line(end: (80pt, 140pt), stroke: 0.8pt))       // P→C
      #place(dx: 135pt, dy: 75pt, line(end: (0pt, 140pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // P→O（高）
      // M 在 BC 上（BM : MC = 1 : 2）与虚线 PM
      #place(dx: 135pt, dy: 241.7pt, circle(radius: 1.8pt, fill: rgb("#c7362e")))
      #place(dx: 135pt, dy: 75pt, line(end: (0pt, 166.7pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // P→M
      // 点
      #place(dx: 133pt, dy: 73pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 53pt, dy: 213pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 93pt, dy: 253pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 213pt, dy: 213pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 133pt, dy: 213pt, circle(radius: 1.8pt, fill: black))
      // 标签
      #place(dx: 139pt, dy: 62pt)[$P$]
      #place(dx: 36pt, dy: 212pt)[$A$]
      #place(dx: 80pt, dy: 260pt)[$B$]
      #place(dx: 218pt, dy: 210pt)[$C$]
      #place(dx: 138pt, dy: 205pt)[$O$]
      #place(dx: 139pt, dy: 244pt)[#text(fill: rgb("#c7362e"))[$M$]]
    ]
  ]

  图中 $O$ 为 $A C$ 中点，$P O perp$ 底面（虚线为高），$M$ 在棱 $B C$ 上（红点，满足 $B M : M C = 1 : 2$），虚线 $P M$。
  底面 $A C$、$O B$ 被挡住，画虚线。

  === 解析

  *(1) 证明。*

  - $triangle P A C$ 中 $P A = P C = A C = 4$，故它是等边三角形；$O$ 为 $A C$ 中点，由"三线合一"得 $P O perp A C$，且 $P O = sqrt(3)/2 times 4 = 2 sqrt(3)$；
  - $triangle A B C$ 中 $A B = B C = 2 sqrt(2)$、$A O = O C = 2$，故 $B O perp A C$，且 $B O = sqrt(A B^2 - A O^2) = sqrt(8 - 4) = 2$；
  - 又 $P B = 4$，于是 $P O^2 + B O^2 = 12 + 4 = 16 = P B^2$，由勾股定理的逆定理得 $P O perp B O$；
  - $A C$ 与 $B O$ 是底面内两条相交直线，所以

  $ P O perp "平面" A B C. quad square $

  *(2) 建系。* 由 (1) 可 $O$ 为原点，$O B$、$O C$、$O P$ 所在直线分别为 $x$、$y$、$z$ 轴。于是

  $ A(0, -2, 0), quad C(0, 2, 0), quad B(2, 0, 0), quad P(0, 0, 2 sqrt(3)). $

  设 $M$ 在棱 $B C$ 上，且 $arrow(B M) = t arrow(B C)$（$0 <= t <= 1$）。由 $arrow(B C) = (-2, 2, 0)$ 得

  $ M(2 - 2t, 2t, 0). $

  *求两个法向量。* 平面 $P A C$ 就是 $y O z$ 平面，取

  $ bold(n)_1 = (1, 0, 0). $

  平面 $P A M$：$arrow(A P) = (0, 2, 2 sqrt(3))$，$arrow(A M) = (2 - 2t, 2t + 2, 0)$，令 $s = 1 - t$，则

  $ bold(n)_2 = (-sqrt(3)(1 + t), sqrt(3)(1 - t), -(1 - t)) = (-sqrt(3)(2 - s), sqrt(3) s, -s). $

  *由二面角为 $30degree$ 求 $t$。*

  $
    cos angle(bold(n)_1, bold(n)_2) = (sqrt(3)(2 - s))/sqrt(3(2 - s)^2 + 3 s^2 + s^2) = (sqrt(3)(2 - s))/sqrt(12 - 12 s + 7 s^2).
  $

  令它等于 $cos 30degree = sqrt(3)/2$，两边平方整理得

  $ 4(2 - s)^2 = 3(12 - 12 s + 7 s^2) quad => quad 3 s^2 + 4 s - 4 = 0, $

  解得 $s = 2/3$（另一根为负，舍去），即 $t = 1/3$。因为 $t = 1/3 in [0, 1]$，所以*存在*这样的点 $M$，且

  $ M(4/3, 2/3, 0) quad ("即" B M : M C = 1 : 2). $

  *求 $P C$ 与平面 $P A M$ 所成角。* 此时 $s = 2/3$，可取

  $ bold(n)_2 = (-4 sqrt(3), 2 sqrt(3), -2). $

  又 $arrow(P C) = (0, 2, -2 sqrt(3))$，于是

  $ |bold(n)_2| = sqrt(48 + 12 + 4) = 8, quad |arrow(P C)| = sqrt(0 + 4 + 12) = 4, $

  $ |bold(n)_2 dot arrow(P C)| = |0 + 4 sqrt(3) + 4 sqrt(3)| = 8 sqrt(3). $

  设 $P C$ 与平面 $P A M$ 所成的角为 $theta$，则

  $ sin theta = (|bold(n)_2 dot arrow(P C)|)/(|bold(n)_2| |arrow(P C)|) = (8 sqrt(3))/(8 times 4) = sqrt(3)/4. $

  所以存在满足条件的点 $M$（$B M : M C = 1 : 2$），此时 $P C$ 与平面 $P A M$ 所成角的正弦值为 $sqrt(3)/4$。

  === 要点

  - *存在性问题的一般流程*：先把动点*参数化*（本题设 $arrow(B M) = t arrow(B C)$，$t in [0, 1]$），再把题设条件（二面角 $30degree$）写成含 $t$ 的方程，解出 $t$ 后*检查是否落在 $[0, 1]$* 内——在则"存在"，不在则"不存在"。
  - *找"天然的"坐标系*：$P O perp$ 底面、$O B perp A C$ 让三条轴自然取成 $O B$、$O C$、$O P$，$A$、$C$ 的坐标也只用到一个 $2$。
  - *平面 $P A C$ 的法向量很省事*：它恰是 $y O z$ 平面，法向量直接写 $(1, 0, 0)$，不必再解方程组。
  - *解方程时的化简技巧*：令 $s = 1 - t$ 可以把 $1 + t$、$1 - t$ 统一成一个字母，二次方程 $3 s^2 + 4 s - 4 = 0$ 一眼能解。
  - *最后一步是线面角*：$sin theta = (|bold(n) dot arrow(P C)|)/(|bold(n)| |arrow(P C)|)$，别和二面角的余弦公式混用。
  #line(length: 100%, stroke: 0.5pt + gray)

  == 八、圆与坐标（直角与二面角的结合）

  === 【例 6】先证线面平行，再由二面角求长度

  *【例 6】* 如图，四棱锥 $P - A B C D$ 中，$P A perp$ 底面 $A B C D$，$P A = A C = 2$，$B C = 1$，$A B = sqrt(3)$。

  (1) 若 $A D perp P B$，证明：$A D text(∥)$ 平面 $P B C$；

  (2) 若 $A D perp D C$，且二面角 $A - C P - D$ 的正弦值为 $sqrt(42)/7$，求 $A D$。

  #align(center)[
    #block(breakable: false, width: 250pt, height: 270pt)[
      // 底面四边形 ABCD（A 在左，B 在前下，C 在右，D 在中）
      #place(dx: 40pt, dy: 200pt, line(end: (40pt, 55pt), stroke: 0.8pt))        // A→B
      #place(dx: 78pt, dy: 253pt, line(end: (120pt, -25pt), stroke: 0.8pt))      // B→C
      #place(dx: 93pt, dy: 173pt, line(end: (105pt, 55pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // D→C
      #place(dx: 93pt, dy: 173pt, line(end: (-55pt, 25pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))  // D→A
      #place(dx: 38pt, dy: 198pt, line(end: (160pt, 30pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // A→C（连到 C）
      // 侧棱与高 PA
      #place(dx: 40pt, dy: 60pt, line(end: (-2pt, 138pt), stroke: 0.8pt))        // P→A（实线）
      #place(dx: 40pt, dy: 60pt, line(end: (40pt, 195pt), stroke: 0.8pt))        // P→B
      #place(dx: 40pt, dy: 60pt, line(end: (158pt, 168pt), stroke: 0.8pt))      // P→C
      #place(dx: 40pt, dy: 60pt, line(end: (55pt, 115pt), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed")))   // P→D
      // 点
      #place(dx: 38pt, dy: 58pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 38pt, dy: 198pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 78pt, dy: 253pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 198pt, dy: 228pt, circle(radius: 1.8pt, fill: black))
      #place(dx: 93pt, dy: 173pt, circle(radius: 1.8pt, fill: black))
      // 标签
      #place(dx: 44pt, dy: 48pt)[$P$]
      #place(dx: 22pt, dy: 200pt)[$A$]
      #place(dx: 76pt, dy: 260pt)[$B$]
      #place(dx: 202pt, dy: 224pt)[$C$]
      #place(dx: 80pt, dy: 166pt)[$D$]
    ]
  ]

  图中 $P A perp$ 底面（$P$ 在 $A$ 正上方，$P A$ 为实线），$D$ 在底面内；被挡住的 $D A$、$D C$ 与 $A C$、$P D$ 画虚线。

  === 解析

  *(1) 证明。* 由 $A B = sqrt(3)$、$B C = 1$、$A C = 2$ 得 $A B^2 + B C^2 = 4 = A C^2$，所以

  $ A B perp B C. $

  又 $P A perp$ 底面，故 $P A perp A D$；结合已知 $A D perp P B$，且 $P A$、$P B$ 是平面 $P A B$ 内两条相交直线，得

  $ A D perp "平面" P A B quad => quad A D perp A B. $

  于是 $A D$ 与 $B C$ 都垂直于 $A B$（在同一底面内），故 $A D text(∥) B C$；又 $B C subset$ 平面 $P B C$、$A D subset.not$ 平面 $P B C$，所以

  $ A D text(∥) "平面" P B C. quad square $

  *(2) 建系。* 由 (1) 知 $A B perp B C$。以 $B$ 为原点，$B A$、$B C$ 方向分别为 $x$、$y$ 轴，过 $B$ 且垂直于底面的方向为 $z$ 轴，则

  $ B(0, 0, 0), quad A(sqrt(3), 0, 0), quad C(0, 1, 0), quad P(sqrt(3), 0, 2). $

  因为 $A D perp D C$，所以 $D$ 在*以 $A C$ 为直径的圆*上（底面的圆内，泰勒斯定理）。设 $A D = x$，则该圆上满足 $A D = x$ 的点 $D$ 可由"到 $A$ 的距离为 $x$、到 $C$ 的距离为 $sqrt(4 - x^2)$"确定，写成分量形式即

  $ D = A + (x^2)/4 arrow(A C) = (sqrt(3) - (sqrt(3) x^2)/4, x^2/4, 0). $

  *两个半平面的法向量。* 平面 $A C P$：$arrow(C A) = (sqrt(3), -1, 0)$、$arrow(C P) = (sqrt(3), -1, 2)$，取

  $ bold(n)_1 = arrow(C A) times arrow(C P) = (-2, -2 sqrt(3), 0) quad (|bold(n)_1| = 4). $

  平面 $D C P$：$arrow(C D) = D - C$、$arrow(C P)$，取

  $ bold(n)_2 = arrow(C D) times arrow(C P). $

  *由二面角的值得方程。* 因为二面角 $A - C P - D$ 的正弦值为 $sqrt(42)/7$，所以它的余弦为

  $ sqrt(1 - 42/49) = sqrt(7)/7. $

  即

  $ (|bold(n)_1 dot bold(n)_2|)/(|bold(n)_1| |bold(n)_2|) = sqrt(7)/7 $

  把 $bold(n)_1$、$bold(n)_2$ 代入并化简（两边平方、整理成关于 $x^2$ 的方程），解得

  $ x^2 = 3 quad => quad x = sqrt(3). $

  所以 $A D = sqrt(3)$。

  *检验*：当 $A D = sqrt(3)$ 时，$D$ 使 $A D perp D C$ 且二面角 $A - C P - D$ 的正弦值恰为 $sqrt(42)/7 approx 0.9258$，与题设一致。

  === 要点

  - *第 (1) 问的两步*：先用勾股逆定理得 $A B perp B C$；再由"$P A perp$ 底面"与"$A D perp P B$"得 $A D perp$ 平面 $P A B$，从而 $A D perp A B$，最后用"同垂直于 $A B$"得 $A D text(∥) B C$。
  - *"$A D perp D C$"等价于"$D$ 在以 $A C$ 为直径的圆上"*：这是本题第 (2) 问的突破口，把它写成坐标关系就能把 $D$ 用 $A D = x$ 表示出来。
  - *点 $D$ 的坐标怎么写*：在直角三角形 $A D C$ 中，$arrow(A D)$ 在 $arrow(A C)$ 上的投影长为 $(A D^2)/(A C)$，故 $D = A + (x^2)/4 arrow(A C)$——比解两个圆方程快得多。
  - *二面角给"正弦"要换成余弦*：$cos theta = sqrt(1 - sin^2 theta)$，本题得 $sqrt(7)/7$；注意二面角取锐角还是钝角要与图形一致。
  - *含参方程最后要化简*：把 $bold(n)_1$、$bold(n)_2$ 的坐标代入后两边平方，整理成 $x^2$ 的方程再解，最后代回检验。
]
