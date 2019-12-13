# step0

手动构建

1. 编译 `g++ main.cpp utils.cpp -std=c++11 -o tbd.exe`
2. 运行 `./tbd.exe`

cmake构建

1. 创建`step0/build`目录
2. 在`step0/build`目录下执行`cmake -S .. -B .`
   * `-S`表示源文件目录Source
   * `-B`表示构建目录Build
3. 在`step0/build`目录下执行`cmake --build .`
4. 在`step0/build`目录下执行`tbd.exe`
