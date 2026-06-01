# 第3章 外微分形式与积分定理

## 3.1 从向量分析到微分形式

前两章已经使用曲线坐标、度规张量和协变导数重新表述了向量分析中的梯度、散度、旋度和拉普拉斯算子. 这种语言已经能够处理一般曲线坐标中的计算问题.

从更高层次看, 传统向量分析中的许多公式其实具有共同结构. 例如:
$$
\nabla\times(\nabla f)=0,
$$

$$
\nabla\cdot(\nabla\times\boldsymbol{A})=0,
$$

以及Gauss公式和Stokes公式:
$$
\int_V\nabla\cdot\boldsymbol{A}\,\mathrm{d} V
=
\oint_{\partial V}\boldsymbol{A}\cdot \mathrm{d}\boldsymbol{S},
$$

$$
\int_S(\nabla\times\boldsymbol{A})\cdot \mathrm{d}\boldsymbol{S}
=
\oint_{\partial S}\boldsymbol{A}\cdot \mathrm{d}\boldsymbol{l}.
$$

这些公式形式上分别涉及标量场、向量场、面积分和线积分, 但它们本质上都来自同一个结构: 外微分与边界积分之间的关系.

微分形式的作用在于用统一语言描述不同维数积分中的被积对象及其微分关系. 具体而言, 线积分对应一次形式, 面积分对应二次形式, 体积分对应三次形式; 相应地, 标量场可视为零次形式.

在三维空间中, $0$-形式、$1$-形式、$2$-形式和 $3$-形式分别对应标量场、线积分对象、通量面积分对象和体积分密度.

微分形式的优势在于: 它直接适合积分, 不需要先把对象解释成“向量”再人为区分线元、面积元和体积元.

## 3.2 切空间、余切空间与一次形式

设空间中的一点为 $p$. 在该点处, 所有切向量构成一个向量空间, 称为切空间, 记为
$$
T_pM.
$$

如果使用局部坐标
$$
(x^1,x^2,x^3),
$$

则切空间的一组自然基底为
$$
\frac{\partial}{\partial x^1},
\qquad
\frac{\partial}{\partial x^2},
\qquad
\frac{\partial}{\partial x^3}. \tag{3.1}
$$

通常简写为
$$
\partial_i=\frac{\partial}{\partial x^i}.
$$

于是任意切向量可以写成
$$
X=X^i\partial_i.
$$

与切空间对偶的是余切空间, 记为
$$
T_p^*M.
$$

余切空间中的元素称为协向量, 或一次微分形式. 它们是作用在切向量上的线性函数.

局部坐标下, 余切空间的自然基底为
$$
\mathrm{d} x^1,\mathrm{d} x^2,\mathrm{d} x^3.
$$

它们与切空间基底满足对偶关系:
$$
\mathrm{d} x^i(\partial_j)=\delta^i_j. \tag{3.2}
$$

因此, 任意一次形式可以写成
$$
\omega=\omega_i \mathrm{d} x^i.
$$

若切向量为
$$
X=X^i\partial_i,
$$

则一次形式 $\omega$ 作用在 $X$ 上得到
$$
\omega(X)
=
\omega_i \mathrm{d} x^i(X^j\partial_j).
$$

利用线性性和对偶关系, 有
$$
\omega(X)
=
\omega_iX^j\mathrm{d} x^i(\partial_j)
=
\omega_iX^j\delta^i_j.
$$

因此
$$
\omega(X)=\omega_iX^i.
$$

这说明一次形式天然适合与向量配对, 并给出标量.

## 3.3 标量场的微分

设 $f$ 是一个标量场. 它的外微分, 也就是普通微分, 定义为
$$
\mathrm{d} f=\partial_i f\,\mathrm{d} x^i.
$$

对于任意切向量
$$
X=X^i\partial_i,
$$

有
$$
\mathrm{d} f(X)
=
\partial_i f\,\mathrm{d} x^i(X^j\partial_j)
=
\partial_i f\,X^i.
$$

这正是函数 $f$ 沿方向 $X$ 的方向导数:
$$
X(f)=X^i\partial_i f.
$$

