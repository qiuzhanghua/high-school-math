#set page(paper: "a4", margin: 2cm)
#set text(font: ("New Computer Modern", "Songti SC", "Source Han Sans"), size: 11pt, lang: "zh")
#set math.equation(numbering: "(1)")
#set par(justify: true, leading: 0.9em)

// 标题样式
#let section-title(title) = {
  v(0.5em)
  text(size: 14pt, weight: "bold", fill: rgb("#1f4e79"), title)
  v(0.2em)
}

#align(center)[
  #text(size: 18pt, weight: "bold")[高中数学试题与解析整理]
]

#v(1em)

// ==================== 第一题 ====================
#section-title("一、镇江市 2026—2027 学年第一学期高三期初监测（函数与导数）")

*题目：* 已知函数 $f(x) = e^x - e^(-x) - 2 ln(sqrt(x^2 + 1) - x)$，若不等式 $f(2 ln x) + f(b - a x) <= 0$ 对任意 $x > 0$ 恒成立，其中 $a > 0$、$b in RR$，则 $b/a$ 的最大值为（#h(0.6em)）

#align(center)[
  A. $1/2 quad$ B. $1 quad$  C. $e/2 quad$  D. $2$
]

*解析：*

*1. 分析 $f(x)$ 的性质。*

- 令 $g(x) = sqrt(x^2 + 1) - x$，则 $g(-x) = sqrt(x^2 + 1) + x = 1/g(x)$，故

  $ ln(g(-x)) = -ln(g(x)). $

  代入得 $f(-x) = e^(-x) - e^x - 2(-ln(g(x))) = -(e^x - e^(-x) - 2 ln(g(x))) = -f(x)$，所以 $f(x)$ 是*奇函数*。

- $e^x - e^(-x)$ 在 $RR$ 上单调递增；又 $g(x) = 1/(sqrt(x^2+1)+x)$ 单调递减，故 $-2 ln g(x)$ 单调递增。所以 $f(x)$ 在 $RR$ 上*单调递增*。

*2. 转化不等式。* 由 $f(2 ln x) + f(b - a x) <= 0$ 得

$ f(2 ln x) <= -f(b - a x) = f(a x - b). $

因为 $f$ 单调递增，所以 $2 ln x <= a x - b$，即

$ b <= a x - 2 ln x quad (forall x > 0). $

*3. 求右端最小值。* 令 $h(x) = a x - 2 ln x$，则 $h'(x) = a - 2/x$，令 $h'(x) = 0$ 得 $x = 2/a$。于是

$ h(x)_"min" = h(2/a) = a dot 2/a - 2 ln(2/a) = 2 + 2 ln a - 2 ln 2, $

所以 $b <= 2 + 2 ln a - 2 ln 2$。

*4. 求 $b/a$ 的最大值。* 构造函数

$ phi(a) = (2 + 2 ln a - 2 ln 2)/a quad (a > 0), quad phi'(a) = (2 - (2 + 2 ln a - 2 ln 2))/a^2 = (2 ln(2/a))/a^2. $

令 $phi'(a) = 0$ 得 $a = 2$：当 $0 < a < 2$ 时 $phi'(a) > 0$、$phi$ 递增；当 $a > 2$ 时 $phi'(a) < 0$、$phi$ 递减。故

$ phi(a)_"max" = phi(2) = (2 + 2 ln 2 - 2 ln 2)/2 = 1, quad "此时" b <= 2. $

*答案选 B。*

*注：* 本题也可用切线放缩 $ln x <= x - 1$，即 $2 ln x <= 2x - 2$。当 $a = 2$、$b = 2$ 时满足 $2x - 2 <= a x - b$，此时 $b/a = 1$。

#v(1em)

// ==================== 第二题 ====================
#section-title("二、广州市天河区九月开学考试（圆锥曲线）")

*题目：* 已知双曲线 $C: x^2/a^2 - y^2/b^2 = 1$（$a > 0$、$b > 0$）的左焦点为 $F(-1, 0)$，且离心率为 $sqrt(2)$。

(1) 求 $C$ 的方程；

(2) 设 $O$ 为坐标原点，过 $F$ 且斜率大于 $2$ 的动直线 $l$ 与 $C$ 交于 $P$、$Q$ 两点，其中点 $Q$ 在第三象限，直线 $P O$ 与 $C$ 的另一个交点为 $R$。

