#include "NumericalQuad.hpp"

NumericalQuad::NumericalQuad(Quadrature1D const * quad,std::vector<double> & dominio){

  rule=quad->clone();
  mesh = dominio;

}

double NumericalQuad::apply(PtrFunction const & f)const{

  double result(0);
  for(unsigned int i(0);i<mesh.size()-1;i++){
    double a = mesh[i];
    double b = mesh[i+1];
    result += rule->apply(f,a,b);
  }

  return result;
}
