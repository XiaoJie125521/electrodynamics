# 第4章 群论基础与连续对称性

## 4.1 对称性为什么需要群论

前三章已经把曲线坐标、张量和微分形式的语言建立起来. 这些工具解决的是同一个问题: 当坐标或基底改变时, 怎样把几何对象和物理方程写成不依赖具体坐标选择的形式. 本章进一步讨论一个更主动的问题: 若我们不仅改变坐标的描述, 而且真的对系统作平移、旋转或内部相位变换, 哪些结构保持不变, 哪些物理量按确定规则改变?

在物理学中, 对称性不是附加的修辞, 而是组织物理定律的基本原则. 所谓对称性, 是指对系统作某种变换之后, 系统的某些结构保持不变, 或者物理方程保持相同形式.

在三维欧氏空间中, 点的位置矢量记为
$$
\boldsymbol{r}=(x,y,z).
$$
其长度平方为
$$
|\boldsymbol{r}|^2=x^2+y^2+z^2.
$$
若对空间作旋转变换
$$
\boldsymbol{r}'=R\boldsymbol{r},
$$
其中 $R$ 是旋转矩阵, 则旋转保持欧氏长度不变:
$$
|\boldsymbol{r}'|^2=|\boldsymbol{r}|^2.
$$
这说明欧氏长度是旋转变换下的不变量.

群论的作用, 是把这类“可复合、可逆、保持结构”的变换系统化. 对于场论而言, 群论尤其重要. 场论中的基本问题通常不是某个量有几个分量, 而是这个量在对称变换下如何变换. 例如, 标量场、矢量场、张量场和自旋场的区别, 本质上是它们属于不同的群表示.

因此, 本章不把群论当作独立的抽象代数来讲, 而是从物理变换出发. 我们先从平面转动、平移和复合变换中看到群公理的自然来源, 再说明不变量、协变对象和度规保持条件, 最后进入连续群、生成元、$SO(3)$ 与 $SU(2)$. 这条线索将为后续讨论场的对称性和规范结构提供基础语言.

## 4.2 群、群作用与变换群

群是描述可复合变换的基本代数结构. 与其先背定义, 不如先看变换本身怎样自然地逼出群的四条性质.

平面转动是最简单的连续变换群之一. 设 $g(\varphi)$ 表示平面内逆时针转动角度 $\varphi$, 其矩阵表示为
$$
g(\varphi)
=
\begin{pmatrix}
\cos\varphi&-\sin\varphi\\
\sin\varphi&\cos\varphi
\end{pmatrix}.
$$

若先转动角度 $\varphi_1$, 再转动角度 $\varphi_2$, 则总变换为
$$
g(\varphi_2)g(\varphi_1).
$$
直接相乘可得
$$
g(\varphi_2)g(\varphi_1)=g(\varphi_1+\varphi_2).
$$
这说明连续两次平面转动仍是平面转动, 因而平面转动集合对变换复合封闭. 单位元为
$$
g(0)=I,
$$
逆元为
$$
g(\varphi)^{-1}=g(-\varphi).
$$
由于
$$
g(\varphi_2)g(\varphi_1)=g(\varphi_1)g(\varphi_2),
$$
平面转动群 $SO(2)$ 是满足交换律,称为 Abel 群. 这个例子表明, 群乘法在变换群中就是“连续作变换”的复合运算.

平面转动本身是 Abel 的, 但物理中更常见的是不同类型变换的复合. 例如在二维平面上, 平移和旋转都保持距离, 但二者的顺序通常不能交换. 记平移为
$$
T_{\boldsymbol{a}}:\boldsymbol{x}\mapsto \boldsymbol{x}+\boldsymbol{a},
$$
旋转为
$$
R:\boldsymbol{x}\mapsto R\boldsymbol{x}.
$$
则先平移再旋转得到
$$
R\,T_{\boldsymbol{a}}:\boldsymbol{x}\mapsto R\boldsymbol{x}+R\boldsymbol{a},
$$
而先旋转再平移得到
$$
T_{\boldsymbol{a}}\,R:\boldsymbol{x}\mapsto R\boldsymbol{x}+\boldsymbol{a}.
$$
除非 $R\boldsymbol{a}=\boldsymbol{a}$, 两者并不相同. 因此, 即使每一步都保持欧氏距离, 复合变换的顺序仍可能影响最终结果. 平面刚体运动群由平移和旋转共同组成, 它是一个典型的非 Abel 变换群.

现在可以抽象出定义. 设 $G$ 是一个集合, 并在 $G$ 上定义乘法运算
$$
G\times G\to G,
\qquad
(a,b)\mapsto ab.
$$
若满足以下四条性质, 则称 $G$ 是一个群:

