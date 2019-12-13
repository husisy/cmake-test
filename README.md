# test cmake

前三个step使用g++、cmake两个工具来完成相同的步骤（编译链接），均可正确运行且结果一致

1. `step0` g++把所有文件生成目标文件，cmake把所有文件`add_executable()`
2. `step1` g++先生成静态库再链接，cmake先构建静态库再链接
3. `step2` g++链接外部静态库，cmake链接外部静态库

后三个step与之前类似，只是将其中的函数替换为GPU代码；即使用nvcc、cmake两个工具来完成相同的步骤

1. `step3` g++把所有文件生成目标文件，cmake把所有文件`add_executable()`
2. `step4` g++先生成静态库再链接，cmake先构建静态库再链接
3. `step5` g++链接外部静态库，cmake链接外部静态库**失败** （相同的问题出现在了PQSim-GPU封装成python接口时）
