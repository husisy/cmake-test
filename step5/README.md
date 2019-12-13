# step5

手动构建

1. 复制静态库 `cp ../step4/libutils.a .` 或者 `cp ../step4/build/libutils.a .`
2. 编译 `nvcc main.cpp -std=c++11 -o tbd.exe -L . -l utils`
3. 运行 `./tbd.exe`

cmake构建 **失败**

1. 复制静态库 `cp ../step4/libutils.a .` 或者 `cp ../step4/build/libutils.a .`
2. 创建`step5/build`目录
3. 在`step5/build`目录下执行`cmake -S .. -B .`
   * `-S`表示源文件目录Source
   * `-B`表示构建目录Build
4. 在`step5/build`目录下执行`cmake --build .`
5. 在`step5/build`目录下执行`tbd.exe`

完成上述步骤后，在`./step4`与`./step4/build`目录都生成了`libutils.a`文件