- **封闭性** 对任意 $a,b\in G$, 都有
$$
ab\in G.
$$
- **结合律** 对任意 $a,b,c\in G$, 都有
$$
(ab)c=a(bc).
$$
- **单位元** 存在元素 $e\in G$, 使得对任意 $a\in G$, 都有
$$
ea=ae=a.
$$
- **逆元** 对任意 $a\in G$, 存在 $a^{-1}\in G$, 使得
$$
aa^{-1}=a^{-1}a=e.
$$

满足上述公理的代数结构记作 $(G,\cdot)$.

群乘法一般不要求交换. 若对任意 $a,b\in G$ 都有
$$
ab=ba,
$$
则称 $G$ 为交换群, 或 Abel 群; 否则称为非交换群. 平面转动群 $SO(2)$ 是 Abel 群, 平面刚体运动群和三维空间旋转群是非 Abel 群. 多数非阿贝尔规范群也都是非 Abel 群.

物理中最常见的是变换群. 设 $X$ 是一个集合, 群 $G$ 中每个元素 $g$ 都给出一个从 $X$ 到自身的变换:
$$
x\mapsto g\cdot x.
$$
若满足
$$
e\cdot x=x,
$$
以及
$$
g_1\cdot(g_2\cdot x)=(g_1g_2)\cdot x,
$$
则称 $G$ 作用在 $X$ 上.

这里的 $X$ 可以是空间点集合、构型空间、矢量空间、张量空间、函数空间、场的构型空间或方程解空间. 例如, 三维旋转群作用在位置矢量上:
$$
\boldsymbol{r}\mapsto \boldsymbol{r}'=R\boldsymbol{r}.
$$

在场论中, 群作用通常同时包含两部分: 一是自变量的变换, 二是场分量本身的变换. 以矢量场 $\boldsymbol{A}(\boldsymbol{r})$ 为例, 旋转后可写为
$$
\boldsymbol{A}'(\boldsymbol{r}')=R\boldsymbol{A}(\boldsymbol{r}),
\qquad
\boldsymbol{r}'=R\boldsymbol{r}.
$$
这表示变换后的场值在新点 $\boldsymbol{r}'$ 处等于原场值在旧点 $\boldsymbol{r}$ 处经过矢量表示矩阵 $R$ 作用后的结果.

也可以在同一个坐标点比较变换前后的场构型, 此时写成
$$
\boldsymbol{A}'(\boldsymbol{r})=R\boldsymbol{A}(R^{-1}\boldsymbol{r}).
$$
两种写法描述的是同一个物理变换, 只是比较方式不同. 后续讨论场的对称变换时也会反复使用这种区分.

## 4.3 不变量与协变对象

群论在物理中的一个核心作用, 是刻画哪些量在变换下保持不变. 设 $G$ 作用在集合 $X$ 上. 如果函数 $I:X\to\mathbb{R}$ 满足
$$
I(g\cdot x)=I(x),
\qquad
\forall g\in G,
$$
则称 $I$ 是该群作用下的不变量.

例如, 三维欧氏空间中, 旋转群 $SO(3)$ 保持长度平方不变:
$$
|\boldsymbol{r}|^2=\boldsymbol{r}\cdot\boldsymbol{r}.
$$
若
$$
\boldsymbol{r}'=R\boldsymbol{r},
\qquad
R^TR=I,
$$
则
$$
|\boldsymbol{r}'|^2
=
\boldsymbol{r}'^T\boldsymbol{r}'
=
\boldsymbol{r}^TR^TR\boldsymbol{r}
=
\boldsymbol{r}^T\boldsymbol{r}
=
|\boldsymbol{r}|^2.
$$
因此 $|\boldsymbol{r}|^2$ 是旋转不变量.

除了不变量, 还存在按确定规则变换的对象. 它们的分量数值可能改变, 但变换规律保持固定. 例如矢量分量在旋转下满足
$$
A'^i=R^i{}_jA^j.
$$
二阶张量分量满足
$$
T'^{ij}=R^i{}_kR^j{}_lT^{kl}.
$$
这类对象不是不变的, 但它们具有确定的协变变换规律.

物理中常说的“方程协变”, 指的不是每个分量不变, 而是方程两边按同样的规则变换, 从而保持方程形式不变. 例如若
$$
A^i=B^i
$$
在一个坐标系中成立, 并且 $A^i$ 与 $B^i$ 都按矢量方式变换, 则变换后仍有
$$
A'^i=B'^i.
$$
因此方程形式保持不变. 这一思想是理解一般协变方程的基础.

### 4.3.1 保持度规的变换

许多重要的物理变换可以统一理解为保持某个度规张量不变的线性变换. 设线性变换写为
$$
\boldsymbol{v}'=A\boldsymbol{v}.
$$
若空间中的内积由度规矩阵 $g$ 定义为
$$
|\boldsymbol{v}|^2=\boldsymbol{v}^Tg\boldsymbol{v},
$$
则要求长度在变换下不变, 即
$$
\boldsymbol{v}'^Tg\boldsymbol{v}'=\boldsymbol{v}^Tg\boldsymbol{v}.
$$
代入 $\boldsymbol{v}'=A\boldsymbol{v}$, 得到
$$
\boldsymbol{v}^TA^TgA\boldsymbol{v}=\boldsymbol{v}^Tg\boldsymbol{v}.
$$
由于该式对任意 $\boldsymbol{v}$ 成立, 必须有
$$
A^TgA=g.
$$
因此, 不同几何结构中的“旋转”可以看作保持相应度规的变换. 若 $g=I$, 则得到欧氏正交群. 这个观点把长度、角度与变换群之间的关系清楚地联系起来.

