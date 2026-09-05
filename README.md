# High School Math

高中数学公式 Typst 文档集，包含圆锥曲线相关定理与结论。

## 文档

| 文件 | 内容 |
|------|------|
| `椭圆焦半径.typ` | 椭圆焦半径公式：定义、代数法与几何法证明、推论与典型应用 |
| `双曲焦半径.typ` | 双曲线焦半径公式：左右支分情形、证明、推论与典型应用 |
| `抛物焦半径.typ` | 抛物线焦半径公式：四种开口形式汇总、焦点弦与三种圆锥曲线对比 |
| `圆锥曲线硬解定理.typ` | 直线与椭圆联立方程的韦达定理结论和弦长公式（两种直线设法） |
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

> 所有文档共用根目录下的 `template.typ`，用法为
> `#import "template.typ": *` 后用 `#template(...)[正文]` 包裹正文，
> 可选 `#set document(title: [...])` 在页眉右侧显示标题。
> 模板内置 `#definition`、`#important-block`、`#example`、`#theorem`、
> `#proof` 环境块，并提供页码、首行缩进、公式编号、字号等排版选项
> （详见模板文件头部注释）；构建脚本会自动跳过该模板文件，
> macOS / Linux 可改用 `./build`。

## 依赖

- [Typst](https://typst.app/)
