/**-----------------------------------------------
  * @Copyright (C) All rights reserved.
  * @filename: evolution_cmake
  * @author: aliben.develop@gmail.com
  * @created_date: 2021-08-12 21:02:27
  * @last_modified_date: 2021-08-12 23:32:41
  * @description: TODO
  *-----------------------------------------------*/

//INCLUDE
#include <evolution_cmake/Test_Demo.hh>
#include <gtest/gtest.h>

//CODE

using namespace Demo;

TEST(DemoFuncTest, return10)
{
  EXPECT_EQ(10.0, func_return10());
};

TEST(DemoFuncTest, return20)
{
  EXPECT_EQ(20.0, func_return20());
};

int main(int argc, char** argv)
{
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