因此, $\mathrm{d} f$ 的几何意义是: 它把任意方向 $X$ 映射为函数 $f$ 沿该方向的变化率.

需要注意的是, $\mathrm{d} f$ 是一次形式, 不是向量. 只有引入度规以后, 才能通过度规把一次形式 $\mathrm{d} f$ 对应到梯度向量 $\nabla f$.

在欧氏空间中, 二者通过
$$
\mathrm{d} f(X)=\nabla f\cdot X
$$

联系起来.

用指标表示, 若
$$
\nabla f=(\nabla f)^i\boldsymbol{e}_i,
$$

则
$$
(\nabla f)^i=g^{ij}\partial_j f.
$$

因此
$$
\nabla f
=
g^{ij}\partial_j f\,\boldsymbol{e}_i.
$$

而 $\mathrm{d} f$ 本身始终是
$$
\mathrm{d} f=\partial_i f\,\mathrm{d} x^i.
$$

由此可见, 外微分 $\mathrm{d}$ 不需要度规, 而梯度 $\nabla f$ 需要度规.

## 3.4 外积与反对称性

为了描述有向面积元和体积元, 需要引入外积. 外积记为
$$
\wedge.
$$

对一次形式 $\mathrm{d} x^i$ 和 $\mathrm{d} x^j$, 外积满足反对称性:
$$
\mathrm{d} x^i\wedge \mathrm{d} x^j=-\mathrm{d} x^j\wedge \mathrm{d} x^i. \tag{3.3}
$$

特别地,
$$
\mathrm{d} x^i\wedge \mathrm{d} x^i=0.
$$

这表示两个相同方向不能张成非零面积.

一个二次形式可以写成
$$
\omega
=
\frac{1}{2}\omega_{ij}\mathrm{d} x^i\wedge \mathrm{d} x^j.
$$

由于
$$
\mathrm{d} x^i\wedge \mathrm{d} x^j=-\mathrm{d} x^j\wedge \mathrm{d} x^i,
$$

只有 $\omega_{ij}$ 的反对称部分真正起作用. 因此通常要求
$$
\omega_{ij}=-\omega_{ji}.
$$

在三维空间中, 典型的二次形式为
$$
\omega
=
\omega_{12}\mathrm{d} x^1\wedge \mathrm{d} x^2
+
\omega_{23}\mathrm{d} x^2\wedge \mathrm{d} x^3
+
\omega_{31}\mathrm{d} x^3\wedge \mathrm{d} x^1.
$$

它适合在二维曲面上积分.

三次形式可以写成
$$
\Omega
=
F\,\mathrm{d} x^1\wedge \mathrm{d} x^2\wedge \mathrm{d} x^3.
$$

它适合在三维区域上积分.

更一般地, 在 $n$ 维空间中, $p$-形式可以写成
$$
\omega
=
\frac{1}{p!}\omega_{i_1i_2\cdots i_p}
\mathrm{d} x^{i_1}\wedge \mathrm{d} x^{i_2}\wedge\cdots\wedge \mathrm{d} x^{i_p},
$$

其中分量 $\omega_{i_1i_2\cdots i_p}$ 对所有指标完全反对称.

## 3.5 外微分算子

外微分算子 $\mathrm{d}$ 把 $p$-形式映射为 $(p+1)$-形式:
$$
\mathrm{d}:\Lambda^p\to\Lambda^{p+1}.
$$

对标量函数 $f$, 有
$$
\mathrm{d} f=\partial_i f\,\mathrm{d} x^i.
$$

对一次形式
$$
\omega=\omega_i \mathrm{d} x^i,
$$

其外微分定义为
$$
\mathrm{d}\omega
=
\partial_j\omega_i\,\mathrm{d} x^j\wedge \mathrm{d} x^i.
$$

利用外积的反对称性, 可以写成标准形式:
$$
\mathrm{d}\omega
=
\frac{1}{2}
(\partial_i\omega_j-\partial_j\omega_i)
\mathrm{d} x^i\wedge \mathrm{d} x^j.
$$

这里第二步来自交换哑指标并利用
$$
\mathrm{d} x^j\wedge \mathrm{d} x^i=-\mathrm{d} x^i\wedge \mathrm{d} x^j.
$$

