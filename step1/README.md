# step1

手动构建

1. 生成目标文件 `g++ utils.cpp -c -std=c++11 -o utils.o`
2. 生成目标文件 `g++ main.cpp -c -std=c++11 -o main.o`
3. 生成二进制文件 `g++ main.o utils.o -o tbd.exe`
4. 运行 `./tbd.exe`

手动构建（静态链接库）

1. 生成目标文件 `g++ utils.cpp -c -std=c++11 -o utils.o`
2. 生成静态链接库 `ar -crv libutils.a utils.o`
3. 生成目标文件 `g++ main.cpp -c -std=c++11 -o main.o`
4. 链接静态库并生成二进制文件 `g++ main.o -L . -l utils -o tbd.exe`
   * `-L`指定静态库所在目录
   * `-l`指定具体的静态库文件，自动补充前缀`lib`与后缀`.a`
5. 运行 `./tbd.exe`

cmake构建：命令与step0相同，但`CMakeLists.txt`不同

1. 创建`step1/build`目录
2. 在`step1/build`目录下执行`cmake -S .. -B .`
3. 在`step1/build`目录下执行`cmake --build .`
4. 在`step1/build`目录下执行`./tbd.exe`

相比step0，step1先将`utils.cpp`生成静态库，然后将`main.cpp`链接至该静态库

完成上述步骤后，在`./step1`目录与`./step1/build`目录均生成了`libutils.a`文件
