# step3

手动构建

1. 编译 `nvcc main.cpp utils.cu -std=c++11 -o tbd.exe`
2. 运行 `./tbd.exe`

cmake构建

1. 创建`step3/build`目录
2. 在`step0/build`目录下执行`cmake -S .. -B .`
3. 在`step3/build`目录下执行`cmake --build .`
4. 在`step3/build`目录下执行`./tbd.exe`