对二次形式
$$
\eta
=
\frac{1}{2}\eta_{ij}\mathrm{d} x^i\wedge \mathrm{d} x^j,
$$

其外微分为
$$
\mathrm{d}\eta
=
\frac{1}{2}\partial_k\eta_{ij}
\mathrm{d} x^k\wedge \mathrm{d} x^i\wedge \mathrm{d} x^j.
$$

等价地, 可以写成完全反对称形式:
$$
\mathrm{d}\eta
=
\frac{1}{3!}
(\partial_i\eta_{jk}
+
\partial_j\eta_{ki}
+
\partial_k\eta_{ij})
\mathrm{d} x^i\wedge \mathrm{d} x^j\wedge \mathrm{d} x^k.
$$

在三维空间中, 三次形式已经是最高阶形式, 因此对任意三次形式 $\Omega$, 有
$$
\mathrm{d}\Omega=0.
$$

## 3.6 外微分的幂零性

外微分最重要的代数性质是幂零性:
$$
\mathrm{d}^{2}=0.
$$

这表示连续作用两次外微分必定为零.

先看标量函数 $f$. 有
$$
\mathrm{d} f=\partial_i f\,\mathrm{d} x^i.
$$

继续求外微分:
$$
\mathrm{d}(\mathrm{d} f)
=
\partial_j\partial_i f\,\mathrm{d} x^j\wedge \mathrm{d} x^i.
$$

由于普通偏导满足
$$
\partial_j\partial_i f=\partial_i\partial_j f,
$$

而外积满足
$$
\mathrm{d} x^j\wedge \mathrm{d} x^i=-\mathrm{d} x^i\wedge \mathrm{d} x^j,
$$

对称的系数与反对称的基形式相乘后为零. 因此
$$
\mathrm{d}^{2}f=0.
$$

这对应向量分析中的恒等式:
$$
\nabla\times(\nabla f)=0.
$$

再看一次形式
$$
\omega=\omega_i \mathrm{d} x^i.
$$

它的外微分是二次形式 $\mathrm{d}\omega$. 继续作用 $\mathrm{d}$, 由于二阶偏导的对称性与外积的完全反对称性, 仍然得到
$$
\mathrm{d}(\mathrm{d}\omega)=0.
$$

这对应向量分析中的恒等式:
$$
\nabla\cdot(\nabla\times\boldsymbol{A})=0.
$$

因此, 两条熟悉的向量分析恒等式在微分形式语言中统一为一个公式:
$$
\mathrm{d}^{2}=0.
$$

## 3.7 度规、体积形式与 Hodge 星算子

外微分 $\mathrm{d}$ 本身不依赖度规. 但是, 如果要把微分形式与传统向量分析中的梯度、旋度、散度联系起来, 就需要度规.

度规给出长度、夹角和体积元. 设三维空间的度规为
$$
g_{ij},
$$

其行列式为
$$
g=\det(g_{ij}).
$$

定向体积形式为
$$
\mathrm{vol}
=
\sqrt{g}\,\mathrm{d} x^1\wedge \mathrm{d} x^2\wedge \mathrm{d} x^3.
$$

Hodge 星算子 $*$ 依赖度规和取向. 它把 $p$-形式变成 $(3-p)$-形式:
$$
*:\Lambda^p\to\Lambda^{3-p}.
$$

在三维欧氏空间中, 它的作用可以理解为: 把一个有向 $p$ 维元素变成与之正交的有向 $(3-p)$ 维元素.

例如, 在笛卡尔正交归一坐标中, 有
$$
\begin{aligned}
*1=&\mathrm{d} x\wedge \mathrm{d} y\wedge \mathrm{d} z,\\
*\mathrm{d} x&=\mathrm{d} y\wedge \mathrm{d} z,\\
*\mathrm{d} y&=\mathrm{d} z\wedge \mathrm{d} x,\\
*\mathrm{d} z&=\mathrm{d} x\wedge \mathrm{d} y,
\end{aligned}
$$

