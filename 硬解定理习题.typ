#import "template.typ": *

#set document(title: [硬解定理习题])

#template(
  heading2-align: left,
  page-footer: "第 1 页",
)[

  已知存在椭圆 $C: x^2/4 + y^2 = 1$，存在点 $A(2, 0)$，直线 $l$ 与椭圆 $C$ 交于 $M$、$N$ 两点，若始终有$k_(A M) + k_(A N) = 1$。试判断直线 $l$ 是否过定点，若是，求出该点。
  \
  \

  - 方法1. 硬解定理(保底)
  - 方法2. 坐标原点移到A，再齐次化(最优)
  - 方法3. 对合点互相在极线上，取特殊情况计算(填空)
  - 方法4. 套用公式(记不住☺)
  $
    P(
      x_0 - frac(2 y_0, lambda),
      -y_0 - frac(2 b^2 x_0, lambda a^2)
    )
  $

]
