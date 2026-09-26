#import "template.typ": *

#set document(title: [直线与圆培优])

#template(heading2-align: left, page-footer: "第 1 页")[

  *第1题* (阿氏圆小题)

  已知单位圆上的动点M，定点$A(-1/2,0)$和$B(1,1)$， 求$2 |M A| + |M B|$的最小值。

  *解:*

  假设数轴上存在一点$C(c, 0)$, 如果$|M C| = 2|M A|$恒成立，则M的轨迹是阿氏圆，为了保证M正好落在单位圆上，设$C A$的内分点为$P$, 则$arrow(C P)$ = $2 arrow(P A)$。
  $ x_P = (c * 1 + (-1/2) * 2) / (1 + 2) = (c - 1) / 2 $
  显然$x_P = -1$，所以 $c = -2$。

  $ 2 |M A| + |M B| = |M C| + |M B| <= |B C| = sqrt(10) $

  由于$B C$能与单位圆相交，故能取到最小值。
  #qed


  * 常用公式： *

  设AB的内定比分点为P，外定比分点为Q，定比为$lambda$, 即
  $
    arrow(A P) & = lambda arrow(P B) \
    arrow(A Q) & = -lambda arrow(Q B)
  $
  则$|M A| = lambda |M B|$的点落在以$P Q$为直径的圆上。

  $
    "内分点坐标："\
    x_P = (x_A + lambda x_B) / (1 + lambda) \
    y_P = (y_A + lambda y_B) / (1 + lambda)
  $

  $
    "外分点坐标："\
    x_Q = (x_A - lambda x_B) / (1 - lambda) \
    y_Q = (y_A - lambda y_B) / (1 - lambda)
  $

  #rect(stroke: 0.5pt, inset: 8pt, width: 100%)[

    *阿氏圆解析法证明*

    取 $A$ 为原点、直线 $A B$ 为 $x$ 轴，设 $B(d, 0)$（$d = |A B| > 0$）。设动点 $M(x, y)$，条件 $|M A| = lambda |M B|$ 即

    $ x^2 + y^2 = lambda^2 [(x - d)^2 + y^2], $

    展开整理：

    $ (1 - lambda^2)(x^2 + y^2) + 2 lambda^2 d x - lambda^2 d^2 = 0. $

    当 $lambda != 1$ 时可除以 $1 - lambda^2$，并配方：

    $ (x + (lambda^2 d)/(1 - lambda^2))^2 + y^2 = (lambda^2 d^2)/((1 - lambda^2)^2), $

    所以轨迹是*圆*，圆心与半径分别为

    $ x_0 = -(lambda^2 d)/(1 - lambda^2) = (lambda^2 d)/(lambda^2 - 1), quad r = (lambda d)/(|1 - lambda^2|). $

    *再看内分点与外分点。* 在 $x$ 轴上解 $|X A| = lambda |X B|$：由 $arrow(A P) = lambda arrow(P B)$ 得

    $ x_P = (lambda d)/(1 + lambda), $

    由 $arrow(A Q) = -lambda arrow(Q B)$ 得

    $ x_Q = (lambda d)/(lambda - 1). $

    于是 $P Q$ 的中点与半长分别为

    $
      (x_P + x_Q)/2 = (lambda d)/2 dot ((lambda - 1) + (lambda + 1))/((lambda + 1)(lambda - 1)) = (lambda^2 d)/(lambda^2 - 1),
    $

    $
      (|x_Q - x_P|)/2 = (lambda d)/2 dot |((lambda + 1) - (lambda - 1))/((lambda - 1)(lambda + 1))| = (lambda d)/(|lambda^2 - 1|).
    $

    与上面求得的圆心、半径完全一致——这就证明了"轨迹是以 $P Q$ 为直径的圆"。

    $($当 $lambda = 1$ 时，第一个方程退化为 $2 d x - d^2 = 0$，即 $x = d/2$：轨迹是 $A B$ 的*垂直平分线*，可看作半径无穷大的"圆"。$)$

  ]


  #pagebreak()


  #line(length: 100%, stroke: 0.5pt + gray)

  *第2题* (米勒圆与临界最值)

  已知点 $A(-1, 0)$、$B(3, 0)$，点 $P$ 为圆 $O: x^2 + y^2 = 45$ 上一动点，则 $sin angle A P B$ 的最大值为 #underline[#h(3em)]。

  *答案*：$(sqrt(5))/4$。

  #align(center)[
    #block(breakable: false, width: 260pt, height: 278pt)[
      // 大圆 x²+y²=45：圆心 O(125,130)，半径 114（比例 17pt/单位）
      #place(dx: 11pt, dy: 16pt, ellipse(width: 228pt, height: 228pt, stroke: 0.8pt))
      // 米勒圆：圆心 C(1,√8.8)->(142,79.6)，半径 60.8
      #place(dx: 81.2pt, dy: 18.8pt, ellipse(width: 121.6pt, height: 121.6pt, stroke: (paint: rgb("#c7362e"), thickness: 1pt)))
      // 线段 PA、PB
      #place(dx: 161.4pt, dy: 22pt, line(end: (-53.4pt, 108pt), stroke: (paint: rgb("#1f6feb"), thickness: 1pt)))
      #place(dx: 161.4pt, dy: 22pt, line(end: (14.6pt, 108pt), stroke: (paint: rgb("#1f6feb"), thickness: 1pt)))
      // 圆心连线 O—C（虚线）
      #place(dx: 125pt, dy: 130pt, line(end: (36.4pt, -108pt), stroke: (paint: gray, thickness: 0.6pt, dash: "dashed")))
      // 点
      #place(dx: 106.2pt, dy: 128pt, circle(radius: 2pt, fill: black))
      #place(dx: 174.2pt, dy: 128pt, circle(radius: 2pt, fill: black))
      #place(dx: 123pt, dy: 128pt, circle(radius: 2pt, fill: black))
      #place(dx: 140.2pt, dy: 77.6pt, circle(radius: 2pt, fill: rgb("#c7362e")))
      #place(dx: 159.4pt, dy: 20pt, circle(radius: 2.2pt, fill: rgb("#2e7d32")))
      // 标签
      #place(dx: 96pt, dy: 132pt)[$A$]
      #place(dx: 176pt, dy: 132pt)[$B$]
      #place(dx: 118pt, dy: 134pt)[$O$]
      #place(dx: 146pt, dy: 68pt)[#text(fill: rgb("#c7362e"))[$C$]]
      #place(dx: 166pt, dy: 12pt)[#text(fill: rgb("#2e7d32"))[$P$]]
      #place(dx: 24pt, dy: 198pt)[#text(size: 9pt)[$x^2 + y^2 = 45$]]
      #place(dx: 30pt, dy: 56pt)[#text(size: 9pt, fill: rgb("#c7362e"))[米勒圆: 圆心 $C(1, h)$，半径 $rho = 8 slash sqrt(5)$]]
    ]
  ]

  图：米勒圆（红线）与已知圆 $x^2 + y^2 = 45$ *内切*于点 $P$（绿点）。此时过 $A$、$B$、$P$ 的外接圆半径最小，
  由 $sin angle A P B = (|A B|)/(2 rho) = 2/rho$ 得最大值 $(sqrt(5))/4$。虚线为圆心连线 $O C$（延长后过切点 $P$）。


  *解:*

  *（1）把"角的正弦"换成"外接圆半径"。* 设 $triangle A P B$ 的外接圆半径为 $rho$。由正弦定理

  $ (|A B|)/(sin angle A P B) = 2 rho quad => quad sin angle A P B = (|A B|)/(2 rho) = 2/rho, $

  因为 $|A B| = 3 - (-1) = 4$。所以*要 $sin angle A P B$ 最大，只需外接圆半径 $rho$ 最小*——这一步把"角"的问题变成了"圆"的问题。

  *（2）外接圆的圆心在 $A B$ 的垂直平分线上。* $A B$ 的中点为 $(1, 0)$，故可设外接圆的圆心为 $(1, h)$；又 $A$、$B$ 到圆心的距离为

  $ rho = sqrt((1 - (-1))^2 + h^2) = sqrt(4 + h^2). $

  *（3）$rho$ 最小 —— 圆与已知圆相切（米勒圆）。* 外接圆经过 $A$、$B$，还经过已知圆上的点 $P$。由于 $A$、$B$ 都在圆 $x^2 + y^2 = 45$ 内部（$|O A| = 1$、$|O B| = 3$，都小于 $sqrt(45) = 3 sqrt(5)$），要让这样的圆"尽量小"，它必须与已知圆*内切*：

  $ |O C| + rho = 3 sqrt(5), quad "即" quad sqrt(1 + h^2) + sqrt(4 + h^2) = 3 sqrt(5). $

  两边平方化简：由 $1 + h^2 + 4 + h^2 + 2 sqrt((1+h^2)(4+h^2)) = 45$ 得

  $ sqrt((1+h^2)(4+h^2)) = 20 - h^2, $

  再平方：

  $ (1 + h^2)(4 + h^2) = 400 - 40 h^2 + h^4 quad => quad 4 + 5 h^2 = 400 - 40 h^2 quad => quad 45 h^2 = 396, $

  即

  $ h^2 = 44/5, quad rho^2 = 4 + 44/5 = 64/5, quad rho = 8/(sqrt(5)). $

  *（4）求最大值。*

  $ sin angle A P B = 2/rho = 2/((8)/(sqrt(5))) = (sqrt(5))/4. $

  所以 $sin angle A P B$ 的最大值为 $(sqrt(5))/4$。

  *说明*：这类"从动点看定线段的最大张角"问题叫*米勒问题*，其结论是：*当且仅当过线段两端点的圆与动点所在曲线相切时，张角最大*。本题用正弦定理把"张角最大"化为"外接圆半径最小"，正是米勒圆的标准做法。

]