以及
$$
\begin{aligned}
*(\mathrm{d} x\wedge \mathrm{d} y)&=\mathrm{d} z,\\
*(\mathrm{d} y\wedge \mathrm{d} z)&=\mathrm{d} x,\\
*(\mathrm{d} z\wedge \mathrm{d} x)&=\mathrm{d} y,
\end{aligned}
$$

最后还有
$$
*(\mathrm{d} x\wedge \mathrm{d} y\wedge \mathrm{d} z)=1.
$$

在一般曲线坐标中, Hodge 星号的表达式会包含度规 $g_{ij}$ 和 $\sqrt{g}$. 因此, $\mathrm{d}$ 是纯微分结构, 而 $*$ 反映度规结构.

这一点非常关键: 旋度和散度之所以需要度规, 是因为它们都涉及把不同阶数的微分形式相互对应.

## 3.8 向量与微分形式的对应

在带度规的三维空间中, 可以把向量和一次形式对应起来. 若
$$
\boldsymbol{A}=A^i\boldsymbol{e}_i,
$$

则它对应的一次形式记为
$$
A^\flat.
$$

定义为
$$
A^\flat
=
A_i \mathrm{d} x^i,
$$

其中
$$
A_i=g_{ij}A^j.
$$

符号 $\flat$ 表示用度规降低指标, 把向量变成一次形式.

反过来, 若有一次形式
$$
\omega=\omega_i \mathrm{d} x^i,
$$

则可以通过升指标得到对应的向量
$$
\omega^\sharp
=
\omega^i\boldsymbol{e}_i,
$$

其中
$$
\omega^i=g^{ij}\omega_j.
$$

符号 $\sharp$ 表示用度规升高指标, 把一次形式变成向量.

有了这个对应, 传统向量分析中的三个基本微分算符可以写成:

梯度:
$$
(\nabla f)^\flat=\mathrm{d} f.
$$

旋度:
$$
(\nabla\times\boldsymbol{A})^\flat=*\mathrm{d} A^\flat.
$$

散度:
$$
(\nabla\cdot\boldsymbol{A})\,\mathrm{vol}=\mathrm{d}(*A^\flat).
$$

等价地,
$$
\nabla\cdot\boldsymbol{A}=*\mathrm{d} *A^\flat.
$$

可见, 梯度来自 $0$-形式的外微分, 旋度来自 $1$-形式的外微分再取 Hodge 对偶, 散度则来自 $1$-形式先取 Hodge 对偶再外微分.

## 3.9 正交曲线坐标中的微分形式

设三维正交曲线坐标为
$$
(q^1,q^2,q^3),
$$

线元为
$$
ds^2
=
h_1^2(\mathrm{d} q^1)^2
+
h_2^2(\mathrm{d} q^2)^2
+
h_3^2(\mathrm{d} q^3)^2.
$$

定义正交归一的余标架:
$$
\theta^1=h_1\mathrm{d} q^1,
$$

$$
\theta^2=h_2\mathrm{d} q^2,
$$

$$
\theta^3=h_3\mathrm{d} q^3.
$$

于是线元可以写成
$$
ds^2=(\theta^1)^2+(\theta^2)^2+(\theta^3)^2.
$$

体积形式为
$$
\mathrm{vol}
=
\theta^1\wedge\theta^2\wedge\theta^3
=
h_1h_2h_3\,\mathrm{d} q^1\wedge \mathrm{d} q^2\wedge \mathrm{d} q^3.
$$

若标量场为 $f$, 则
$$
\mathrm{d} f
=
\frac{\partial f}{\partial q^1}\mathrm{d} q^1
+
\frac{\partial f}{\partial q^2}\mathrm{d} q^2
+
\frac{\partial f}{\partial q^3}\mathrm{d} q^3.
$$

用正交归一余标架表示为
$$
\mathrm{d} f
=
\frac{1}{h_1}\frac{\partial f}{\partial q^1}\theta^1
+
\frac{1}{h_2}\frac{\partial f}{\partial q^2}\theta^2
+
\frac{1}{h_3}\frac{\partial f}{\partial q^3}\theta^3.
$$

因此
$$
\nabla f
=
\frac{1}{h_1}\frac{\partial f}{\partial q^1}\hat{\boldsymbol{e}}_1
+
\frac{1}{h_2}\frac{\partial f}{\partial q^2}\hat{\boldsymbol{e}}_2
+
\frac{1}{h_3}\frac{\partial f}{\partial q^3}\hat{\boldsymbol{e}}_3.
$$

