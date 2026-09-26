#import "template.typ": *

#set document(title: [导数指数对数])

#template(heading2-align: left, page-footer: "第 1 页")[

  == 【例 1】含对数的一元恒成立问题（两种解法）

  *【例 1】* 若不等式 $x ln x >= a (x - 1)$ 对所有 $x >= 1$ 都成立，则实数 $a$ 的取值范围是 #box(width: 5em, stroke: (bottom: 0.5pt))。

  === 法 1（分离参数）

  ① 当 $x = 1$ 时，$1 dot ln 1 >= a dot 0$，即 $0 >= 0$，对 $a$ 没有限制。

  ② 当 $x > 1$ 时，$x - 1 > 0$，两边同除以 $x - 1$：

  $ a <= (x ln x)/(x - 1) $

  要让它对一切 $x > 1$ 都成立，只需 $a$ 不超过右边函数的下确界。令

  $ f(x) = (x ln x)/(x - 1) quad (x > 1) $

  求导：

  $ f'(x) = ((ln x + 1)(x - 1) - x ln x)/(x - 1)^2 = (x - 1 - ln x)/(x - 1)^2 $

  由基准不等式 $ln x <= x - 1$（$x > 1$ 时严格小于）知 $f'(x) > 0$ 恒成立，所以 $f(x)$ 在 $(1, +oo)$ 上单调递增。

  #v(0.2em)

  #align(center)[
    #block(breakable: false, width: 260pt, height: 165pt)[
      #let seg(a, b, stroke: 0.8pt) = place(dx: a.at(0), dy: a.at(1))[
        #line(end: (b.at(0) - a.at(0), b.at(1) - a.at(1)), stroke: stroke)
      ]
      #seg((40pt, 130pt), (250pt, 130pt))
      #seg((250pt, 130pt), (242pt, 126pt))
      #seg((250pt, 130pt), (242pt, 134pt))
      #seg((70pt, 158pt), (70pt, 25pt))
      #seg((70pt, 25pt), (66pt, 33pt))
      #seg((70pt, 25pt), (74pt, 33pt))
      #seg((70pt, 80pt), (245pt, 80pt), stroke: (paint: black, thickness: 0.6pt, dash: "dashed"))
      #seg((120pt, 130pt), (120pt, 40pt), stroke: (paint: black, thickness: 0.6pt, dash: "dashed"))
      #let pts = range(0, 30).map(i => {
        let x = 1.12 + i * 0.08
        (70pt + x * 50pt, 130pt - (x * calc.ln(x) / (x - 1)) * 50pt)
      })
      #place(dx: 0pt, dy: 0pt)[
        #curve(curve.move(pts.first()), ..pts.slice(1).map(p => curve.line(p)), stroke: 0.9pt)
      ]
      #place(dx: 118.2pt, dy: 78.2pt)[#circle(radius: 1.8pt, fill: white, stroke: 0.9pt)]
      #place(dx: 205pt, dy: 38pt)[$f(x)$]
      #place(dx: 62pt, dy: 133pt)[$O$]
      #place(dx: 116pt, dy: 134pt)[$1$]
      #place(dx: 63pt, dy: 74pt)[$1$]
    ]
  ]

  #align(center)[#text(size: 9pt, fill: gray)[$f(x)$ 在 $(1, +oo)$ 上单调递增，最小值取不到，下确界为 $1$]]

  #v(0.2em)

  于是 $f(x)$ 在 $x = 1$ 处取不到最小值，但由洛必达法则

  $ lim_(x -> 1^+) f(x) = lim_(x -> 1^+) (x ln x)/(x - 1) = lim_(x -> 1^+) (ln x + 1)/1 = 1 $

  即 $f(x)$ 的下确界为 $1$。所以

  $ a <= 1 quad 即 quad a in (-oo, 1] $

  === 法 2（构造函数，比较 $a$ 与端点）

  由 $x >= 1 > 0$，把原不等式两边同除以 $x$：

  $ ln x >= a (x - 1)/x quad 即 quad ln x - a + a/x >= 0 $

  令

  $ g(x) = ln x - a + a/x quad (x >= 1) $

  则

  $ g(1) = ln 1 - a + a = 0, quad g'(x) = 1/x - a/x^2 = (x - a)/x^2 quad (x >= 1) $

  下面比较极值点 $x = a$ 与区间端点 $x = 1$ 的位置：

  *① 当 $a <= 1$ 时：* 因为 $x >= 1 >= a$，所以 $x - a >= 0$ 且 $x^2 > 0$，故 $g'(x) >= 0$ 恒成立，$g(x)$ 在 $[1, +oo)$ 上单调递增，于是

  $ g(x) >= g(1) = 0 $

  即不等式恒成立。

  *② 当 $a > 1$ 时：* $x in (1, a)$ 时 $g'(x) < 0$，$g(x)$ 单调递减；$x in (a, +oo)$ 时 $g'(x) > 0$，$g(x)$ 单调递增。所以 $g(x)$ 在 $x = a$ 处取到最小值，而

  $ g(a) = ln a - a + 1 < 0 $

  这里用了 $a > 1$ 时的基准不等式 $ln a < a - 1$。即存在 $x$ 使 $g(x) < 0$，不等式不恒成立，舍去。

  #v(0.2em)

  #align(center)[
    #block(breakable: false, width: 290pt, height: 160pt)[
      #let seg(a, b, stroke: 0.8pt) = place(dx: a.at(0), dy: a.at(1))[
        #line(end: (b.at(0) - a.at(0), b.at(1) - a.at(1)), stroke: stroke)
      ]
      #seg((35pt, 110pt), (278pt, 110pt))
      #seg((278pt, 110pt), (270pt, 106pt))
      #seg((278pt, 110pt), (270pt, 114pt))
      #seg((55pt, 142pt), (55pt, 35pt))
      #seg((55pt, 35pt), (51pt, 43pt))
      #seg((55pt, 35pt), (59pt, 43pt))
      #seg((83pt, 138pt), (83pt, 110pt), stroke: (paint: black, thickness: 0.6pt, dash: "dashed"))
      #let pts1 = range(0, 25).map(i => {
        let x = 1 + i * 0.25
        (55pt + x * 28pt, 110pt - (calc.ln(x) - 1 + 1/x) * 55pt)
      })
      #place(dx: 0pt, dy: 0pt)[
        #curve(curve.move(pts1.first()), ..pts1.slice(1).map(p => curve.line(p)), stroke: 0.9pt)
      ]
      #let pts2 = range(0, 25).map(i => {
        let x = 1 + i * 0.25
        (55pt + x * 28pt, 110pt - (calc.ln(x) - 2 + 2/x) * 55pt)
      })
      #place(dx: 0pt, dy: 0pt)[
        #curve(curve.move(pts2.first()), ..pts2.slice(1).map(p => curve.line(p)), stroke: (paint: black, thickness: 0.9pt, dash: "dashed"))
      ]
      #place(dx: 109.5pt, dy: 125.4pt)[#circle(radius: 1.6pt, fill: black)]
      #place(dx: 200pt, dy: 52pt)[① $a <= 1$]
      #place(dx: 126pt, dy: 130pt)[② $a > 1$]
      #place(dx: 88pt, dy: 113pt)[$1$]
      #place(dx: 44pt, dy: 108pt)[$O$]
    ]
  ]

  #align(center)[#text(size: 9pt, fill: gray)[① $a <= 1$ 时 $g$ 递增，$g >= g(1) = 0$；② $a > 1$ 时 $g$ 先减后增，最小值 $g(a) < 0$]]

  #v(0.2em)

  综上，$a$ 的取值范围为

  $ (-oo, 1] $

  #line(length: 100%, stroke: 0.5pt + gray)

  == 【例 2】指对混合不等式的证明（同构换元）

  *【例 2】* 已知 $f(x) = x + ln x$，证明：$x f(x) + e^(-x) - x >= 0$。

  === 解析

  *① 观察结构（题目为什么给出 $f(x) = x + ln x$）。* 展开左边：

  $ x f(x) + e^(-x) - x = x (x + ln x) + e^(-x) - x = x ln(x e^x) + e^(-x) - x $

  这里用到 $x + ln x = ln x + ln e^x = ln(x e^x)$；同时 $e^(-x)/x = 1/(x e^x)$。也就是说，把每一项都用整体 $t = x e^x$ 表示，就能把原不等式化为只含 $t$ 的不等式。

  *② 同除 $x$，直接化为 $ln(x e^x) + 1/(x e^x) - 1 >= 0$。* 展开左边并移项：

  $ x (x + ln x) >= x - e^(-x) $

  因为 $x > 0$，两边同除 $x$：

  $ x + ln x >= 1 - e^(-x)/x $

  即

  $ ln(x e^x) + 1/(x e^x) - 1 >= 0 $

  *③ 换元 $t = x e^x$，化为标准结论。* 由 $(x e^x)' = (x + 1) e^x > 0$ 知 $t = x e^x$ 在 $(0, +oo)$ 上严格递增，把 $(0, +oo)$ 一一对应到 $(0, +oo)$，于是原不等式等价于

  $ ln t + 1/t - 1 >= 0 quad (t > 0) $

  这正是标准结论 $ln t >= 1 - 1/t$。设

  $ phi(t) = ln t + 1/t - 1 quad (t > 0) $

  求导：

  $ phi'(t) = 1/t - 1/t^2 = (t - 1)/t^2 $

  所以 $phi(t)$ 在 $(0, 1)$ 上单调递减、在 $(1, +oo)$ 上单调递增，在 $t = 1$ 处取到最小值

  $ phi(1) = ln 1 + 1 - 1 = 0 $

  故 $phi(t) >= 0$ 对一切 $t > 0$ 成立，原不等式得证。

  （若把 $ln t + 1/t - 1 >= 0$ 两边同乘 $t > 0$，就得到等价写法 $t ln t - t + 1 >= 0$；两种形式都可以，乘除 $t$ 不影响不等号方向。）

  *④ 取等条件。* 等号成立当且仅当 $t = 1$，即 $x e^x = 1$（也写作 $x = e^(-x)$）。该方程在 $x > 0$ 上有唯一解 $x_0 ≈ 0.5671$，也就是欧米伽常数 $W(1)$。

  *另证（凸性 + 找一个零点）：* 令

  $ F(x) = x f(x) + e^(-x) - x = x^2 + x ln x + e^(-x) - x quad (x > 0) $

  则 $F''(x) = 2 + 1/x + e^(-x) > 0$，即 $F$ 是严格下凸函数，$F'$ 严格递增，于是 $F$ 的极小值点唯一。

  取 $x_0$ 为 $x e^x = 1$ 的正根，则 $ln x_0 = -x_0$、$e^(-x_0) = x_0$，于是

  $ F(x_0) = x_0 (x_0 + ln x_0) + e^(-x_0) - x_0 = x_0 dot 0 + x_0 - x_0 = 0 $

  $ F'(x_0) = 2x_0 + ln x_0 + 1 - e^(-x_0) - 1 = 2x_0 - x_0 - x_0 = 0 $

  即 $x_0$ 既是 $F$ 的零点、又是它的极小值点，所以 $F(x) >= F(x_0) = 0$，取等当且仅当 $x = x_0$。

  #line(length: 100%, stroke: 0.5pt + gray)

  == 【例 3】含 $(x + 1) ln x$ 型的恒成立问题（两种解法）

  *【例 3】* 已知函数 $f(x) = (x + 1) ln x - a (x - 1)$。若当 $x in (1, +oo)$ 时恒有 $f(x) > 0$，求 $a$ 的取值范围。

  === 法 1（分离参数）

  当 $x > 1$ 时 $x - 1 > 0$，$f(x) > 0$ 等价于

  $ a < ((x + 1) ln x)/(x - 1) quad (x > 1) $

  要让它对一切 $x > 1$ 成立，只需 $a$ 不超过右边函数的下确界。令

  $ phi(x) = ((x + 1) ln x)/(x - 1) quad (x > 1) $

  求导：

  $ phi'(x) = ((ln x + 1 + 1/x)(x - 1) - (x + 1) ln x)/(x - 1)^2 = (x - 1/x - 2 ln x)/(x - 1)^2 $

  记 $h(x) = x - 1/x - 2 ln x$，则 $h(1) = 0$，且

  $ h'(x) = 1 + 1/x^2 - 2/x = (x - 1)^2/x^2 > 0 quad (x > 1) $

  所以 $h(x) > 0$，从而 $phi'(x) > 0$，即 $phi(x)$ 在 $(1, +oo)$ 上单调递增。于是 $phi(x)$ 取不到最小值，但由洛必达法则

  $ lim_(x -> 1^+) phi(x) = lim_(x -> 1^+) ((x + 1) ln x)/(x - 1) = lim_(x -> 1^+) (ln x + 1 + 1/x)/1 = 2 $

  即下确界为 $2$；又 $x -> +oo$ 时 $phi(x) -> +oo$。所以

  $ a <= 2 $

  注意：题干是严格不等式 $f(x) > 0$，但 $x > 1$ 时恒有 $phi(x) > 2$，故 $a = 2$ 仍满足 $a < phi(x)$，答案*含端点* $2$。

  === 法 2（构造函数，比较 $a$ 与端点）

  因为 $x + 1 > 0$，把 $f(x) > 0$ 两边同除以 $x + 1$：

  $ ln x - a (x - 1)/(x + 1) > 0 $

  令

  $ g(x) = ln x - a (x - 1)/(x + 1) quad (x >= 1) $

  则

  $ g(1) = 0, quad g'(x) = 1/x - a dot ((x + 1) - (x - 1))/(x + 1)^2 = 1/x - (2a)/(x + 1)^2 $

  *① 必要性（端点效应）。* 由 $g(1) = 0$ 且 $x > 1$ 时 $g(x) > 0$，必有 $g'(1) >= 0$，即

  $ g'(1) = 1 - (2a)/4 = 1 - a/2 >= 0 quad => quad a <= 2 $

  *② 充分性。* 当 $a <= 2$ 且 $x > 1$ 时，

  $ g'(x) = 1/x - (2a)/(x + 1)^2 >= 1/x - 4/(x + 1)^2 = ((x + 1)^2 - 4x)/(x (x + 1)^2) = (x - 1)^2/(x (x + 1)^2) >= 0 $

  且等号仅在 $x = 1$ 处成立，所以 $g(x)$ 在 $(1, +oo)$ 上严格递增，$g(x) > g(1) = 0$，即 $f(x) > 0$ 恒成立。

  综上，$a$ 的取值范围为

  $ (-oo, 2] $

  #line(length: 100%, stroke: 0.5pt + gray)

  === 方法总结

  - *法 1（分离参数）*：把参数干净地分离到一边（$a <= f(x)$），问题转化为求 $f$ 的最小值（下确界）。注意两点：① 除数可能为 $0$ 时（如本题的 $x - 1$）要单独讨论；② 最值取不到（区间开、端点是瑕点）时用*极限*（洛必达法则）求下确界——本题 $f$ 递增，下确界为 $lim_(x -> 1^+) f(x) = 1$，故 $a <= 1$。
  - *法 2（构造含参函数）*：把参数留在函数里，令 $g(x) = ln x - a + a/x$，则 $g(1) = 0$（端点取等），由 $g'(x) = (x - a)/x^2$ 的符号讨论：关键是*比较极值点 $x = a$ 与区间端点 $x = 1$ 的位置*——$a <= 1$ 时 $g$ 在 $[1, +oo)$ 上递增，$g >= 0$；$a > 1$ 时 $g$ 在 $(1, a)$ 上递减，出现负值。
  - 两种方法都依赖基准不等式 $ln x <= x - 1$（$x > 0$，等号仅在 $x = 1$ 时成立）：它既说明法 1 中 $f'(x) > 0$，也说明法 2 中 $g(a) = ln a - a + 1 < 0$。
  - 本题在 $x = 1$ 处两边都取 $0$（$x ln x$ 与 $a(x - 1)$ 都等于 $0$），是典型的*端点取等*结构，也可先用端点效应探出 $a <= 1$ 再验证充分性（参见 `导数07端点效应.typ`）。
  - *指对混合式子的同构换元*（例 2）：同时含 $e^x$（或 $e^(-x)$）与 $ln x$ 时，先把式子整理成与整体 $t = x e^x$ 有关的形式——常用 $x + ln x = ln(x e^x)$、$e^(-x)/x = 1/(x e^x)$、$x - ln x = ln(e^x/x)$，再同除 $x$（或同乘 $e^x$）完成换元（乘除的都是正数，不等号方向不变）。换元前要确认该整体在区间上*单调*（保证一一对应）。
  - *换元后的目标形式*：$ln t + 1/t - 1 >= 0$，即标准结论 $ln t >= 1 - 1/t$（$t > 0$，等号仅在 $t = 1$）；两边同乘 $t > 0$ 的等价写法是 $t ln t >= t - 1$，它与 $ln x <= x - 1$ 是同一个不等式的不同变形。证明只需对 $phi(t) = ln t + 1/t - 1$ 求导（$phi'(t) = (t - 1)/t^2$）。
  - *$(x + 1) ln x$ 型（例 3）*：$ln x$ 的系数含 $x$ 时，分离参数后求导会出现 $x - 1/x - 2 ln x$ 这类式子，处理办法是"再构造一次、看端点"：$h(1) = 0$、$h'(x) = (x - 1)^2/x^2 > 0$ 即可判定符号。
  - *含参函数的最值型构造（例 3 法 2）*：同除 $(x + 1)$ 后 $g'(x) = 1/x - (2a)/(x + 1)^2$，用 $a <= 2$ 把参数放缩成常数（$2a <= 4$），即可化为 $(x - 1)^2/(x (x + 1)^2) >= 0$；这类"参数放缩 + 配方"是含参单调性常用的收尾手法。
  - 例 3 与 `导数07端点效应.typ` 的例 3 是同一道题：那里用端点效应探路 + 主元法，这里用分离参数 / 构造函数，可对照两种思路。
]
