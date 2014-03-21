#include "NumericalQuad.hpp"
/*
template<int dim>
NumericalQuad<dim>::NumericalQuad(const Quadrature1D * quad,mymesh<myelement<dim> > & dominio):mesh(dominio){
  rule=quad->clone();
}

void NumericalQuad::SetRule(Quadrature1D const * quad){
  delete rule;
  rule = quad->clone();
}

void NumericalQuad::SetDom(std::vector<double> const & dom){
  mesh = dom;
}

template<int dim>
double NumericalQuad<dim>::apply(PtrFunction const & f)const{

  double result(0);
  for(unsigned int i(0);i<mesh.size();i++){
    double a = mesh[i].vertex(0);
    double b = mesh[i].vertex(1);
    result += rule->apply(f,a,b);
  }

  return result;
}
*/


//==================================



NumericalQuad3D::NumericalQuad3D(Quadrature3D const * quad,std::vector<Tetra> & dominio):mesh(dominio){

  rule=quad->clone();
  //  mesh = dominio; Problemi con l'operatore di assegnamento non funziona...come mai??
}

void NumericalQuad3D::SetRule(Quadrature3D const * quad){
  delete rule;
  rule = quad->clone();
}


double NumericalQuad3D::apply(PtrFunction3D const & f)const{

  double result(0);
  for(unsigned int i(0);i<mesh.size();i++){
    Punto<3> a = mesh[i].get_pt(0);
    Punto<3> b = mesh[i].get_pt(1);
    Punto<3> c = mesh[i].get_pt(2);
    Punto<3> d = mesh[i].get_pt(3);    
    result += rule->apply(f,a,b,c,d);
  }

  return result;
}

