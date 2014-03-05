

#include "Quadrature.hpp"


double Quadrature::integra(PtrFunction f){

  std::cout<<"The rule of quadrature is "<<M_rule<<std::endl;

  return f(1,2,3);
}