这与第一章得到的梯度公式一致.

若向量场为
$$
\boldsymbol{A}
=
A_{\hat 1}\hat{\boldsymbol{e}}_1
+
A_{\hat 2}\hat{\boldsymbol{e}}_2
+
A_{\hat 3}\hat{\boldsymbol{e}}_3,
$$

则对应的一次形式为
$$
A^\flat
=
A_{\hat 1}\theta^1
+
A_{\hat 2}\theta^2
+
A_{\hat 3}\theta^3.
$$

也就是
$$
A^\flat
=
A_{\hat 1}h_1\mathrm{d} q^1
+
A_{\hat 2}h_2\mathrm{d} q^2
+
A_{\hat 3}h_3\mathrm{d} q^3.
$$

这正是正交曲线坐标中旋度公式出现 $h_iA_{\hat i}$ 的原因.

## 3.10 用微分形式推出旋度公式

设
$$
A^\flat
=
A_{\hat 1}h_1\mathrm{d} q^1
+
A_{\hat 2}h_2\mathrm{d} q^2
+
A_{\hat 3}h_3\mathrm{d} q^3.
$$

为简化记号, 记
$$
\alpha_1=h_1A_{\hat 1},
\qquad
\alpha_2=h_2A_{\hat 2},
\qquad
\alpha_3=h_3A_{\hat 3}.
$$

于是
$$
A^\flat
=
\alpha_1\mathrm{d} q^1+\alpha_2\mathrm{d} q^2+\alpha_3\mathrm{d} q^3.
$$

求外微分:
$$
\mathrm{d} A^\flat
=
(\partial_1\alpha_2-\partial_2\alpha_1)\mathrm{d} q^1\wedge \mathrm{d} q^2
+
(\partial_2\alpha_3-\partial_3\alpha_2)\mathrm{d} q^2\wedge \mathrm{d} q^3
+
(\partial_3\alpha_1-\partial_1\alpha_3)\mathrm{d} q^3\wedge \mathrm{d} q^1.
$$

将其写回 $h_i$ 和 $A_{\hat i}$:
$$
\begin{aligned}
\mathrm{d} A^\flat
=
&\left[
\frac{\partial(h_2A_{\hat 2})}{\partial q^1}
-
\frac{\partial(h_1A_{\hat 1})}{\partial q^2}
\right]\mathrm{d} q^1\wedge \mathrm{d} q^2\\
+
&\left[
\frac{\partial(h_3A_{\hat 3})}{\partial q^2}
-
\frac{\partial(h_2A_{\hat 2})}{\partial q^3}
\right]\mathrm{d} q^2\wedge \mathrm{d} q^3\\
+
&\left[
\frac{\partial(h_1A_{\hat 1})}{\partial q^3}
-
\frac{\partial(h_3A_{\hat 3})}{\partial q^1}
\right]\mathrm{d} q^3\wedge \mathrm{d} q^1.
\end{aligned}
$$

对二次形式取 Hodge 星号, 可得到一次形式
$$
*\mathrm{d} A^\flat=(\nabla\times\boldsymbol{A})^\flat.
$$

最终得到正交曲线坐标中的旋度:
$$
\nabla\times\boldsymbol{A}
=
\frac{1}{h_1h_2h_3}
\begin{vmatrix}
h_1\hat{\boldsymbol{e}}_1 & h_2\hat{\boldsymbol{e}}_2 & h_3\hat{\boldsymbol{e}}_3\\
\partial_{q^1} & \partial_{q^2} & \partial_{q^3}\\
h_1A_{\hat 1} & h_2A_{\hat 2} & h_3A_{\hat 3}
\end{vmatrix}.
$$

由此可见, 旋度公式的行列式形式不是人为记忆规则, 而是外微分 $\mathrm{d}$ 与 Hodge 星号 $*$ 的组合结果.

## 3.11 用微分形式推出散度公式

