#import "template.typ": *

#set document(title: [直线与圆培优])

#template(heading2-align: left, page-footer: "第 1 页")[
  #set math.equation(numbering: "(1)")

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




]
