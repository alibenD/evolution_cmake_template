/**-----------------------------------------------
  * @Copyright (C) 2021 All rights reserved.
  * @date: 2021
  * @file: example.cpp
  * @version: v0.0.1
  * @author: aliben.develop@gmail.com
  * @create_date: 2021-08-12 23:36:40
  * @last_modified_date: 2021-11-07 21:42:05
  * @brief: TODO
  * @details: TODO
  *-----------------------------------------------*/

//INCLUDE

//CODE
#include <cstdio>
#include <thread>
#include <evolution_cmake/Test_Demo.hh>

inline static int a = 0;

void f()
{
  a++;
}

int main(int argc, char **argv)
{
  int *a = new int[10];
  a[5] = 0;
  volatile int b = a[argc];
  if (b) printf("xx\n");
  Demo::Obj obj;

  auto t1 = std::thread(&f);
  auto t2 = std::thread(&f);
  t1.join();
  t2.join();

  //int stack_array[100];
  //stack_array[1] = 0;
  //return stack_array[argc + 100]; // BOOM
}