这也是几何中常说的“不变量观点”. 一种几何结构可以由它在某个变换群下保持不变的量来刻画. 欧氏几何的核心不变量是正定内积
$$
\boldsymbol{v}\cdot\boldsymbol{v}=v^iv^j\delta_{ij},
$$
因此保持 $\delta_{ij}$ 的变换给出正交群. 从这个角度看, “旋转”并不只是某个具体图形的转动, 而是保持欧氏度规不变的线性变换.

## 4.4 常见矩阵群

物理中的许多变换都可以用矩阵表示, 因此矩阵群是最常用的群.

### 4.4.1 一般线性群与特殊线性群

$n$ 维实一般线性群定义为
$$
GL(n,\mathbb{R})
=
\{A\in M_n(\mathbb{R})\mid \det A\neq 0\}.
$$
它包含所有可逆实矩阵, 群运算是矩阵乘法. 单位元是单位矩阵 $I$, 每个 $A\in GL(n,\mathbb{R})$ 都有逆矩阵 $A^{-1}$.

特殊线性群定义为
$$
SL(n,\mathbb{R})
=
\{A\in GL(n,\mathbb{R})\mid \det A=1\}.
$$
由于
$$
\det(AB)=\det A\det B,
$$
所以 $SL(n,\mathbb{R})$ 在矩阵乘法下封闭. 该群表示保持有向体积不变的线性变换.

### 4.4.2 正交群与特殊正交群

$n$ 维正交群定义为
$$
O(n)
=
\{R\in GL(n,\mathbb{R})\mid R^TR=I\}.
$$
等价地, $R$ 保持欧氏度规不变:
$$
R^T\delta R=\delta.
$$
若矢量变换为
$$
\boldsymbol{x}'=R\boldsymbol{x},
$$
则长度平方满足
$$
\boldsymbol{x}'^T\boldsymbol{x}'
=
\boldsymbol{x}^TR^TR\boldsymbol{x}
=
\boldsymbol{x}^T\boldsymbol{x}.
$$
因此 $O(n)$ 是保持欧氏长度不变的线性变换群.

由 $R^TR=I$ 可得
$$
(\det R)^2=1,
$$
所以
$$
\det R=\pm 1.
$$
其中 $\det R=1$ 的部分表示保持取向的旋转; $\det R=-1$ 的部分包含反射.

特殊正交群定义为
$$
SO(n)
=
\{R\in O(n)\mid \det R=1\}.
$$
其中 $SO(3)$ 是三维空间中真正的旋转群, 不包含镜面反射. 在物理中, $SO(3)$ 描述空间各向同性.

### 4.4.3 酉群与特殊酉群

在复线性空间中, 保持厄米内积的矩阵构成酉群:
$$
U(n)
=
\{U\in GL(n,\mathbb{C})\mid U^\dagger U=I\}.
$$
若进一步要求行列式为 $1$, 得到特殊酉群:
$$
SU(n)
=
\{U\in U(n)\mid \det U=1\}.
$$
在量子力学和场论中, 酉群非常重要. $U(1)$ 与电磁相位对称性有关, $SU(2)$ 和 $SU(3)$ 分别出现在弱相互作用和强相互作用的规范结构中. 本章只把它们作为重要矩阵群列出, 具体物理意义将在后续章节讨论.

### 4.4.4 $SO(2)$ 与平移群

为了把“连续对称性”的概念说清楚, 先比较两类最基本的欧氏变换: 平面转动和平面平移. 它们都依赖连续参数, 都可以连续复合, 但参数合成规律和作用对象略有不同.

在二维欧氏空间中, 度规为
$$
g_E=
\begin{pmatrix}
1&0\\
0&1
\end{pmatrix}.
$$
保持 $g_E$ 的特殊正交变换为
$$
R(\theta)
=
\begin{pmatrix}
\cos\theta&-\sin\theta\\
\sin\theta&\cos\theta
\end{pmatrix},
\qquad
R(\theta)^Tg_ER(\theta)=g_E.
$$
它保持二次型
$$
x^2+y^2
$$
不变.

