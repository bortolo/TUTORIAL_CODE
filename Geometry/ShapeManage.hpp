#include "../Include/PolicyCreation.hpp"
#include "Geometry.hpp"


#ifndef __SHAPEMANAGE_HPP__
#define __SHAPEMANAGE_HPP__



template<class CreationPolicy>
class ShapeManage : public CreationPolicy{
private:
 Shape * M_shape;

public:
  ShapeManage();
  ~ShapeManage();
  double measure()const{return M_shape->measure();}

};


template<class CreationPolicy>
ShapeManage<CreationPolicy>::ShapeManage(){
  
  M_shape = CreationPolicy::Create();

}

template<class CreationPolicy>
ShapeManage<CreationPolicy>::~ShapeManage(){
  delete M_shape;
}


#endif
