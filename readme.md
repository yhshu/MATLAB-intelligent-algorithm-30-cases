阅读本仓库的代码，请参考《MATLAB智能算法30个案例分析》。

需要遗传算法工具箱 gatbx.
### chapter1 谢菲尔德大学的MATLAB遗传算法工具箱
example1.m 一元函数优化

example2.m 多元函数优化

### chapter2 基于遗传算法和非线性规划的函数寻优方法
经典非线性规划算法大多采用梯度下降的方法求解，局部搜索能力较强，但是全局搜索能力较弱。
遗传算法采用选择、交叉和变异算子进行搜索，全局搜索能力较强，但是局部搜索能力较弱，一般只能得到问题的次优解，而不是最优解。
因此本案例结合了两种算法的优点，一方面采用遗传算法进行全局搜索，一方面采用非线性规划算法进行局部搜索，以得到问题的全局最优解。

### chapter3 基于遗传算法的BP神经网络优化算法
BP神经网络虽然是人工神经网络中应用最广泛的算法，但是也存在一些缺陷，例如学习收敛速度太慢、不能保证收敛到全局最小点、网络结构不易确定。网络结构、初始连接权值和阈值的选择对网络训练的影响很大，但是又无法准确获得，针对这些特点可以采用遗传算法对神经网络进行优化。

data.mat中，P是训练集输入、T是训练集输出、P_test是测试集输入、T_test是测试集输出。

该BP神经网络训练时间可能较长。

### chapter4 基于遗传算法的TSP算法
TSP是典型的NP完全问题。

该算法的局限性：问题规模较小时，得到的一般都是最优解；当规模比较大时，一般只能得到近似解。这时可以通过增加种群大小和增加最大遗传代数使得优化值更接近最优解。

### chapter5 基于遗传算法的LQR控制器优化设计

### chapter6 遗传算法工具箱详解及应用