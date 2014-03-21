
#include <iostream>
#include <string>
#include <fstream>
#include <math.h>

#include "../Quadrature/NumericalQuad.hpp"
#include "../QuadratureRules/Quadrature1D.hpp"
#include "../QuadratureRules/Quadrature.hpp"
#include "../Geometry/Geometry.hpp"

double xquad(double x,double y,double z)
{
  return z;
}


int main (int argc, char *argv[])
{

  MidPoint3D mid;
  Trapezi3D trap;
  Simpson3D simp;
  OverSimpson3D oSimp;

  std::vector<Tetra> dominio;
  std::vector<double> x(3);

  x[0]=0.0;
  x[1]=0.0;
  x[2]=0.0;
  Punto<3> p1(x);
  x[0]=1;
  x[1]=0.0;
  x[2]=0.0;
  Punto<3> p2(x);
  x[0]=0.0;
  x[1]=1;
  x[2]=0.0;
  Punto<3> p3(x);
  x[0]=0.0;
  x[1]=0.0;
  x[2]=1;  
  Punto<3> p4(x);

  Tetra a(p1,p2,p3,p4);
  dominio.push_back(a);

   NumericalQuad3D integrale(&simp,dominio);
   std::cout<<"Simp point = "<<integrale.apply(xquad)<<std::endl;
   integrale.SetRule(&mid);
   std::cout<<"Mid point = "<<integrale.apply(xquad)<<std::endl;
   integrale.SetRule(&trap);
   std::cout<<"Trap point = "<<integrale.apply(xquad)<<std::endl;
   integrale.SetRule(&oSimp);
   std::cout<<"Over simp point = "<<integrale.apply(xquad)<<std::endl;

  return 0;
}
