#import "template.typ": *

#set document(title: [导数端点效应])

#template(heading2-align: left, page-footer: "第 1 页")[
  #set math.equation(numbering: "(1)")

  == 一、适用题型

  *端点效应*（必要性探路）处理这样一类恒成立问题：含参数的不等式 $f(x) >= a$（或 $f(x) <= a$）在区间 $x in [b, +oo)$（或 $(-oo, b]$）上恒成立，且*等号恰在端点处取得*，即

  $ f(b) = a $

  求参数的取值范围，或证明该不等式。

  此时，函数图象从端点 $(b, a)$ 出发向区间内部延伸，"起步方向"必须与不等号方向一致，由此可得到参数的一个*必要条件*——这就是端点效应。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 二、结论

  设 $f(b) = a$。

  - 若 $f(x) >= a$ 对一切 $x in [b, +oo)$ 恒成立，则必有

  $ f'(b) >= 0 $

  - 若 $f(x) <= a$ 对一切 $x in [b, +oo)$ 恒成立，则必有

  $ f'(b) <= 0 $

  直观理解（数形结合）：若要求图象始终不低于直线 $y = a$，那么它出发时就不能"向下走"，否则在端点右侧立刻会低于 $a$，所以 $f'(b) >= 0$；同理，要求始终不高于 $y = a$ 时必有 $f'(b) <= 0$。

  #v(0.3em)

  #align(center)[
    #block(breakable: false, width: 270pt, height: 175pt)[
      #let seg(a, b, stroke: 0.8pt) = place(dx: a.at(0), dy: a.at(1))[
        #line(end: (b.at(0) - a.at(0), b.at(1) - a.at(1)), stroke: stroke)
      ]
      #let dot(p) = place(dx: p.at(0) - 1.4pt, dy: p.at(1) - 1.4pt)[#circle(radius: 1.4pt, fill: black)]
      // 坐标轴
      #seg((35pt, 140pt), (248pt, 140pt))
      #seg((248pt, 140pt), (240pt, 136pt))
      #seg((248pt, 140pt), (240pt, 144pt))
      #seg((60pt, 165pt), (60pt, 18pt))
      #seg((60pt, 18pt), (56pt, 26pt))
      #seg((60pt, 18pt), (64pt, 26pt))
      // 直线 y = a 与端点 b
      #seg((50pt, 80pt), (243pt, 80pt), stroke: (paint: black, thickness: 0.8pt, dash: "dashed"))
      #seg((112pt, 140pt), (112pt, 80pt), stroke: (paint: black, thickness: 0.8pt, dash: "dashed"))
      #dot((112pt, 80pt))
      // 两条"起步方向"箭头
      #seg((114pt, 78pt), (152pt, 44pt))
      #seg((152pt, 44pt), (143pt, 46pt))
      #seg((152pt, 44pt), (150pt, 53pt))
      #seg((114pt, 82pt), (152pt, 116pt))
      #seg((152pt, 116pt), (150pt, 107pt))
      #seg((152pt, 116pt), (143pt, 114pt))
      // 标注
      #place(dx: 44pt, dy: 74pt)[$a$]
      #place(dx: 106pt, dy: 145pt)[$b$]
      #place(dx: 205pt, dy: 68pt)[$y = a$]
      #place(dx: 158pt, dy: 30pt)[$f(x) >= a$：必向上走]
      #place(dx: 158pt, dy: 47pt)[$=> f'(b) >= 0$]
      #place(dx: 158pt, dy: 118pt)[$f(x) <= a$：必向下走]
      #place(dx: 158pt, dy: 135pt)[$=> f'(b) <= 0$]
    ]
  ]

  #align(center)[#text(size: 9pt, fill: gray)[端点效应示意图]]

  #v(0.2em)

  #line(length: 100%, stroke: 0.5pt + gray)

  == 三、使用步骤

  ① *必要性探路*：先确认端点处取等（$f(b) = a$），写出 $f'(b) >= 0$（或 $f'(b) <= 0$），解出参数的*必要条件*，把参数范围先缩小；

  ② *验证充分性*：在缩小后的范围内证明原不等式恒成立。常用*主元法*——把参数视为主元整理原式，判断其单调性或放缩，从而完成证明。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 四、易错与推广

  - *易错*：不论题干给的是开区间、闭区间还是半开半闭区间，用端点效应时都必须在端点处*取到等号*，即必须有 $f(b) = a$；否则不能使用（见第五节）。
  - *推广（二次端点效应）*：若 $f'(b) = 0$，则要看二阶导数：例如 $f(x) >= a$ 恒成立且 $f(b) = a$、$f'(b) = 0$ 时，必有

  $ f''(b) >= 0 $

  这与端点效应道理相同（一阶导数的"起步"再往后退一层），称为*二次端点效应*；$f(x) <= a$ 的情形同理为 $f''(b) <= 0$。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 五、什么时候不能用

  端点效应的前提是 $f(b) = a$。若 $f(x) >= a$ 在 $[b, +oo)$ 上恒成立，但 $f(b) > a$（即端点在直线 $y = a$ 的*上方*），图象的起步方向与直线 $y = a$ 没有必然联系，端点效应失效：

  #v(0.3em)

  #align(center)[
    #block(breakable: false, width: 250pt, height: 150pt)[
      #let seg(a, b, stroke: 0.8pt) = place(dx: a.at(0), dy: a.at(1))[
        #line(end: (b.at(0) - a.at(0), b.at(1) - a.at(1)), stroke: stroke)
      ]
      #let dot(p) = place(dx: p.at(0) - 1.4pt, dy: p.at(1) - 1.4pt)[#circle(radius: 1.4pt, fill: black)]
      #seg((40pt, 130pt), (225pt, 130pt))
      #seg((225pt, 130pt), (217pt, 126pt))
      #seg((225pt, 130pt), (217pt, 134pt))
      #seg((60pt, 145pt), (60pt, 20pt))
      #seg((60pt, 20pt), (56pt, 28pt))
      #seg((60pt, 20pt), (64pt, 28pt))
      // 曲线：在 x = b 处高于直线 y = a
      #place(dx: 0pt, dy: 0pt)[
        #curve(
          curve.move((70pt, 118pt)),
          curve.cubic((88pt, 88pt), (100pt, 66pt), (112pt, 56pt)),
          curve.cubic((130pt, 44pt), (160pt, 32pt), (200pt, 24pt)),
          stroke: 0.9pt,
        )
      ]
      // 直线 y = a 与虚线
      #seg((50pt, 85pt), (215pt, 85pt), stroke: (paint: black, thickness: 0.8pt, dash: "dashed"))
      #seg((112pt, 130pt), (112pt, 56pt), stroke: (paint: black, thickness: 0.8pt, dash: "dashed"))
      #dot((112pt, 85pt))
      #place(dx: 44pt, dy: 79pt)[$a$]
      #place(dx: 106pt, dy: 135pt)[$b$]
      #place(dx: 178pt, dy: 72pt)[$y = a$]
      #place(dx: 74pt, dy: 94pt)[$(b, a)$]
      #place(dx: 118pt, dy: 64pt)[$f(b) > a$]
    ]
  ]

  #align(center)[#text(size: 9pt, fill: gray)[端点处不取等：端点效应失效]]

  #v(0.2em)

  此时即使写出 $f'(b) >= 0$，得到的也只是参数的一部分限制，会*漏掉参数*——按这个条件去验证充分性时会发现不等式并不恒成立。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 六、例题

  *【例 1】* 若不等式 $ln x <= a (x - 1)$ 对一切 $x >= 1$ 恒成立，求实数 $a$ 的取值范围。

  === 解析

  *① 必要性探路。* 令

  $ f(x) = ln x - a (x - 1) quad (x >= 1) $

  题意即 $f(x) <= 0$ 在 $[1, +oo)$ 上恒成立，而

  $ f(1) = ln 1 - a dot 0 = 0 $

  等号恰在端点 $x = 1$ 处取得，符合端点效应的适用条件。由"$f(x) <= 0$ 恒成立 $=> f'(1) <= 0$"：

  $ f'(x) = 1/x - a quad => quad f'(1) = 1 - a <= 0 quad => quad a >= 1 $

  即 $a >= 1$ 是必要条件。

  *② 验证充分性（主元法）。* 当 $a >= 1$ 且 $x >= 1$ 时，

  $ a (x - 1) >= x - 1 $

  所以只需证明 $ln x <= x - 1$（$x >= 1$）这一熟知结论：设 $g(x) = x - 1 - ln x$，则

  $ g'(x) = 1 - 1/x >= 0 quad (x >= 1) $

  故 $g(x)$ 在 $[1, +oo)$ 上单调递增，$g(x) >= g(1) = 0$，即 $ln x <= x - 1$。

  于是 $ln x <= x - 1 <= a (x - 1)$ 对一切 $x >= 1$ 成立。

  综上，$a$ 的取值范围为 $[1, +oo)$。

  #line(length: 100%, stroke: 0.5pt + gray)

  *【例 2】* 若不等式 $x ln x >= a (x - 1)$ 对一切 $x > 1$ 恒成立，求 $a$ 的取值范围。

  === 解析

  *① 必要性探路。* 令

  $ f(x) = x ln x - a (x - 1) quad (x > 1) $

  题意即 $f(x) >= 0$ 在 $(1, +oo)$ 上恒成立。注意 $f(1) = 1 dot ln 1 - a dot 0 = 0$，等号在端点 $x = 1$ 处取得（虽然给的是开区间），符合端点效应的适用条件。由"$f(x) >= 0$ 恒成立 $=> f'(1) >= 0$"：

  $ f'(x) = ln x + 1 - a quad => quad f'(1) = 1 - a >= 0 quad => quad a <= 1 $

  所以 $a <= 1$ 是*必要条件*。

  *② 验证充分性。* 当 $a <= 1$ 且 $x > 1$ 时，

  $ f'(x) = ln x + 1 - a >= ln x + 1 - 1 = ln x > 0 $

  所以 $f(x)$ 在 $(1, +oo)$ 上单调递增，从而 $f(x) > f(1) = 0$，不等式恒成立。

  因此 $a <= 1$ 也是*充分条件*，答案就是 $a <= 1$。

  *③ 另解（分离参数）。* 因为 $x > 1$ 时 $x - 1 > 0$，原不等式等价于

  $ a <= (x ln x)/(x - 1) quad (x > 1) $

  对一切 $x > 1$ 恒成立，即 $a$ 不超过右边函数的下确界。令

  $ phi(x) = (x ln x)/(x - 1) quad (x > 1) $

  求导：

  $ phi'(x) = ((ln x + 1)(x - 1) - x ln x)/(x - 1)^2 = (x - 1 - ln x)/(x - 1)^2 $

  由例 1 中的结论 $x - 1 - ln x > 0$（$x > 1$）知 $phi'(x) > 0$，即 $phi(x)$ 在 $(1, +oo)$ 上单调递增。又

  $ lim_(x -> 1^+) phi(x) = lim_(x -> 1^+) (x ln x)/(x - 1) = 1 quad ("洛必达法则"), quad lim_(x -> +oo) phi(x) = +oo $

  所以 $phi(x)$ 的值域为 $(1, +oo)$，$a <= phi(x)$ 对一切 $x > 1$ 恒成立当且仅当 $a <= 1$。

  综上，$a$ 的取值范围为 $(-oo, 1]$。

  对照例 1：$ln x <= a (x - 1)$ 的答案 $a >= 1$ 与本题的答案 $a <= 1$，都是先用端点效应探出必要条件，再补一步充分性验证（利用 $a$ 的范围对 $f'(x)$ 放缩即得）——这正是端点效应的标准流程。

  #line(length: 100%, stroke: 0.5pt + gray)

  *【例 3】* 若不等式 $(x + 1) ln x - a (x - 1) > 0$ 在 $x in (1, +oo)$ 上恒成立，求 $a$ 的取值范围。

  === 解析

  *① 必要性探路。* 令

  $ f(x) = (x + 1) ln x - a (x - 1) quad (x > 1) $

  题意即 $f(x) > 0$ 在 $(1, +oo)$ 上恒成立，而

  $ f(1) = 2 ln 1 - a dot 0 = 0 $

  即端点是"取等点"：若 $f'(1) < 0$，则端点右侧立刻有 $f(x) < 0$，与恒成立矛盾，故必有 $f'(1) >= 0$。求导：

  $ f'(x) = ln x + (x + 1)/x - a = ln x + 1 + 1/x - a $

  于是

  $ f'(1) = 0 + 1 + 1 - a = 2 - a >= 0 quad => quad a <= 2 $

  所以 $a <= 2$ 是必要条件。

  *② 验证充分性。* 当 $a <= 2$ 且 $x > 1$ 时，

  $ f'(x) = ln x + 1 + 1/x - a >= ln x + 1 + 1/x - 2 = ln x + 1/x - 1 $

  又由熟知结论 $ln x >= 1 - 1/x$（$x > 0$，等号仅在 $x = 1$ 时成立）得 $f'(x) >= 0$（$x > 1$ 时严格大于 $0$）。所以 $f(x)$ 在 $(1, +oo)$ 上单调递增，$f(x) > f(1) = 0$，不等式恒成立。

  因此 $a <= 2$ 也是充分条件，答案即 $a <= 2$。

  *③ 另解（分离参数）。* 因为 $x > 1$ 时 $x - 1 > 0$，原不等式等价于

  $ a < ((x + 1) ln x)/(x - 1) quad (x > 1) $

  对一切 $x > 1$ 恒成立，即 $a$ 不超过右边函数的下确界。令

  $ phi(x) = ((x + 1) ln x)/(x - 1) quad (x > 1) $

  求导：

  $ phi'(x) = ((ln x + 1 + 1/x)(x - 1) - (x + 1) ln x)/(x - 1)^2 = (x - 1/x - 2 ln x)/(x - 1)^2 $

  记 $h(x) = x - 1/x - 2 ln x$，则 $h(1) = 0$，且

  $ h'(x) = 1 + 1/x^2 - 2/x = (x - 1)^2/x^2 > 0 quad (x > 1) $

  故 $h(x) > 0$，从而 $phi'(x) > 0$，即 $phi(x)$ 在 $(1, +oo)$ 上单调递增。又

  $ lim_(x -> 1^+) phi(x) = lim_(x -> 1^+) ((x + 1) ln x)/(x - 1) = 2, quad lim_(x -> +oo) phi(x) = +oo $

  所以 $phi(x)$ 的值域为 $(2, +oo)$，$a < phi(x)$ 对一切 $x > 1$ 恒成立当且仅当 $a <= 2$。

  综上，$a$ 的取值范围为 $(-oo, 2]$。

  一个细节：题干是严格不等式 $> 0$，但 $phi(x)$ 的下确界 $2$ 取不到（$x > 1$ 时恒有 $phi(x) > 2$），所以 $a = 2$ 依然满足 $a < phi(x)$，答案*含端点* $2$。

  #line(length: 100%, stroke: 0.5pt + gray)

  *【例 4】* 已知 $f(x) = e^x - e x - lambda (x ln x - x + 1)$，若对一切 $x >= 1$ 都有 $f(x) >= 0$，求 $lambda$ 的取值范围。

  === 解析

  *① 看清"取等"结构。* 记

  $ g(x) = x ln x - x + 1 quad (x >= 1) $

  则 $g(1) = 0$，且 $g'(x) = ln x >= 0$，故 $g(x) >= 0$。又

  $ f(1) = e - e - lambda (0 - 1 + 1) = 0 $

  端点是取等点，符合端点效应的适用条件。

  *② 一次端点效应失效，改用二次端点效应。* 求导：

  $ f'(x) = e^x - e - lambda ln x quad => quad f'(1) = e - e - 0 = 0 $

  一阶导数在端点处为 $0$，给不出信息（正是"注意"中的情形），于是继续看二阶导数：

  $ f''(x) = e^x - lambda/x quad => quad f''(1) = e - lambda >= 0 quad => quad lambda <= e $

  即 $lambda <= e$ 是必要条件。

  *③ 验证充分性。* 当 $lambda <= e$、$x >= 1$ 时，由 $g(x) >= 0$ 得

  $ f(x) = e^x - e x - lambda g(x) >= e^x - e x - e g(x) = e^x - e x ln x - e $

  记 $F(x) = e^x - e x ln x - e$，只需证明 $F(x) >= 0$（$x >= 1$）。逐次求导：

  $ F(1) = e - 0 - e = 0, quad F'(x) = e^x - e (ln x + 1), quad F'(1) = 0 $

  $ F''(x) = e^x - e/x, quad F''(1) = 0, quad F'''(x) = e^x + e/x^2 > 0 quad (x >= 1) $

  所以 $F''$ 单调递增，$F''(x) >= F''(1) = 0$；于是 $F'$ 单调递增，$F'(x) >= 0$；于是 $F$ 单调递增，$F(x) >= F(1) = 0$。从而 $f(x) >= F(x) >= 0$ 恒成立。

  综上，$lambda$ 的取值范围为 $(-oo, e]$。

  *④ 另解（分离参数）。* 当 $x > 1$ 时 $g(x) > 0$，原不等式等价于

  $ lambda <= phi(x) = (e^x - e x)/(x ln x - x + 1) quad (x > 1) $

  分子、分母在 $x = 1$ 处的值及其一阶导数都为 $0$，而二阶导数在 $x = 1$ 处分别为 $e$ 与 $1$，由洛必达法则（连用两次）得

  $ lim_(x -> 1^+) phi(x) = e/1 = e $

  又 $phi'(x)$ 的分子 $(e^x - e)(x ln x - x + 1) - (e^x - e x) ln x > 0$（$x > 1$），故 $phi(x)$ 在 $(1, +oo)$ 上单调递增，下确界为 $e$，于是同样得到 $lambda <= e$。

  #line(length: 100%, stroke: 0.5pt + gray)

  === 方法总结

  - 端点效应给的是*必要条件*，必须补上*充分性验证*：如例 1、例 2 中，验证只需一步（用 $a$ 的范围对 $f'(x)$ 放缩即可）；若验证发现必要条件不充分，就要继续筛，必要时改用分离参数法求准确范围（见例 2 的另解）。
  - 使用前一定先检查端点处是否取等（$f(b) = a$）：不取等就不能用端点效应，此时应改用其它方法（分离参数、构造辅助函数等）。
  - 若 $f'(b) = 0$，说明一阶导数的"起步"没有给出信息，继续看 $f''(b)$（二次端点效应）：例 4 中 $f'(1) = 0$，正是由 $f''(1) = e - lambda >= 0$ 才得到 $lambda <= e$。
  - 常见不等式恒成立的"基准"结论要记牢，如 $ln x <= x - 1$、$ln x >= 1 - 1/x$、$e^x >= x + 1$（$x in RR$）等，验证充分性时经常直接引用。
  - 严格不等号（如例 3 的 $> 0$）要留意端点是否该含入：若分离参数后右边函数的*下确界取不到*（例 3 中 $phi(x) > 2$），则参数可以取到该值，答案含端点。
]
