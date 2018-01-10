<%--
  Created by IntelliJ IDEA.
  User: alphb
  Date: 11/12/2017
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>第一章</title>
</head>
<body>
<div style="background-color: #b9def0">
<p>函数的性质：</p>
<ul>
	<li>单调性:</li>
	<p>设y = f(x)在某区间内有定义，如果对于该区间内任意两点x1 < x2恒有f(x1) < f(x2)，则称y = f(x)在该区间内单调增加。</p>
	<p>判定函数y = f(x)单调性的方法：</p>
	<ul style="list-style-type: decimal">
		<li>依定义判断</li>
		<li>依导数的符号判断：</li>
		<p>如果在某区间内总有f(x)' > 0则 f(x)在该区间内单调递增，反之。</p>
	</ul>
	<li>奇偶性:</li>
	<p>设y = f(x)的定义区间D关于远点对称（即若x属于D，则有-x属于D）如果对于D内任意的点x，恒有f(-x) = f(x)，则称f(x)为D内的偶函数，如果恒有f(-x) = -f(x)，则称为奇函数。</p>
	<li>周期性：</li>
	<p>若存在T > 0 对于任意的x，恒有f(x + T) = f(x), 则称y = f(x)为周期函数，使得上述关系式成立的最小正数T，称为f(x)的最小周期，简称为f(x)的周期。</p>
	<li>有界性：</li>
	<p>设y = f(x)在谋区间内有定义。若存在M > 0 ，对于该区间内任意的 x 恒有|f(x)| < M，则称f(x)在该区间内为有界函数。</p>
</ul>
</div>

<div style="background-color: #5cb85c">
	<p>五大基本初等函数:</p>
	<ul style="list-style-type: cjk-ideographic">
		<li>
			幂函数
			<p>一般地说，形如y = x ^ a(a为有理数)的函数，即以底数为自变量，幂为因变量，指数为常数的函数称为幂函数。例如函数y = x^0, y = x^1, y = x^2, y = x^-1 (注：y = x ^-1 / y = x ^0时 x != 0)等都是幂函数。</p>
			<p>
				<img src="img/mi.png" alt="">
			</p>
			<p>
				幂函数图像性质：
			<ul style="list-style-type: decimal">
			<li>a > 0 ，图像都过定点（0，0）和（1，1）；在区间（0，+∞）上单调递增；</li>
			<li>a < 0 ，图像都过定点（1，1）；在区间（0，+∞）上单调递减；</li>
			<li>当 0 < a < 1 时，曲线上凸，当a > l时，曲线下凸。</li>
			<li>当 a = 1时，图像为过点（0，0）和（1，1）的直线。</li>
			<li>当 a = 0 时，y = x ^a 表示过点（1，1）且平行于x轴的直线，（除去点(0,1）。</li>
			</ul>
			</p>
			<p>
				幂函数图像的其他性质：
				<ul style="list-style-type: decimal">
				<li>
					图像的对称性：
					<p>把幂函数y = x^a的幂指数a(只讨论a是有理数的情况)表示成既约分数的形式（整数看作是分母1的分数），则不论 a > 0 还是a < 0>，幂函数y = x ^ a的图像的对称性用口诀记为："子奇母偶孤单单；母奇子偶分两边；分子分母均为奇，原点对称莫忘记：。</p>
				</li>
				<li>
					图像的形状：
					<ul style="list-style-type: lower-alpha">
						<li>若 a > 0 则幂函数 y = x ^a的图像为抛物线形，当 a > 1时，图像在[0,+∞）上是向下凸的；当0 < a < 1 时，图像在[0,+∞）上是向上凸的。  </li>
						<li>若 a < 0，则幂函数 y = x^a的图像是双曲线形，图像与x轴、y轴无限接近，在（0，+∞）上图像都是向下凸的。</li>
					</ul>
				</li>
				</ul>
			<p>
				幂函数的单调性与奇偶性：
				对于幂函数y = x^a（a属于R）
				<ul>
	<li>
		单调性：
		当 a > 0时，函数y = x^a在第一象限内是增函数；当a < 0时，函数y = x^a在第一象限内是减函数。
	</li>
	<li>
		奇偶性：
		<ul style="list-style-type: decimal">
			<li>
				当 a 为偶数，y = x ^a 是偶函数；若a为奇数，y = x ^ a是奇函数。
			</li>
			<li>
				当a为分数，即a = p/q（p，q互素，p，q属于Z）时，若分母q为奇数，则分子p为奇数时，y=x为奇函数；分子p为偶数时，y=x^a 为偶函数，若分母q为偶数，则y=x ^a为非奇非偶函数.
			</li>
		</ul>
	</li>
				</ul>
			</p>
			</p>
		</li>
		<li>
			指数函数
			<p>
				指数函数的定义：
				一般地说，函数y = a^x（a > 0,且a！=1）叫做指数函数，其中x是自变量，函数的定义域是R，值域是（0，+∞）。
			</p>
			<p>
				指数函数的解析式：y=ax（a＞0，且a≠1）
				y = a^x (a > 0,且 a!= 1)
			</p>
		</li>
		<li>对数函数</li>
		<li>三角函数</li>
		<li>反三角函数</li>
	</ul>
</div>

<p></p>
<p>
	极限存在准则与两个重要极限：
</p>
<p>夹逼定理:</p>
<p>如果数列{Xn},{Yn},{Zn}满足下列条件：</p>
<p>1）Yn <= Xn <= Zn (n = 1,2,3……);</p>
<p>2) lim(n趋于无穷大) Yn = a, lim (n趋于无穷大) Zn = a,</p>
<p>则数列{Xn}的极限存在，且Lim (n趋于无穷大) Xn = a</p>
<p>
<button onclick="history.go(-1)">返回</button>
</p>
</body>
</html>
