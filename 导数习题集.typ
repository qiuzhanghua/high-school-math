#import "template.typ": *

#set document(title: [导数习题集])

#template(heading2-align: left, page-footer: "第 1 页")[

  *1.* 已知函数 $f(x) = (e^x - m x^2)(a ln x - m x)$，若 $exists m in RR$ 使得 $f(x) <= 0$ 在 $x in (0, +oo)$ 恒成立，则实数 $a$ 的取值范围为：

  #grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    gutter: 4pt,
    [A. $(-oo, e^2/4]$],
    [B. $(e^2/4, e^3/4)$],
    [C. $[0, e^3/4]$],
    [D. $(-oo, e^3/4)$],
  )

  *答案*：*#text(fill: rgb("#c7362e"))[C]*。

  *解答：*

  *① 把条件转化为"两函数之间"。* 对 $x > 0$，分别提出因子：

  $ f(x) = x^2(e^x/x^2 - m) dot x(a (ln x)/x - m) = x^3 (e^x/x^2 - m)(a (ln x)/x - m). $

  因为 $x^3 > 0$，所以 $f(x) <= 0$（$forall x > 0$）等价于：*对每个 $x > 0$，$m$ 都介于 $phi(x) = e^x/x^2$ 与 $psi(x) = a (ln x)/x$ 之间*。

  *② 两个关键最值。*

  - $phi(x) = e^x/x^2$ 在 $x = 2$ 处取最小值 $phi(2) = e^2/4$：因为
    $ e^x/x^2 >= e^2/4 <==> e^(x - 2) >= (x/2)^2 <==> e^(u - 1) >= u quad (u = x/2), $
    而 $e^(u - 1) >= u <==> ln u <= u - 1$，恒成立；
  - 当 $a > 0$ 时，$psi(x) = a (ln x)/x$ 在 $x = e$ 处取最大值 $psi(e) = a/e$：因为 $(ln x)/x <= 1/e$。

  *③ 必要性：必有 $0 <= a <= e^3/4$。*

  - *若 $a < 0$*：当 $x -> 0^+$ 时 $e^x - m x^2 -> 1 > 0$，而 $a ln x - m x -> +infinity$，故 $f(x) -> +infinity$，与 $f(x) <= 0$ 矛盾。
  - *设 $a >= 0$，且存在满足条件的 $m$。* 注意

    $ phi(e) = e^(e - 2) > e^2/4 quad ("即" e - 2 > 2 - ln 4). $

    在 $x = 2$ 处有 $phi(2) = e^2/4$、$psi(2) = (a ln 2)/2$；在 $x = e$ 处有 $psi(e) = a/e$。

    - 若 $m <= e^2/4$：由 $x = 2$ 处 $phi(2) >= m$ 知需 $psi(2) <= m$；由 $x = e$ 处 $phi(e) > m$ 知需 $psi(e) <= m$。于是
      $ a/e <= m <= e^2/4 quad => quad a <= e^3/4. $
    - 若 $m > e^2/4$：由 $x = 2$ 处 $phi(2) < m$ 知需 $psi(2) >= m$，即 $m <= (a ln 2)/2$；而在 $x = e$ 处，无论 $m$ 与 $phi(e)$ 谁大，都需 $psi(e) <= m$，即 $m >= a/e$。于是
      $ a/e <= m <= (a ln 2)/2 quad => quad 1/e <= (ln 2)/2, $
      但 $1/e > (ln 2)/2$，矛盾，故此情形不可能。

  所以 $a$ 必须满足 $0 <= a <= e^3/4$。

  *④ 充分性：这个范围内的 $a$ 确实都能取到。* 任取 $a in [0, e^3/4]$，令

  $ m = e^2/4, $

  则

  $ e^x - m x^2 = x^2(e^x/x^2 - e^2/4) >= 0, $

  且由 $a <= e^3/4$ 与 $(ln x)/x <= 1/e$ 得

  $ a (ln x)/x <= a/e <= e^2/4 = m quad => quad a ln x - m x = x(a (ln x)/x - m) <= 0. $

  两个因式一非负、一非正，故 $f(x) <= 0$ 对一切 $x > 0$ 成立。

  *⑤ 结论。* $a$ 的取值范围为 $[0, e^3/4]$，选 *#text(fill: rgb("#c7362e"))[C]*。（端点检验：取 $a = e^3/4$、$m = e^2/4$，第一个因式在 $x = 2$ 处为 $0$、第二个因式在 $x = e$ 处为 $0$，其余各处两因式异号，$f(x) <= 0$ 仍成立，故区间右端点是闭的。）

  #line(length: 100%, stroke: 0.5pt + gray)

  *2.* （2027 届武汉九调 T8）已知 $a > 1$，若函数 $f(x) = (ln x)/e^x$ 与 $g(x) = (log_a (x - 1) - 1)/a^x$ 的最大值相等，则 $a$ 的值所在区间为（#h(0.8em)）

  #grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    gutter: 4pt,
    [A. $(1, 3/2)$],
    [B. $(3/2, 2)$],
    [C. $(2, 5/2)$],
    [D. $(5/2, 3)$],
  )

  *答案*：*#text(fill: rgb("#c7362e"))[B]*。

  *解答：*

  *① 先求 $f$ 的最大值。* $f(x) = ln x dot e^(-x)$，则

  $ f'(x) = e^(-x)(1/x - ln x), $

  令 $f'(x) = 0$ 得 $x ln x = 1$，设其解为 $x_0$（$x_0 approx 1.763$）。当 $0 < x < x_0$ 时 $f'(x) > 0$，当 $x > x_0$ 时 $f'(x) < 0$，故

  $ max f = f(x_0) = (ln x_0)/e^(x_0) = 1/(x_0 e^(x_0)) > 0 quad ("用" ln x_0 = 1/x_0). $

  *② 化简 $g$ 并换元。* 由对数运算

  $ log_a (x - 1) - 1 = log_a (x - 1) - log_a a = log_a ((x - 1)/a), $

  所以

  $ g(x) = (ln ((x - 1)/a))/(ln a dot a^x). $

  令 $t = (x - 1)/a$（$x > 1 <==> t > 0$，且 $x = a t + 1$），则

  $ g = (ln t)/(ln a dot a^(a t + 1)) = 1/(a ln a) dot (ln t)/(a^a)^t. $

  *③ 发现"同构"条件 $a^a = e$。* 若

  $ a^a = e quad ("等价于" a ln a = 1), $

  则 $(a^a)^t = e^t$，同时系数 $1/(a ln a) = 1$，于是

  $ g = (ln t)/e^t = f(t), $

  即 $g$ 与 $f$ *是同一个函数*（只是自变量换名），两者的最大值必然相等，且 $g$ 的最大值点在 $x = a x_0 + 1$ 处。

  *④ 说明这个条件也是必要的。* 记 $c = a ln a > 0$、$H(c) = max_(t > 0) ln t dot e^(-c t)$，则

  $ max f = H(1), quad max g = 1/c dot H(c), $

  "最大值相等"即 $H(c)/c = H(1)$。作代换 $s = c t$，得

  $ H(c) = max_(s > 0)(ln s - ln c)e^(-s). $

  记 $K(lambda) = max_(s > 0)(ln s - lambda)e^(-s)$，则上式化为

  $ K(ln c) e^(-ln c) = K(0). $

  因为 $K(lambda)$ 关于 $lambda$ 严格递减（每个 $(ln s - lambda)e^(-s)$ 都随 $lambda$ 严格递减），且 $K(lambda) > 0$，所以左边关于 $lambda$ 严格递减，方程只有唯一解 $lambda = 0$，即 $c = 1$，也就是 $a ln a = 1$。

  *⑤ 定位 $a$。* 令 $h(a) = a ln a$，则 $h'(a) = ln a + 1 > 0$（$a > 1$），故 $h$ 在 $(1, +infinity)$ 上严格递增，$a ln a = 1$ 只有唯一解。又

  $ h(3/2) = 3/2 ln(3/2) < 1 < h(2) = 2 ln 2, $

  其中前者等价于 $(3/2)^3 = 27/8 < e^2 approx 7.39$，后者等价于 $2^2 = 4 > e approx 2.72$。所以

  $ a in (3/2, 2), $

  选 *#text(fill: rgb("#c7362e"))[B]*。（也可直接比较 $a^a$ 与 $e$：$a^a = e^(a ln a)$ 在 $a > 1$ 时递增，而 $(3/2)^(3/2) < e < 2^2$。）
]
