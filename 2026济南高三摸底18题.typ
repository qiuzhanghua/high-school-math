#import "template.typ": *

#set document(title: [2026 济南摸底第 18 题（椭圆）])

#template(
  heading2-align: left,
  page-footer: "第 1 页",
)[
  #let ans(body) = align(center, box(stroke: 0.8pt, inset: (x: 8pt, y: 4pt), body))

  == 济南 2026-2027 学年度高三年级摸底考试 · 第 18 题（本小题满分 17 分）

  已知椭圆 $E: x^2/a^2 + y^2/b^2 = 1$（$a > b > 0$）的左、右焦点分别为 $F_1$、$F_2$，长轴长为 $4$，$E$ 上一点与 $F_1$、$F_2$ 所构成三角形的周长为 $4 + 2 sqrt(2)$。

  （1）求 $E$ 的方程；

  （2）设直线 $l: y = k x + m$ 与 $E$ 交于 $A$、$B$ 两点，$O$ 为坐标原点。

  （i）若中心在原点且右焦点为 $(1, 0)$ 的等轴双曲线过点 $(m, k)$，求 $triangle O A B$ 的面积；

  （ii）若 $l$ 过 $E$ 的上顶点和 $F_1$，$T$ 为线段 $A B$ 上一点，直线 $O T$ 与 $E$ 交于点 $M$，且 $arrow(M T) = (1 + sqrt(2)) arrow(O T)$，求 $T$ 的坐标。

  #grid(
    columns: (1fr, 1fr),
    gutter: 8pt,
    align(center)[
      // ---- 图 1：(2)(i) 的图形 ----
      // 椭圆 x²/4 + y²/2 = 1：中心 (105, 92)，半轴 68 × 48.1（比例 34pt / 单位）
      #block(breakable: false, width: 210pt, height: 186pt)[
        #place(dx: 37pt, dy: 43.9pt, ellipse(width: 136pt, height: 96.2pt, stroke: 0.9pt))
        // 坐标轴
        #place(dx: 20pt, dy: 92pt, line(length: 173.4pt, stroke: 0.8pt))
        #place(dx: 105pt, dy: 25.7pt, line(length: 132.6pt, angle: 90deg, stroke: 0.8pt))
        // 直线 l：取 m = −2、k = √(7/2)（满足 m² − k² = 1/2），从 (0, m) 画到 A 稍外
        #place(dx: 105pt, dy: 160pt, line(end: (57.8pt, -108.1pt), stroke: (paint: rgb("#1f6feb"), thickness: 1pt)))
        // 交点 A、B，点 (0, m)，原点 O
        #place(dx: 157.6pt, dy: 61.5pt, circle(radius: 2.2pt, fill: rgb("#c7362e")))
        #place(dx: 116pt, dy: 139.5pt, circle(radius: 2.2pt, fill: rgb("#c7362e")))
        #place(dx: 105pt, dy: 160pt, circle(radius: 2.2pt, fill: black))
        #place(dx: 105pt, dy: 92pt, circle(radius: 1.6pt, fill: black))
        // 标签
        #place(dx: 162pt, dy: 50pt)[$A$]
        #place(dx: 119pt, dy: 146pt)[$B$]
        #place(dx: 96pt, dy: 96pt)[$O$]
        #place(dx: 74pt, dy: 164pt)[$(0, m)$]
        #place(dx: 196pt, dy: 96pt)[$x$]
        #place(dx: 106pt, dy: 14pt)[$y$]
      ]
      #v(-6pt)
      #text(size: 9pt)[图 1：(2)(i) 的图形。图示取 $m = -2$、$k = sqrt(7/2)$，满足 $m^2 - k^2 = 1/2$，
        此时 $(0, m)$ 落在椭圆外。]
    ],
    align(center)[
      // ---- 图 2：(2)(ii) 的图形 ----
      // 椭圆 x²/4 + y²/2 = 1：中心 (100, 95)，半轴 68 × 48.1（比例 34pt / 单位）
      #block(breakable: false, width: 210pt, height: 186pt)[
        #place(dx: 32pt, dy: 46.9pt, ellipse(width: 136pt, height: 96.2pt, stroke: 0.9pt))
        // 坐标轴
        #place(dx: 13.3pt, dy: 95pt, line(length: 176.8pt, stroke: 0.8pt))
        #place(dx: 100pt, dy: 28.7pt, line(length: 132.6pt, angle: 90deg, stroke: 0.8pt))
        // 弦 AB（直线 l 过上顶点 B(0, √2) 与 F₁）
        #place(dx: 100pt, dy: 46.9pt, line(end: (-64.1pt, 64.1pt), stroke: (paint: rgb("#1f6feb"), thickness: 1pt)))
        // 直线 O、T、M（M = −√2 T，与 T 分居 O 两侧）
        #place(dx: 84pt, dy: 62.9pt, line(end: (38.7pt, 77.4pt), stroke: (paint: rgb("#2e7d32"), thickness: 1pt)))
        // 点 B、A、T、M、F₁、O
        #place(dx: 100pt, dy: 46.9pt, circle(radius: 2.2pt, fill: rgb("#c7362e")))
        #place(dx: 35.9pt, dy: 111pt, circle(radius: 2.2pt, fill: rgb("#c7362e")))
        #place(dx: 84pt, dy: 62.9pt, circle(radius: 2.2pt, fill: rgb("#c7362e")))
        #place(dx: 122.7pt, dy: 140.3pt, circle(radius: 2.2pt, fill: rgb("#c7362e")))
        #place(dx: 51.9pt, dy: 95pt, circle(radius: 2.2pt, fill: black))
        #place(dx: 100pt, dy: 95pt, circle(radius: 1.6pt, fill: black))
        // 标签
        #place(dx: 104pt, dy: 34pt)[$B$]
        #place(dx: 21pt, dy: 114pt)[$A$]
        #place(dx: 71pt, dy: 53pt)[$T$]
        #place(dx: 127pt, dy: 145pt)[$M$]
        #place(dx: 38pt, dy: 99pt)[$F_1$]
        #place(dx: 91pt, dy: 99pt)[$O$]
        #place(dx: 192pt, dy: 99pt)[$x$]
        #place(dx: 101pt, dy: 16pt)[$y$]
      ]
      #v(-6pt)
      #text(size: 9pt)[图 2：(2)(ii) 的图形。$l$ 过上顶点 $B(0, sqrt(2))$ 与 $F_1$，$T$ 在弦 $A B$ 上，
        射线 $O T$ 与 $E$ 交于 $M$。图中画的是 $T(-sqrt(2)/3, (2 sqrt(2))/3)$ 这一解（另一解 $T = F_1$ 见注 1）。]
    ],
  )

  #block(breakable: false)[
    #line(length: 100%, stroke: 0.5pt + gray)

    == 解答
  ]

  === （1）求 $E$ 的方程

  长轴长 $2 a = 4$，故 $a = 2$。

  设 $P$ 为 $E$ 上任意一点。由椭圆定义 $|P F_1| + |P F_2| = 2 a$，又 $|F_1 F_2| = 2 c$，所以 $triangle P F_1 F_2$ 的周长是
  $
    2 a + 2 c = 4 + 2 sqrt(2) quad => quad c = sqrt(2).
  $
  于是
  $
    b^2 = a^2 - c^2 = 4 - 2 = 2.
  $
  #ans[$ E: x^2/4 + y^2/2 = 1 $]
  此时 $F_1(-sqrt(2), 0)$、$F_2(sqrt(2), 0)$，上顶点为 $(0, sqrt(2))$。

  #block(breakable: false)[
    #line(length: 100%, stroke: 0.5pt + gray)

    === （2）（i）求 $triangle O A B$ 的面积
  ]

  *先由等轴双曲线定出 $m$、$k$ 的关系。* 设双曲线为 $x^2/(a')^2 - y^2/(b')^2 = 1$，中心在原点、实轴在 $x$ 轴上，等轴即 $a' = b'$。由右焦点 $(1, 0)$ 得 $c' = 1$，而 $c'^2 = (a')^2 + (b')^2 = 2 (a')^2$，故 $(a')^2 = 1/2$，即
  $
    x^2 - y^2 = 1/2.
  $
  点 $(m, k)$ 在这条双曲线上，所以
  $
    m^2 - k^2 = 1/2, quad #cjk[即] quad k^2 = m^2 - 1/2. quad (star)
  $

  *再把弦算出来。* 把 $y = k x + m$ 代入 $E$ 的等价形式 $x^2 + 2 y^2 = 4$：
  $
    x^2 + 2 (k x + m)^2 = 4 => (1 + 2 k^2) x^2 + 4 k m x + 2 m^2 - 4 = 0.
  $
  设两根为 $x_A$、$x_B$，由韦达定理
  $
    x_A + x_B = - (4 k m)/(1 + 2 k^2), quad x_A x_B = (2 m^2 - 4)/(1 + 2 k^2).
  $
  因为 $A$、$B$ 都在直线 $y = k x + m$ 上，
  $
    x_A y_B - x_B y_A = x_A (k x_B + m) - x_B (k x_A + m) = m (x_A - x_B),
  $
  于是
  $
    S_(triangle O A B) = 1/2 |x_A y_B - x_B y_A| = 1/2 |m| dot |x_A - x_B|.
  $

  *消去 $k$。* 由 $ (x_A - x_B)^2 & = (x_A + x_B)^2 - 4 x_A x_B \
                & = (16 k^2 m^2)/((1 + 2 k^2)^2) - (4 (2 m^2 - 4))/(1 + 2 k^2) \
                & = (4 [4 k^2 m^2 - (2 m^2 - 4)(1 + 2 k^2)])/((1 + 2 k^2)^2) \
                & = (8 (2 + 4 k^2 - m^2))/((1 + 2 k^2)^2), $
  把 $(star)$ 代入：$1 + 2 k^2 = 2 m^2$，且
  $
    2 + 4 k^2 - m^2 = 2 + 4 (m^2 - 1/2) - m^2 = 3 m^2,
  $
  所以
  $
    (x_A - x_B)^2 = (8 dot 3 m^2)/(4 m^4) = 6/m^2, quad |x_A - x_B| = sqrt(6)/abs(m).
  $
  因此
  $
    S_(triangle O A B) = 1/2 abs(m) dot sqrt(6)/abs(m) = sqrt(6)/2.
  $
  #ans[$ S_(triangle O A B) = sqrt(6)/2 $]

  顺带看出：$(x_A - x_B)^2 = 6/m^2 > 0$ 恒成立，所以只要 $(m, k)$ 在等轴双曲线上，直线就与 $E$ 交于两点，且面积与 $m$、$k$ 的具体取值无关，恒为 $sqrt(6)/2$。

  #block(breakable: false)[
    #line(length: 100%, stroke: 0.5pt + gray)

    === （2）（ii）求 $T$ 的坐标
  ]

  $E$ 的上顶点为 $(0, sqrt(2))$，左焦点 $F_1(-sqrt(2), 0)$，直线 $l$ 过这两点，故
  $
    l: y = x + sqrt(2).
  $
  代入 $x^2 + 2 y^2 = 4$：
  $
    x^2 + 2 (x + sqrt(2))^2 = 4 => 3 x^2 + 4 sqrt(2) x = 0 => x = 0 #cjk[或] x = - (4 sqrt(2))/3.
  $
  所以两个交点为
  $
    A(- (4 sqrt(2))/3, - sqrt(2)/3), quad B(0, sqrt(2)).
  $

  设 $T(x_0, y_0)$。它在弦 $A B$ 所在的直线上，故
  $
    y_0 = x_0 + sqrt(2);
  $
  又 $O$、$T$、$M$ 三点共线，可设 $M = lambda T = (lambda x_0, lambda y_0)$。由 $arrow(M T) = (1 + sqrt(2)) arrow(O T)$ 得
  $
    T - M = (1 + sqrt(2)) T quad => quad M = - sqrt(2) T = (-sqrt(2) x_0, -sqrt(2) y_0).
  $

  由 $M$ 在 $E$ 上：
  $
    ((sqrt(2) x_0)^2)/4 + ((sqrt(2) y_0)^2)/2 = 1 quad => quad x_0^2/2 + y_0^2 = 1.
  $
  代入 $y_0 = x_0 + sqrt(2)$：
  $
    x_0^2/2 + (x_0 + sqrt(2))^2 = 1 => 3 x_0^2 + 4 sqrt(2) x_0 + 2 = 0,
  $
  解得
  $
    x_0 = (-4 sqrt(2) +- 2 sqrt(2))/6 quad => quad x_0 = - sqrt(2)/3 quad #cjk[或] quad x_0 = - sqrt(2).
  $
  两者都落在弦的横坐标范围 $[-(4 sqrt(2))/3, 0]$ 内，即都满足“$T$ 在弦 $A B$ 上”。于是

  #ans[$ T(- sqrt(2)/3, (2 sqrt(2))/3) quad #cjk[或] quad T(-sqrt(2), 0) = F_1 $]

  题图画出的是前者（此时 $M(2/3, -4/3)$ 在右下方，与图一致）。

  #remark(title: [第（ii）问其实有两解：别忘了 $T = F_1$])[
    $x_0 = -sqrt(2)$ 对应 $T = F_1(-sqrt(2), 0)$，它同样在弦 $A B$ 上，也满足全部条件：此时 $O T$ 就是 $x$ 轴，取 $M(2, 0)$（$E$ 的右顶点），由 $2 = sqrt(2) dot sqrt(2)$ 得
    $
      arrow(M T) = T - M = (-sqrt(2) - 2, 0) = (1 + sqrt(2)) (-sqrt(2), 0) = (1 + sqrt(2)) arrow(O T).
    $

    为什么 $T = F_1$ 恰好也是解？因为本题 $c = sqrt(2)$、$a = 2$ 恰满足 $sqrt(2) c = a$，于是 $M = -sqrt(2) T$ 正好落在椭圆的右顶点上——只要 $e = c/a = sqrt(2)/2$，焦点就自动是一解。

    所以严格说来，题目若不加“$T != F_1$”（或“$T$ 不与焦点重合”）的限定，第（ii）问应有两解；参考答案与题图只取了 $T(-sqrt(2)/3, (2 sqrt(2))/3)$。

    #align(center)[
      // ---- 图 3：注 1 中 T = F₁ 的那一解 ----
      // 椭圆 x²/4 + y²/2 = 1：中心 (100, 95)，半轴 68 × 48.1（比例 34pt / 单位）
      #block(breakable: false, width: 210pt, height: 186pt)[
        #place(dx: 32pt, dy: 46.9pt, ellipse(width: 136pt, height: 96.2pt, stroke: 0.9pt))
        // 坐标轴
        #place(dx: 13.3pt, dy: 95pt, line(length: 176.8pt, stroke: 0.8pt))
        #place(dx: 100pt, dy: 28.7pt, line(length: 132.6pt, angle: 90deg, stroke: 0.8pt))
        // 弦 AB（直线 l）
        #place(dx: 100pt, dy: 46.9pt, line(end: (-64.1pt, 64.1pt), stroke: (paint: rgb("#1f6feb"), thickness: 1pt)))
        // 线段 F₁ → O → M：与 x 轴重合，用绿色压在上面强调
        #place(dx: 51.9pt, dy: 95pt, line(end: (116.1pt, 0pt), stroke: (paint: rgb("#2e7d32"), thickness: 1.2pt)))
        // 点 B、A、T(=F₁)、M、O
        #place(dx: 100pt, dy: 46.9pt, circle(radius: 2.2pt, fill: rgb("#c7362e")))
        #place(dx: 35.9pt, dy: 111pt, circle(radius: 2.2pt, fill: rgb("#c7362e")))
        #place(dx: 51.9pt, dy: 95pt, circle(radius: 2.4pt, fill: rgb("#2e7d32")))
        #place(dx: 168pt, dy: 95pt, circle(radius: 2.4pt, fill: rgb("#2e7d32")))
        #place(dx: 100pt, dy: 95pt, circle(radius: 1.6pt, fill: black))
        // 标签
        #place(dx: 104pt, dy: 34pt)[$B$]
        #place(dx: 13pt, dy: 116pt)[$A$]
        #place(dx: 50pt, dy: 105pt)[#text(fill: rgb("#2e7d32"))[$T = F_1$]]
        #place(dx: 124pt, dy: 108pt)[#text(fill: rgb("#2e7d32"))[$M(2, 0)$]]
        #place(dx: 91pt, dy: 99pt)[$O$]
        #place(dx: 192pt, dy: 99pt)[$x$]
        #place(dx: 101pt, dy: 16pt)[$y$]
      ]
      #v(-6pt)
      #text(size: 9pt)[图 3：注 1 中 $T = F_1$ 的那一解。此时 $O T$ 落在 $x$ 轴上，
        $M$ 恰是 $E$ 的右顶点 $(2, 0)$，$arrow(M T) = (1 + sqrt(2)) arrow(O T)$ 成立。]
    ]
  ]
]
