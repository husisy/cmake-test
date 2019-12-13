# step2

**注意**：该目录不提供`utils.cpp`文件

手动构建

1. 复制静态库 `cp ../step1/libutils.a .` 或者 `cp ../step1/build/libutils.a .`
2. 编译 `g++ main.cpp -std=c++11 -o tbd.exe -L . -l utils`
3. 运行 `./tbd.exe`

cmake构建：命令基本相同，但`CMakeLists.txt`不同

1. 复制静态库 `cp ../step1/libutils.a .` 或者 `cp ../step1/build/libutils.a .`
2. 创建`step2/build`目录
3. 在`step2/build`目录下执行`cmake -S .. -B .`
4. 在`step2/build`目录下执行`cmake --build .`
5. 在`step2/build`目录下执行`./tbd.exe`
