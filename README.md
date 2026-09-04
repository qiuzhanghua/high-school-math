# High School Math

高中数学公式 Typst 文档集，包含圆锥曲线相关定理与结论。

## 文档

| 文件 | 内容 |
|------|------|
| `圆锥曲线硬解定理.typ` | 直线与椭圆联立方程的韦达定理结论和弦长公式 |
| `椭圆函数点差法.typ` | 椭圆、双曲线、抛物线的点差法结论与典型例题 |

## 构建

```powershell
# 编译全部文档
./build.ps1

# 编译指定文档
./build.ps1 -Only 圆锥曲线硬解定理

# 指定输出目录
./build.ps1 -OutputDir dist
```

## 依赖

- [Typst](https://typst.app/)
