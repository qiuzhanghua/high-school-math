#!uv run
# /// script
# requires-python = ">=3.12"
# dependencies = [
#     "numpy",
#     "matplotlib",
# ]
#
# [[tool.uv.index]]
# url = "https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple"
# default = true
# ///


import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

plt.rcParams['font.sans-serif'] = ['PingFang SC', 'Hiragino Sans GB', 'Heiti SC', 'Arial Unicode MS']
# 解决负号 '-' 显示为方块的问题
plt.rcParams['axes.unicode_minus'] = False

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# ---------- 圆锥参数 ----------
h = 6.0          # 圆锥高
R = 3.0          # 底面半径
z = np.linspace(-h/2, h/2, 80)
theta = np.linspace(0, 2*np.pi, 80)
Z, Theta = np.meshgrid(z, theta)
# 圆锥半径随 z 线性变化，顶点在 z = h/2
r = R * (h/2 - Z) / h
X = r * np.cos(Theta)
Y = r * np.sin(Theta)
ax.plot_surface(X, Y, Z, alpha=0.15, color='gray', edgecolor='none')

# ---------- 两个丹德林球 ----------
# 球心在轴上，半径与圆锥相切
# 球1（下）：球心 z1，半径 r1
z1, r1 = -1.2, 1.8
# 球2（上）：球心 z2，半径 r2
z2, r2 = 1.8, 1.2

u = np.linspace(0, 2*np.pi, 60)
v = np.linspace(0, np.pi, 60)
U, V = np.meshgrid(u, v)

for zc, rc, color in [(z1, r1, 'tab:blue'), (z2, r2, 'tab:orange')]:
    Xs = rc * np.cos(U) * np.sin(V)
    Ys = rc * np.sin(U) * np.sin(V)
    Zs = rc * np.cos(V) + zc
    ax.plot_surface(Xs, Ys, Zs, alpha=0.25, color=color, edgecolor='none')

# ---------- 截平面 ----------
# 取一个倾斜平面：z = k * x + b
k, b = 0.45, 0.2
xx = np.linspace(-3.2, 3.2, 40)
yy = np.linspace(-3.2, 3.2, 40)
XX, YY = np.meshgrid(xx, yy)
ZZ = k * XX + b
ax.plot_surface(XX, YY, ZZ, alpha=0.2, color='green', edgecolor='none')

# ---------- 切点（焦点）F1, F2 ----------
# 球与平面的切点：从球心向平面作垂线
# 平面 z = kx + b  =>  kx - z + b = 0
# 法向量 n = (k, 0, -1)
n = np.array([k, 0, -1.0])
n = n / np.linalg.norm(n)

def tangent_point(zc, rc):
    # 球心 C=(0,0,zc)，到平面距离应等于 rc
    # 平面方程 kx - z + b = 0，代入 C 得 -zc + b
    # 距离 = | -zc + b | / sqrt(k^2+1) = rc
    # 切点 = C - ((k*0 - zc + b)/(k^2+1)) * (k, 0, -1)
    d = (k*0 - zc + b) / (k**2 + 1)
    P = np.array([0, 0, zc]) - d * np.array([k, 0, -1.0])
    return P

F1 = tangent_point(z1, r1)
F2 = tangent_point(z2, r2)

ax.scatter(*F1, color='blue', s=60, label='F1')
ax.scatter(*F2, color='orange', s=60, label='F2')
ax.text(F1[0], F1[1], F1[2]+0.15, 'F1', color='blue')
ax.text(F2[0], F2[1], F2[2]+0.15, 'F2', color='orange')

# ---------- 椭圆交线 ----------
# 参数化求交：圆锥 r = R*(h/2 - z)/h，平面 z = kx + b
# 用极角 t 参数化圆锥上的点：x = r cos t, y = r sin t, z = h/2 - (h/R) r
# 代入平面：h/2 - (h/R) r = k r cos t + b
# 解出 r(t)
t = np.linspace(0, 2*np.pi, 400)
r_t = (h/2 - b) / (h/R + k*np.cos(t))
x_e = r_t * np.cos(t)
y_e = r_t * np.sin(t)
z_e = h/2 - (h/R) * r_t
ax.plot(x_e, y_e, z_e, color='red', linewidth=2.5, label='椭圆交线')

# ---------- 母线 PA1A2 示意 ----------
# 取椭圆上一点 P
idx = 120
P = np.array([x_e[idx], y_e[idx], z_e[idx]])
# 沿母线方向：从顶点 (0,0,h/2) 到 P 的连线
apex = np.array([0, 0, h/2])
# 母线与两球的切点 A1, A2：在母线上，距顶点距离满足球相切
# 母线参数：Q(s) = apex + s*(P - apex), s in [0,1]
# 球心 (0,0,zc)，半径 rc，求母线到球心距离等于 rc 的点
def tangent_on_generator(zc, rc):
    d = P - apex
    # 解 |apex + s d - C|^2 = rc^2
    C = np.array([0, 0, zc])
    a = np.dot(d, d)
    b2 = 2*np.dot(apex - C, d)
    c2 = np.dot(apex - C, apex - C) - rc**2
    disc = b2**2 - 4*a*c2
    s1 = (-b2 - np.sqrt(disc)) / (2*a)
    s2 = (-b2 + np.sqrt(disc)) / (2*a)
    # 取在 [0,1] 内的解
    for s in [s1, s2]:
        if 0 <= s <= 1:
            return apex + s*d
    return None

A1 = tangent_on_generator(z1, r1)
A2 = tangent_on_generator(z2, r2)

for A, color in [(A1, 'blue'), (A2, 'orange')]:
    if A is not None:
        ax.scatter(*A, color=color, s=40)
        ax.plot([apex[0], P[0]], [apex[1], P[1]], [apex[2], P[2]],
                color='purple', linewidth=1.2, linestyle='--')

ax.scatter(*P, color='red', s=50)
ax.text(P[0], P[1], P[2]+0.15, 'P', color='red')

# 连线 PF1, PF2
ax.plot([P[0], F1[0]], [P[1], F1[1]], [P[2], F1[2]], color='blue', linewidth=1.2)
ax.plot([P[0], F2[0]], [P[1], F2[1]], [P[2], F2[2]], color='orange', linewidth=1.2)

# ---------- 坐标轴设置 ----------
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('丹德林双球模型：椭圆情形')
ax.legend(loc='upper right')
ax.set_box_aspect([1, 1, 1])
plt.tight_layout()
plt.show()