# test cmake

**使用说明**：将仓库下载至本地运行（需要`g++ nvcc cmake`工具），然后依次运行每个step（每个step-README包含运行命令）。问题出现在`step5`，所以也可以只运行`step4 step5`（`step5`会用到`step4`产生的一个文件）

**问题描述**：在step5中我希望cmake能够导入step4生成的GPU静态库，然后将`main.cpp`链接至该静态库并完成编译，但执行`cmake --build .`命令时抛错 *已解决*

文件说明（每个step中都包含这些文件）

1. `utils.cpp`：打印`hello`
2. `utils.hpp`：头文件
3. `main.cpp`：调用`utils.hpp`中的打印函数

前三个step使用g++、cmake两个工具来完成相同的步骤（编译链接），均可正确运行且结果一致

1. `step0` g++把所有文件生成目标文件，cmake把所有文件`add_executable()`
2. `step1` g++先生成静态库再链接，cmake先构建静态库再链接
3. `step2` g++链接外部静态库，cmake链接外部静态库

仿照前三个step，只是将其中的打印函数替换为GPU代码；即使用nvcc、cmake两个工具来完成相同的步骤

1. `step3` g++把所有文件生成目标文件，cmake把所有文件`add_executable()`
2. `step4` g++先生成静态库再链接，cmake先构建静态库再链接
3. `step5` g++链接外部静态库，cmake链接外部静态库