平移则写成
$$
T_{\boldsymbol{a}}:\boldsymbol{x}\mapsto \boldsymbol{x}+\boldsymbol{a},
\qquad
\boldsymbol{a}=(a^1,a^2).
$$
两个平移连续作用时,
$$
T_{\boldsymbol{b}}T_{\boldsymbol{a}}\boldsymbol{x}
=
\boldsymbol{x}+\boldsymbol{a}+\boldsymbol{b}
=
T_{\boldsymbol{a}+\boldsymbol{b}}\boldsymbol{x}.
$$
因此二维平移群有两个连续参数, 且参数按向量加法合成. 平移群本身是 Abel 群:
$$
T_{\boldsymbol{b}}T_{\boldsymbol{a}}
=
T_{\boldsymbol{a}}T_{\boldsymbol{b}}.
$$
不过, 平移与旋转合在一起构成平面欧氏运动群时, 一般不再交换. 因为旋转会改变平移矢量的方向, 所以“先平移后旋转”和“先旋转后平移”通常对应不同变换.

## 4.5 三维旋转群 $SO(3)$

三维旋转矩阵 $R$ 满足
$$
R^TR=I,
\qquad
\det R=1.
$$
因此
$$
R\in SO(3).
$$
如果位置矢量变换为
$$
\boldsymbol{r}'=R\boldsymbol{r},
$$
那么任意两个矢量的内积保持不变. 设
$$
\boldsymbol{a}'=R\boldsymbol{a},
\qquad
\boldsymbol{b}'=R\boldsymbol{b}.
$$
则
$$
\boldsymbol{a}'\cdot\boldsymbol{b}'
=
\boldsymbol{a}'^T\boldsymbol{b}'
=
\boldsymbol{a}^TR^TR\boldsymbol{b}
=
\boldsymbol{a}^T\boldsymbol{b}
=
\boldsymbol{a}\cdot\boldsymbol{b}.
$$
因此旋转保持长度和角度.

### 4.5.1 绕坐标轴的旋转

绕 $z$ 轴旋转角度 $\theta$ 的矩阵为
$$
R_z(\theta)
=
\begin{pmatrix}
\cos\theta&-\sin\theta&0\\
\sin\theta&\cos\theta&0\\
0&0&1
\end{pmatrix}.
$$
绕 $x$ 轴旋转角度 $\theta$ 的矩阵为
$$
R_x(\theta)
=
\begin{pmatrix}
1&0&0\\
0&\cos\theta&-\sin\theta\\
0&\sin\theta&\cos\theta
\end{pmatrix}.
$$
绕 $y$ 轴旋转角度 $\theta$ 的矩阵为
$$
R_y(\theta)
=
\begin{pmatrix}
\cos\theta&0&\sin\theta\\
0&1&0\\
-\sin\theta&0&\cos\theta
\end{pmatrix}.
$$
这些矩阵都满足
$$
R^TR=I,
\qquad
\det R=1.
$$

由这些有限旋转在 $\theta=0$ 处求导, 可以得到 $SO(3)$ 在三维矢量表示中的实反对称生成元:
$$
L_x=
\left.
\frac{\mathrm{d} R_x(\theta)}{\mathrm{d}\theta}
\right|_{\theta=0}
=
\begin{pmatrix}
0&0&0\\
0&0&-1\\
0&1&0
\end{pmatrix},
$$
$$
L_y=
\left.
\frac{\mathrm{d} R_y(\theta)}{\mathrm{d}\theta}
\right|_{\theta=0}
=
\begin{pmatrix}
0&0&1\\
0&0&0\\
-1&0&0
\end{pmatrix},
\qquad
L_z=
\left.
\frac{\mathrm{d} R_z(\theta)}{\mathrm{d}\theta}
\right|_{\theta=0}
=
\begin{pmatrix}
0&-1&0\\
1&0&0\\
0&0&0
\end{pmatrix}.
$$
它们满足
$$
L_i^T=-L_i,
$$
这正是无穷小正交变换的条件. 对任意无穷小旋转
$$
R=I+\delta\theta^iL_i,
$$
由 $R^TR=I$ 保留到一阶可得
$$
(\delta\theta^iL_i)^T= -\delta\theta^iL_i.
$$
反过来, 任意三维反对称矩阵都只有三个独立参数, 因而都可以写成 $\delta\theta^iL_i$ 的形式. 这说明三维旋转群有三个独立生成元, 对应绕三条坐标轴的无穷小旋转.

生成元不对易:
$$
[L_x,L_y]=L_z,
\qquad
[L_y,L_z]=L_x,
\qquad
[L_z,L_x]=L_y.
$$
因此三维旋转的顺序会影响最终结果. 这与平面旋转 $SO(2)$ 的 Abel 性形成对比.

为了实际描述一般三维旋转, 常用欧拉角把任意旋转分解成三次绕坐标轴的旋转. 在一种常用约定下,
$$
R(\alpha,\beta,\gamma)
=
R_z(\alpha)R_y(\beta)R_z(\gamma).
$$
这表示先后用三个角参数描述一个一般旋转. 不同教材可能采用不同的轴序和主动、被动约定, 但共同点是: $SO(3)$ 是三参数李群, 而三个参数背后的局部结构由上面的三个生成元及其对易关系决定.

