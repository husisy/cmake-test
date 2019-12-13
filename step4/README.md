# step4

手动构建

1. 生成目标文件 `nvcc utils.cu -c -std=c++11 -o utils.o`
2. 生成目标文件 `g++ main.cpp -c -std=c++11 -o main.o`
3. 生成二进制文件 `nvcc main.o utils.o -o tbd.exe`
4. 运行 `./tbd.exe`

手动构建（静态链接库）

1. 生成目标文件 `nvcc utils.cu -c -std=c++11 -o utils.o`
2. 生成静态链接库 `ar -crv libutils.a utils.o`
3. 生成目标文件 `g++ main.cpp -c -std=c++11 -o main.o`
4. 链接静态库并生成二进制文件 `nvcc main.o -L . -l utils -o tbd.exe`
5. 运行 `./tbd.exe`

cmake构建（静态链接库）

1. 创建`step4/build`目录
2. 在`step4/build`目录下执行`cmake -S .. -B .`
   * `-S`表示源文件目录Source
   * `-B`表示构建目录Build
3. 在`step4/build`目录下执行`cmake --build .`
4. 在`step4/build`目录下执行`./tbd.exe`

完成上述步骤后，在`./step4`与`./step4/build`目录都生成了`libutils.a`文件