(i) 若 $triangle P Q R$ 的面积是 $triangle P F O$ 的面积的 $5$ 倍，求直线 $l$ 的方程；

(ii) 求 $tan angle P Q R$ 的取值范围。

*解析：*

*(1) 求方程。* 由左焦点 $F(-1, 0)$ 知 $c = 1$；离心率 $e = c/a = sqrt(2)$ 得 $a = (sqrt(2))/2$，于是

$ b^2 = c^2 - a^2 = 1 - 1/2 = 1/2. $

故 $C: x^2/(1/2) - y^2/(1/2) = 1$，即 $2 x^2 - 2 y^2 = 1$。

*(2)(i) 求直线方程。* 由 $S_(triangle P Q R) = 5 S_(triangle P F O)$ 及几何关系（$P$、$O$、$R$ 共线，$P$、$F$、$Q$ 共线）可推出向量关系

$ arrow(P F) = 3/2 arrow(F Q), $

再结合韦达定理得到点坐标关系，解得 $l: y = 7 x + 7$（斜率 $7 > 2$，符合条件）。

*(2)(ii) 求取值范围。* 利用双曲线的*第三定义*（对 $2x^2 - 2y^2 = 1$，两条斜率之积为定值）：$k_1 k_2 = 1$。设 $k_1 = k_(Q P)$、$k_2 = k_(Q R)$，则 $k_2 = 1/k_1$，而直线 $l$ 的斜率 $k = k_1 > 2$。于是

$ tan angle P Q R = |(k_1 - k_2)/(1 + k_1 k_2)| = |(k_1 - 1/k_1)/2| = (k_1 - 1/k_1)/2. $

令 $f(k_1) = (k_1 - 1/k_1)/2$，它在 $(2, +oo)$ 上单调递增，且 $k_1 -> 2^+$ 时 $f(2) = (2 - 1/2)/2 = 3/4$。所以

$ tan angle P Q R > 3/4, quad "取值范围为" (3/4, +oo). $

#v(1em)

// ==================== 第三题 ====================
#section-title("三、永州市 2027 年高考第一次模拟考试（解三角形）")

*题目：* 已知 $triangle A B C$ 的周长为 $12$，且

$ cos C + 2/3 cos (A+B)/2 cos (A-B)/2 = 1, $

则 $triangle A B C$ 面积的最大值为 #underline[$9 sqrt(2)/2$]。

*解析：*

*1. 化简已知等式。* 因为 $A + B + C = pi$，所以 $cos C = -cos(A+B)$，原式化为

$ -cos(A+B) + 2/3 cos (A+B)/2 cos (A-B)/2 = 1. $

用 $cos(A+B) = 2 cos^2 (A+B)/2 - 1$ 化简：

$ 2/3 cos (A+B)/2 cos (A-B)/2 - 2 cos^2 (A+B)/2 = 0, $

即

$ 2/3 cos (A+B)/2 (cos (A-B)/2 - 3 cos (A+B)/2) = 0. $

因为 $A$、$B$ 是三角形内角，$cos (A+B)/2 != 0$，所以

$ cos (A-B)/2 = 3 cos (A+B)/2. quad (1) $

*2. 转化为边的关系。* 由和差化积

$ sin A + sin B = 2 sin (A+B)/2 cos (A-B)/2, $

代入 $(1)$：

$ sin A + sin B = 2 sin (A+B)/2 dot 3 cos (A+B)/2 = 3 sin(A+B) = 3 sin C. $

由正弦定理即得

$ a + b = 3 c. quad (2) $

*3. 求定值。* 已知 $a + b + c = 12$，结合 $(2)$ 得 $4c = 12$，即 $c = 3$，从而 $a + b = 9$。

*4. 几何意义与最值。* 点 $C$ 的轨迹是以 $A$、$B$ 为焦点的*椭圆*：长轴长 $2a' = 9$ 即 $a' = 4.5$，焦距 $2c' = 3$ 即 $c' = 1.5$，短半轴

$ b' = sqrt((a')^2 - (c')^2) = sqrt((9/2)^2 - (3/2)^2) = sqrt(18) = 3 sqrt(2). $

当点 $C$ 位于椭圆短轴端点时，$triangle A B C$ 的高最大、面积最大：

$ S_"max" = 1/2 dot 3 dot 3 sqrt(2) = (9 sqrt(2))/2. $