### 4.5.2 标量、矢量与张量的旋转变换

在旋转群下, 标量不变:
$$
\varphi'=\varphi.
$$
矢量按
$$
A'^i=R^i{}_jA^j
$$
变换. 二阶张量按
$$
T'^{ij}=R^i{}_kR^j{}_lT^{kl}
$$
变换. 更一般地, 三阶张量满足
$$
T'^{ijk}
=
R^i{}_aR^j{}_bR^k{}_cT^{abc}.
$$
物理量的类型不是由分量个数简单决定, 而是由其变换规律决定. 例如三维中, 一个有三个分量的对象未必是矢量. 只有当它在旋转下满足
$$
A'^i=R^i{}_jA^j
$$
时, 才能称为矢量.

## 4.6 群表示

群本身是抽象的. 为了让群作用在物理量上, 需要把群元素表示成线性空间上的线性变换. 这就是群表示.

设 $V$ 是一个线性空间. 若映射
$$
D:G\to GL(V)
$$
满足
$$
D(g_1g_2)=D(g_1)D(g_2),
$$
并且
$$
D(e)=I,
$$
则称 $D$ 是群 $G$ 在空间 $V$ 上的一个表示. 这里 $V$ 称为表示空间.

物理中的标量、矢量、张量、旋量和场函数, 都可以看作某个群表示空间中的元素.

### 4.6.1 平凡表示

如果对任意 $g\in G$, 都有
$$
D(g)=1,
$$
则称这是平凡表示. 标量在旋转下不变, 因此标量属于旋转群的平凡表示:
$$
\varphi'=\varphi.
$$

### 4.6.2 矢量表示

三维旋转群 $SO(3)$ 的自然矢量表示, 是把群元素 $R$ 本身作为矩阵作用在 $\mathbb{R}^3$ 上:
$$
\boldsymbol{A}'=R\boldsymbol{A}.
$$
分量形式为
$$
A'^i=R^i{}_jA^j.
$$
这就是 $SO(3)$ 的三维矢量表示.

### 4.6.3 张量积表示

如果 $A^i$ 和 $B^j$ 都按矢量表示变换, 则它们的张量积
$$
T^{ij}=A^iB^j
$$
按二阶张量表示变换. 因为
$$
A'^i=R^i{}_kA^k,
\qquad
B'^j=R^j{}_lB^l,
$$
所以
$$
T'^{ij}
=
A'^iB'^j
=
R^i{}_kR^j{}_lT^{kl}.
$$
这说明二阶张量表示是两个矢量表示的张量积. 类似地, 高阶张量表示可以由多个基本表示的张量积得到.

### 4.6.4 场作为表示

在场论中, 场不仅依赖空间点, 还带有自身的分量结构. 标量场写为
$$
\varphi(\boldsymbol{x}),
$$
矢量场写为
$$
\boldsymbol{A}(\boldsymbol{x}),
$$
张量场写为
$$
T^{ij}(\boldsymbol{x}).
$$
场在对称变换下通常同时发生两类变化: 自变量的变换和场分量的变换.

例如在空间旋转
$$
\boldsymbol{x}'=R\boldsymbol{x}
$$
下, 标量场满足
$$
\varphi'(\boldsymbol{x}')=\varphi(\boldsymbol{x}).
$$
矢量场满足
$$
\boldsymbol{A}'(\boldsymbol{x}')=R\boldsymbol{A}(\boldsymbol{x}),
$$
分量形式为
$$
A'^i(\boldsymbol{x}')=R^i{}_jA^j(\boldsymbol{x}).
$$
二阶张量场满足
$$
T'^{ij}(\boldsymbol{x}')
=
R^i{}_kR^j{}_lT^{kl}(\boldsymbol{x}).
$$
这就是“场属于某个群表示”的具体含义. 标量场属于平凡表示, 矢量场属于矢量表示, 二阶张量场属于张量积表示.

## 4.7 连续群、生成元与李代数

许多物理对称性依赖连续参数. 例如旋转角度、平移距离和内部相位角都可以连续变化. 这类连续变换构成李群.

粗略地说, 李群是同时具有群结构和光滑流形结构的对象. 对物理而言, 最重要的是: 李群可以在单位元附近作无穷小展开, 而整个群的局部结构由生成元决定.

若一个李群由 $r$ 个连续参数描述, 可以把群元写成
$$
g(\alpha)=g(\alpha^1,\alpha^2,\cdots,\alpha^r),
\qquad
g(0)=e.
$$
群乘法仍然封闭, 因而存在某个参数合成函数 $f$ 使得
$$
g(\alpha)g(\beta)=g(f(\alpha,\beta)).
$$
单位元条件意味着
$$
f(\alpha,0)=f(0,\alpha)=\alpha.
$$
逆元条件意味着存在参数 $\alpha^{-1}$, 使
$$
f(\alpha,\alpha^{-1})=f(\alpha^{-1},\alpha)=0.
$$
结合律则要求
$$
f(\alpha,f(\beta,\gamma))=f(f(\alpha,\beta),\gamma).
$$
这些关系说明, 李群不仅是一族带参数的矩阵或算符, 参数之间的复合规律也被群结构严格限制.

