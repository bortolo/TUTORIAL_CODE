#include <stdio.h>
#include <stdlib.h>

#ifndef __POLICYCREATION_HPP__
#define __POLICYCREATION_HPP__

template<class T>
struct OpNewCreator{
  static T * Create()
  {
    return new T;
  }
};


template<class T>
struct MallocCreator{
  static T * Create()
  {
    void * buf = std::malloc(sizeof(T));
    if(!buf) return 0;
    return new(buf) T;
  }
};


#endif
