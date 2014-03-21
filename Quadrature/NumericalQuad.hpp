#include <iostream>

#ifndef __NUMERICALQUAD_HPP__
#define __NUMERICALQUAD_HPP__

#include "../Geometry/Geometry.hpp"
#include "../QuadratureRules/Quadrature.hpp"
#include "../QuadratureRules/Quadrature1D.hpp"

//==================================

template<int dim>
class NumericalQuad {

protected:
  Quadrature1D * rule;
  mymesh<myelement<dim> > mesh;

public:

  NumericalQuad(){};
  NumericalQuad(const NumericalQuad & a){};
  NumericalQuad(const Quadrature1D * quad):rule(quad->clone()){};
  NumericalQuad(const Quadrature1D * quad,mymesh<myelement<dim> > & dominio);
  ~NumericalQuad(){delete rule;}

  // void SetRule(Quadrature1D const * quad);
  //void SetDom(std::vector<double> const & dom);
  double apply(PtrFunction const & f)const;

};

template<int dim>
NumericalQuad<dim>::NumericalQuad(const Quadrature1D * quad,mymesh<myelement<dim> > & dominio):mesh(dominio){
  rule=quad->clone();
}

template<>
double NumericalQuad<1>::apply(PtrFunction const & f)const{

  double result(0);

  for(unsigned int i(0);i<mesh.size_element();i++){
    myelement<dim> el = mesh.get_el(i);
    result += rule->apply<myedge>(f,el);
  }
  return result;
}


template<>
double NumericalQuad<2>::apply(PtrFunction const & f)const{

  double result(0);
  std::cout<<"This is numerical quad 2D"<<std::endl;
  return result;
}


template<>
double NumericalQuad<3>::apply(PtrFunction const & f)const{

  double result(0);
  std::cout<<"This is numerical quad 3D"<<std::endl;
  return result;
}

//==================================

class NumericalQuad3D {

protected:
  Quadrature3D * rule;
  std::vector<Tetra> mesh;

public:

  NumericalQuad3D(){};
  NumericalQuad3D(const NumericalQuad3D & a){};

  NumericalQuad3D(Quadrature3D const * quad):rule(quad->clone()){};
  NumericalQuad3D(Quadrature3D const * quad,std::vector<Tetra> & dominio);

  ~NumericalQuad3D(){delete rule;}
  
  void SetRule(Quadrature3D const * quad);
  //void SetDom(std::vector<double> const & dom);
  
  double apply(PtrFunction3D const & f)const;

};

#endif