在单位元附近展开群元,
$$
g(\alpha)
=
I+\alpha^aX_a+O(\alpha^2),
$$
其中
$$
X_a=
\left.
\frac{\partial g(\alpha)}{\partial \alpha^a}
\right|_{\alpha=0}
$$
称为李群的生成元. 生成元描述的是从单位元出发的无穷小方向. 对矩阵群来说, 它们就是单位元处切空间中的矩阵.

设两个无穷小变换分别由参数 $\beta^i$ 和 $\gamma^j$ 生成. 群交换子
$$
g(\beta)^{-1}g(\gamma)^{-1}g(\beta)g(\gamma)
$$
在最低非平凡阶中给出
$$
I+\beta^i\gamma^j[X_i,X_j]+O(\beta\gamma^2,\beta^2\gamma).
$$
由于群乘法封闭, 这个结果仍必须对应某个无穷小群元, 所以生成元的对易子可以写成生成元的线性组合:
$$
[X_i,X_j]=C_{ij}{}^kX_k.
$$
常数 $C_{ij}{}^k$ 称为结构常数, 它们刻画李群在单位元附近的非交换结构. 这组对易关系就是李代数.

设 $g(\alpha)$ 是一个单参数连续变换, 满足
$$
g(0)=e.
$$
若 $D(g(\alpha))$ 是其表示, 则在 $\alpha=0$ 附近可以写成
$$
D(g(\alpha))
=
I-\frac{i}{\hbar}\alpha \hat{Q}+O(\alpha^2).
$$
其中 $\hat{Q}$ 称为该单参数变换的物理生成元. 有限变换可写为
$$
D(g(\alpha))
=
\exp\left(-\frac{i}{\hbar}\alpha\hat{Q}\right).
$$
这里采用量子力学和场论中常见的约定: 生成元取为厄米算符, 指数中显式出现 $-i/\hbar$. 如果采用数学中的实反对称矩阵生成元, 则公式中不会出现该因子. 两种约定等价, 但符号形式不同.

从无穷小变换到有限变换的过程可以直接由群的复合性质理解. 若把有限参数 $\alpha$ 分成 $N$ 份, 则
$$
D(g(\alpha))=\bigl[D(g(\alpha/N))\bigr]^N.
$$
当 $N$ 很大时, $\alpha/N$ 是无穷小量, 故
$$
D(g(\alpha/N))
=
I-\frac{i}{\hbar}\frac{\alpha}{N}\hat{Q}+O(N^{-2}).
$$
于是
$$
D(g(\alpha))
=
\lim_{N\to\infty}
\left(
I-\frac{i}{\hbar}\frac{\alpha}{N}\hat{Q}
\right)^N
=
\exp\left(-\frac{i}{\hbar}\alpha\hat{Q}\right).
$$
这说明有限连续变换可以看作无穷小变换的连续复合, 生成元正是控制这种无穷小变化的算符.

### 4.7.1 二维旋转的生成元

二维旋转矩阵为
$$
R(\theta)
=
\begin{pmatrix}
\cos\theta&-\sin\theta\\
\sin\theta&\cos\theta
\end{pmatrix}.
$$
它满足 $R(0)=I$. 若采用实矩阵生成元 $J$, 则
$$
R(\theta)=\exp(\theta J),
$$
其中
$$
J
=
\left.
\frac{dR(\theta)}{d\theta}
\right|_{\theta=0}
=
\begin{pmatrix}
0&-1\\
1&0
\end{pmatrix}.
$$
由于
$$
J^2=-I,
$$
所以
$$
\exp(\theta J)
=
\cos\theta\,I+\sin\theta\,J
=
R(\theta).
$$

若采用物理中的厄米生成元 $\hat{J}$, 则有限旋转通常写为
$$
U(\theta)
=
\exp\left(-\frac{i}{\hbar}\theta\hat{J}\right).
$$
对普通二维矢量表示而言, 可以取
$$
\hat{J}=i\hbar J,
$$
从而 $U(\theta)=R(\theta)$. 本讲义后续涉及物理生成元时采用厄米约定.

### 4.7.2 李代数与对易关系

连续群的生成元构成李代数. 李代数的核心运算是对易子. 对两个算符 $\hat{X},\hat{Y}$, 定义
$$
[\hat{X},\hat{Y}]=\hat{X}\hat{Y}-\hat{Y}\hat{X}.
$$
若一组生成元 $\hat{T}_a$ 在对易子下封闭, 即
$$
[\hat{T}_a,\hat{T}_b]
=
i\hbar f_{ab}{}^c\hat{T}_c,
$$
则这些生成元构成李代数. 其中 $f_{ab}{}^c$ 称为结构常数.