向量场
$$
\boldsymbol{A}
=
A_{\hat 1}\hat{\boldsymbol{e}}_1
+
A_{\hat 2}\hat{\boldsymbol{e}}_2
+
A_{\hat 3}\hat{\boldsymbol{e}}_3
$$

对应的一次形式为
$$
A^\flat
=
A_{\hat 1}\theta^1
+
A_{\hat 2}\theta^2
+
A_{\hat 3}\theta^3.
$$

取 Hodge 星号得到二次形式:
$$
*A^\flat
=
A_{\hat 1}\theta^2\wedge\theta^3
+
A_{\hat 2}\theta^3\wedge\theta^1
+
A_{\hat 3}\theta^1\wedge\theta^2.
$$

代入
$$
\theta^1=h_1\mathrm{d} q^1,
\qquad
\theta^2=h_2\mathrm{d} q^2,
\qquad
\theta^3=h_3\mathrm{d} q^3,
$$

得到
$$
*A^\flat
=
A_{\hat 1}h_2h_3\mathrm{d} q^2\wedge \mathrm{d} q^3
+
A_{\hat 2}h_3h_1\mathrm{d} q^3\wedge \mathrm{d} q^1
+
A_{\hat 3}h_1h_2\mathrm{d} q^1\wedge \mathrm{d} q^2.
$$

对其求外微分:
$$
\mathrm{d}(*A^\flat)
=
\left[
\frac{\partial(A_{\hat 1}h_2h_3)}{\partial q^1}
+
\frac{\partial(A_{\hat 2}h_3h_1)}{\partial q^2}
+
\frac{\partial(A_{\hat 3}h_1h_2)}{\partial q^3}
\right]
\mathrm{d} q^1\wedge \mathrm{d} q^2\wedge \mathrm{d} q^3.
$$

另一方面,
$$
(\nabla\cdot\boldsymbol{A})\mathrm{vol}
=
(\nabla\cdot\boldsymbol{A})
h_1h_2h_3
\mathrm{d} q^1\wedge \mathrm{d} q^2\wedge \mathrm{d} q^3.
$$

比较两式, 得到
$$
\nabla\cdot\boldsymbol{A}
=
\frac{1}{h_1h_2h_3}
\left[
\frac{\partial(A_{\hat 1}h_2h_3)}{\partial q^1}
+
\frac{\partial(A_{\hat 2}h_3h_1)}{\partial q^2}
+
\frac{\partial(A_{\hat 3}h_1h_2)}{\partial q^3}
\right].
$$

这正是正交曲线坐标中的散度公式.

## 3.12 拉普拉斯算子的微分形式写法

对标量场 $f$, 梯度对应
$$
(\nabla f)^\flat=\mathrm{d} f.
$$

散度对应
$$
\nabla\cdot\boldsymbol{A}=*\mathrm{d} *A^\flat.
$$

因此, 对标量场的拉普拉斯算子可以写成
$$
\nabla^2 f=*\mathrm{d} *\mathrm{d} f.
$$

这里采用物理中的符号约定:
$$
\nabla^2 f=\nabla\cdot(\nabla f).
$$

需要注意的是, 在某些数学文献中, Laplace-de Rham 算子可能采用相反号约定. 因此如果以后阅读微分几何教材, 需要检查作者对 Laplacian 的定义.

在正交曲线坐标中, 由
$$
\mathrm{d} f
=
\frac{\partial f}{\partial q^1}\mathrm{d} q^1
+
\frac{\partial f}{\partial q^2}\mathrm{d} q^2
+
\frac{\partial f}{\partial q^3}\mathrm{d} q^3,
$$

可以得到
$$
\nabla^2 f
=
\frac{1}{h_1h_2h_3}
\left[
\frac{\partial}{\partial q^1}
\left(
\frac{h_2h_3}{h_1}
\frac{\partial f}{\partial q^1}
\right)
+
\frac{\partial}{\partial q^2}
\left(
\frac{h_3h_1}{h_2}
\frac{\partial f}{\partial q^2}
\right)
+
\frac{\partial}{\partial q^3}
\left(
\frac{h_1h_2}{h_3}
\frac{\partial f}{\partial q^3}
\right)
\right].
$$

这与第一章中的结果一致.

## 3.13 微分形式的积分

