#ifndef __EVOLUTION_CMAKE__
#define __EVOLUTION_CMAKE__
/**-----------------------------------------------
  * @Copyright (C) 2021 All rights reserved.
  * @date: 2021
  * @file: evolution_cmake
  * @version: v0.0.1
  * @author: aliben.develop@gmail.com
  * @create_date: 2021-08-12 21:02:27
  * @last_modified_date: NO_LAST_MODIFIED_DATE
  * @brief: TODO
  * @details: TODO
  *-----------------------------------------------*/

// Header include
#include <iostream>

// Declaration
namespace Demo
{
  class Obj
  {
    public:
      Obj() = default;
      virtual ~Obj() = default;

    public:
      int func_return1();
      int func_return2();
      void setValue(int value);
      int getValue() const;

    private:
      int value_;
  };

  double func_return10();
  double func_return20();
}
#endif // __EVOLUTION_CMAKE__