对易关系可以从两个无穷小变换的交换失败中看出. 考虑两个小参数变换
$$
U_a=I-\frac{i}{\hbar}\alpha^a\hat{T}_a,
\qquad
U_b=I-\frac{i}{\hbar}\beta^b\hat{T}_b.
$$
若先作 $U_b$ 再作 $U_a$, 与先作 $U_a$ 再作 $U_b$ 的结果不同, 其差异在二阶小量中由对易子控制. 形式上, 群交换子
$$
U_a^{-1}U_b^{-1}U_aU_b
$$
在最低非平凡阶中包含
$$
[\hat{T}_a,\hat{T}_b].
$$
因此, 李代数刻画的是连续群在单位元附近的非交换结构.

对于 Abel 群, 生成元彼此对易:
$$
[\hat{T}_a,\hat{T}_b]=0.
$$
对于非 Abel 群, 生成元一般不对易:
$$
[\hat{T}_a,\hat{T}_b]\neq 0.
$$
非对易性在场论中非常重要. 普通电磁规范群 $U(1)$ 是 Abel 群, 而 Yang-Mills 理论中的规范群通常是非 Abel 群.

### 4.7.3 $SO(3)$ 的李代数

上面在三维矢量表示中得到了实反对称生成元 $L_i$. 若采用物理中常用的厄米生成元约定, 可以把角动量生成元记为
$$
\hat{J}_1,\hat{J}_2,\hat{J}_3.
$$
在三维矢量表示中, 两种约定可取为
$$
\hat{J}_i=i\hbar L_i.
$$
于是
$$
\exp\left(
-\frac{i}{\hbar}\theta^i\hat{J}_i
\right)
=
\exp(\theta^iL_i),
$$
与前面旋转矩阵的写法一致. 物理约定的好处是生成元是厄米算符, 可以直接对应可观测量. 它们满足
$$
[\hat{J}_i,\hat{J}_j]
=
i\hbar\varepsilon_{ijk}\hat{J}_k.
$$
有限旋转可写为
$$
U(R)
=
\exp\left(
-\frac{i}{\hbar}\theta^i\hat{J}_i
\right).
$$
其中 $\theta^i$ 表示绕各空间轴的旋转参数.

在三维矢量表示中, 若继续使用实反对称矩阵生成元 $L_i$ 描述旋转矩阵本身, 例如绕 $z$ 轴的有限旋转可写为
$$
R_z(\theta)=\exp(\theta L_z).
$$
这与物理厄米生成元约定并不矛盾, 只是作用空间和符号约定不同.

生成元决定物理量在无穷小对称变换下的变化. 例如在量子力学中, 态矢量在无穷小旋转下变为
$$
|\psi'\rangle
=
\left(
1-\frac{i}{\hbar}\delta\theta^i\hat{J}_i
\right)|\psi\rangle.
$$
这说明角动量是空间旋转的生成元.

### 4.7.4 $SU(2)$ 与 Pauli 矩阵简介

在量子力学中, 旋转不仅可以作用在普通三维矢量上, 也可以作用在自旋态上. 自旋 $1/2$ 态的表示空间是二维复线性空间, 相关的群为 $SU(2)$.

先看为什么 $SU(2)$ 的生成元会由三个矩阵给出. 设无穷小变换写为
$$
U=I+\varepsilon.
$$
酉条件 $U^\dagger U=I$ 给出
$$
\varepsilon^\dagger=-\varepsilon,
$$
即 $\varepsilon$ 是反厄米矩阵. 特殊酉条件 $\det U=1$ 在无穷小情况下等价于
$$
\operatorname{tr}\varepsilon=0.
$$
因此 $SU(2)$ 的无穷小生成元来自 $2\times2$ 反厄米无迹矩阵. 若写成
$$
\varepsilon=-\frac{i}{2}\theta^a\sigma_a,
$$
则 $\sigma_a$ 是厄米无迹矩阵, 可取为 Pauli 矩阵:
$$
\sigma_1=
\begin{pmatrix}
0&1\\
1&0
\end{pmatrix},
\qquad
\sigma_2=
\begin{pmatrix}
0&-i\\
i&0
\end{pmatrix},
\qquad
\sigma_3=
\begin{pmatrix}
1&0\\
0&-1
\end{pmatrix}.
$$
有限 $SU(2)$ 变换可写为
$$
U(\boldsymbol{\theta})
=
\exp\left(
-\frac{i}{2}\theta^a\sigma_a
\right).
$$
这些矩阵满足
$$
[\sigma_i,\sigma_j]
=
2i\varepsilon_{ijk}\sigma_k,
$$
以及
$$
\{\sigma_i,\sigma_j\}
=
2\delta_{ij}I.
$$
由对易关系和反对易关系合起来可得
$$
\sigma_i\sigma_j
=
\delta_{ij}I+i\varepsilon_{ijk}\sigma_k.
$$
因此对任意三维向量 $\boldsymbol{A}$ 和 $\boldsymbol{B}$,
$$
(\boldsymbol{\sigma}\cdot\boldsymbol{A})(\boldsymbol{\sigma}\cdot\boldsymbol{B})
=
\boldsymbol{A}\cdot\boldsymbol{B}
+i\boldsymbol{\sigma}\cdot(\boldsymbol{A}\times\boldsymbol{B}).
$$
这条恒等式在自旋计算、电磁相互作用和多分量波动方程中都会反复出现.