微分形式天然适合积分. 不同阶数的微分形式对应不同维数的积分区域.

$1$-形式适合沿曲线积分. 若
$$
\omega=\omega_i \mathrm{d} x^i,
$$

而曲线 $C$ 由参数 $t$ 给出:
$$
x^i=x^i(t),
\qquad
a\leq t\leq b,
$$

则
$$
\int_C\omega
=
\int_a^b
\omega_i(x(t))
\frac{\mathrm{d} x^i}{\mathrm{d} t}
\mathrm{d} t.
$$

这就是传统线积分.

$2$-形式适合在曲面上积分. 若
$$
\eta
=
\frac{1}{2}\eta_{ij}\mathrm{d} x^i\wedge \mathrm{d} x^j,
$$

而曲面 $S$ 由参数 $(u,v)$ 给出:
$$
x^i=x^i(u,v),
$$

则积分 $\int_S\eta$ 通过把 $\mathrm{d} x^i$ 拉回到参数平面上计算.

$3$-形式适合在三维区域上积分. 若
$$
\Omega=F\,\mathrm{d} x^1\wedge \mathrm{d} x^2\wedge \mathrm{d} x^3,
$$

则
$$
\int_V\Omega
=
\int_V F\,\mathrm{d} x^1\mathrm{d} x^2\mathrm{d} x^3.
$$

如果使用曲线坐标中的体积形式
$$
\mathrm{vol}
=
\sqrt{g}\,\mathrm{d} x^1\wedge \mathrm{d} x^2\wedge \mathrm{d} x^3,
$$

那么普通体积分可以写成
$$
\int_V f\,\mathrm{d} V
=
\int_V f\,\mathrm{vol}.
$$

因此, 微分形式把“被积函数”和“几何微元”合并成一个整体.

## 3.14 广义 Stokes 公式

广义 Stokes 公式是微分形式理论中最重要的积分定理. 设 $M$ 是一个带边界的定向光滑区域, $\omega$ 是定义在 $M$ 上的适当阶数的微分形式, 则
$$
\int_M \mathrm{d}\omega
=
\int_{\partial M}\omega.
$$

这里 $\partial M$ 表示 $M$ 的边界.

这个公式统一了微积分基本定理、Gauss公式和 Stokes 公式.

### 3.14.1 微积分基本定理

在一维情况下, 令
$$
M=[a,b],
$$

并令 $f$ 是 $0$-形式. 则
$$
\mathrm{d} f=f'(x)\mathrm{d} x.
$$

广义 Stokes 公式给出
$$
\int_{[a,b]}\mathrm{d} f
=
\int_{\partial[a,b]}f.
$$

由于边界为
$$
\partial[a,b]=\{b\}-\{a\},
$$

所以
$$
\int_a^b f'(x)\mathrm{d} x=f(b)-f(a).
$$

这就是微积分基本定理.

### 3.14.2 平面 Green 公式

在二维区域 $D$ 中, 设一次形式为
$$
\omega=P\,\mathrm{d} x+Q\,\mathrm{d} y.
$$

则
$$
\mathrm{d}\omega
=
\mathrm{d} P\wedge \mathrm{d} x+\mathrm{d} Q\wedge \mathrm{d} y.
$$

由于
$$
\mathrm{d} P=P_x\,\mathrm{d} x+P_y\,\mathrm{d} y,
$$

$$
\mathrm{d} Q=Q_x\,\mathrm{d} x+Q_y\,\mathrm{d} y,
$$

所以
$$
\mathrm{d}\omega
=
(P_x\,\mathrm{d} x+P_y\,\mathrm{d} y)\wedge \mathrm{d} x
+
(Q_x\,\mathrm{d} x+Q_y\,\mathrm{d} y)\wedge \mathrm{d} y.
$$

利用
$$
\mathrm{d} x\wedge \mathrm{d} x=0,
\qquad
\mathrm{d} y\wedge \mathrm{d} y=0,
\qquad
\mathrm{d} y\wedge \mathrm{d} x=-\mathrm{d} x\wedge \mathrm{d} y,
$$

得到
$$
\mathrm{d}\omega
=
(Q_x-P_y)\mathrm{d} x\wedge \mathrm{d} y.
$$

