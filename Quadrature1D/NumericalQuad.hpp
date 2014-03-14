
#ifndef __NUMERICALQUAD_HPP__
#define __NUMERICALQUAD_HPP__

#include "Quadrature1D.hpp"

class NumericalQuad {

protected:
  Quadrature1D * rule;
  std::vector<double> mesh;

public:

  NumericalQuad(){};
  NumericalQuad(const NumericalQuad & a){};

  NumericalQuad(Quadrature1D const * quad):rule(quad->clone()){};
  NumericalQuad(Quadrature1D const * quad,std::vector<double> & dominio);

  ~NumericalQuad(){delete rule;}
  double apply(PtrFunction const & f)const;

};


#endif