若定义
$$
\hat{S}_i=\frac{\hbar}{2}\sigma_i,
$$
则有
$$
[\hat{S}_i,\hat{S}_j]
=
i\hbar\varepsilon_{ijk}\hat{S}_k.
$$
这与角动量代数相同. 因此, $SU(2)$ 给出了旋转群在自旋空间中的重要表示. 更深入地, $SU(2)$ 是 $SO(3)$ 的双覆盖: $SU(2)$ 中相差一个整体负号的两个群元素对应于同一个三维空间旋转. 这个事实是自旋 $1/2$ 粒子在旋转 $2\pi$ 后态矢量变号的群论来源.

## 4.8 协变方程的群论理解

设群 $G$ 作用在一组场 $\varphi$ 上, 某个方程写成
$$
\mathcal E[\varphi]=0,
$$
若对群中任意变换 $g$, 变换后的场 $\varphi'=g\cdot\varphi$ 仍满足同样形式的方程
$$
\mathcal E[\varphi']=0,
$$
则称该方程在群 $G$ 下协变. 这里的重点不是某个分量数值是否不变, 而是方程两边在群作用下是否仍属于同一类对象, 并以同样规则变换.

如果方程两边都是同类型张量或同一群表示中的对象, 则协变性通常可以直接保证. 例如, 对任意群表示 $D(g)$, 若
$$
A=B,
$$
且两边都按同一表示变换,
$$
A'=D(g)A,
\qquad
B'=D(g)B,
$$
则由 $A=B$ 立即得到
$$
A'=B'.
$$
这就是方程形式保持不变的群论原因.

以空间旋转为例, 若某个方程写成矢量形式
$$
\boldsymbol{A}=\boldsymbol{B},
$$
且两边都按矢量表示变换, 则旋转后有
$$
\boldsymbol{A}'=R\boldsymbol{A},
\qquad
\boldsymbol{B}'=R\boldsymbol{B}.
$$
由 $\boldsymbol{A}=\boldsymbol{B}$ 可得
$$
\boldsymbol{A}'=\boldsymbol{B}'.
$$
因此方程形式保持不变.

对于标量方程, 例如
$$
\boldsymbol{A}\cdot\boldsymbol{A}=C,
$$
左边是旋转标量, 右边 $C$ 也是标量, 因此方程天然具有旋转不变性.

这给出构造对称方程的基本原则: 方程中的每一项必须具有相同的群表示类型. 如果某一项是标量, 则同一等式中与它相加或相等的量也应是标量; 如果某一项是矢量, 则方程两边必须都是同一矢量表示中的对象; 如果某一项是二阶张量, 则方程两边必须都是同类型二阶张量. 这就是协变方程的群论本质.

## 4.9 本章小结

本章建立了场论所需的群论基础. 群是具有封闭性、结合律、单位元和逆元的代数结构. 物理中最重要的群通常是变换群, 群作用描述群元素如何作用在空间点、矢量、张量、场或方程上.

群论首先用于描述不变量. 旋转群保持欧氏长度:
$$
x^2+y^2+z^2,
$$
除了不变量, 物理中还需要研究协变对象, 即按确定表示变换的量. 方程协变性的核心在于方程两边具有相同的变换规律.

常见矩阵群包括
$$
GL(n,\mathbb{R}),
\qquad
SL(n,\mathbb{R}),
\qquad
O(n),
\qquad
SO(n),
$$
以及复空间中的
$$
U(n),
\qquad
SU(n).
$$
其中 $SO(3)$ 描述三维空间旋转, $U(1)$ 和 $SU(n)$ 则常用于描述复空间中的相位或内部对称性.

群表示描述群元素如何作为线性变换作用在不同类型的物理量上. 标量、矢量、张量和场的区别, 本质上是它们属于不同的群表示. 场的变换同时包括自变量的变换和场分量的变换.

连续群可以通过无穷小生成元理解. 采用物理约定时, 有限变换通常写作
$$
U(\alpha)
=
\exp\left(
-\frac{i}{\hbar}\alpha\hat{Q}
\right),
$$
其中 $\hat{Q}$ 是厄米生成元. 生成元的对易关系构成李代数, 例如三维旋转生成元满足
$$
[\hat{J}_i,\hat{J}_j]
=
i\hbar\varepsilon_{ijk}\hat{J}_k.
$$
本章只作群论与连续对称性的基础介绍; 后续可在此基础上继续讨论具体物理系统中的空间对称性、内部对称性和规范结构.