广义 Stokes 公式给出
$$
\int_D(Q_x-P_y)\mathrm{d} x\mathrm{d} y
=
\oint_{\partial D}P\,\mathrm{d} x+Q\,\mathrm{d} y.
$$

这就是平面 Green 公式.

### 3.14.3 三维 Stokes 公式

设三维空间中的向量场为 $\boldsymbol{A}$, 其对应一次形式为
$$
A^\flat=A_i \mathrm{d} x^i.
$$

则
$$
\mathrm{d} A^\flat
$$

是一个二次形式. 由
$$
(\nabla\times\boldsymbol{A})^\flat=*\mathrm{d} A^\flat
$$

可知, $\mathrm{d} A^\flat$ 对应旋度的通量形式.

广义 Stokes 公式给出
$$
\int_S \mathrm{d} A^\flat
=
\oint_{\partial S}A^\flat.
$$

写成传统向量形式, 就是
$$
\int_S(\nabla\times\boldsymbol{A})\cdot \mathrm{d}\boldsymbol{S}
=
\oint_{\partial S}\boldsymbol{A}\cdot \mathrm{d}\boldsymbol{l}.
$$

### 3.14.4 三维Gauss公式

设向量场 $\boldsymbol{A}$ 对应一次形式 $A^\flat$. 通量二形式为
$$
*A^\flat.
$$

由散度公式
$$
(\nabla\cdot\boldsymbol{A})\mathrm{vol}
=
\mathrm{d}(*A^\flat),
$$

可知 $\mathrm{d}(*A^\flat)$ 是散度对应的体积形式.

广义 Stokes 公式给出
$$
\int_V \mathrm{d}(*A^\flat)
=
\oint_{\partial V}*A^\flat.
$$

写成传统向量形式, 就是
$$
\int_V\nabla\cdot\boldsymbol{A}\,\mathrm{d} V
=
\oint_{\partial V}\boldsymbol{A}\cdot \mathrm{d}\boldsymbol{S}.
$$

因此, Gauss公式和 Stokes 公式不是两个孤立的定理, 而是同一个广义 Stokes 公式在不同维数和不同阶数微分形式上的表现.

## 3.15 本章小结

本章的核心思想是: 微分形式天然适合描述积分对象, 外微分天然适合描述边界与内部之间的关系.

标量场是 $0$-形式. 对标量场 $f$, 外微分为
$$
\mathrm{d} f=\partial_i f\,\mathrm{d} x^i.
$$

一次形式写作
$$
\omega=\omega_i \mathrm{d} x^i.
$$

它适合沿曲线积分.

二次形式写作
$$
\eta=\frac{1}{2}\eta_{ij}\mathrm{d} x^i\wedge \mathrm{d} x^j.
$$

它适合在曲面上积分.

三次形式写作
$$
\Omega=F\,\mathrm{d} x^1\wedge \mathrm{d} x^2\wedge \mathrm{d} x^3.
$$

它适合在三维区域上积分.

外微分满足
$$
\mathrm{d}^{2}=0.
$$

这统一了向量分析中的两个恒等式:
$$
\nabla\times(\nabla f)=0,
$$

$$
\nabla\cdot(\nabla\times\boldsymbol{A})=0.
$$

在带度规和取向的三维空间中, Hodge 星号把 $p$-形式对应到 $(3-p)$-形式. 借助度规, 向量和一次形式可以通过升降指标互相对应:
$$
A^\flat=A_i \mathrm{d} x^i,
\qquad
A_i=g_{ij}A^j.
$$

传统向量分析中的三个基本微分算符可以写成:
$$
(\nabla f)^\flat=\mathrm{d} f,
$$

$$
(\nabla\times\boldsymbol{A})^\flat=*\mathrm{d} A^\flat,
$$

$$
(\nabla\cdot\boldsymbol{A})\mathrm{vol}=\mathrm{d}(*A^\flat).
$$

广义 Stokes 公式为
$$
\int_M \mathrm{d}\omega
=
\int_{\partial M}\omega.
$$

统一了微积分基本定理、Green 公式、Stokes 公式和 Gauss 公式.
