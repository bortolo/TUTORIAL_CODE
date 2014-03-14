#include "Quadrature1D.hpp"


Quadrature1D::~Quadrature1D()
{

}


StandardQuad1D::~StandardQuad1D()
{

}

Quadrature1D * StandardQuad1D::clone()const{return new StandardQuad1D(*this);}

double StandardQuad1D::apply(PtrFunction const & f,double const & a,double const & b){

    double half = (b-a)*0.5;
    double xhalf = (b+a)*0.5;
    double tmp(0);

    for(size_t i(0);i<M_nodes.size();i++)
      tmp+=f(M_nodes[i]*half+xhalf)*M_weight[i];

    return tmp*half;
}



MidPoint::MidPoint(){

  M_weight.push_back(2.0);
  M_nodes.push_back(0.0);

}

MidPoint::~MidPoint()
{

}
