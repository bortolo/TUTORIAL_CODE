
#include <iostream>
#include <string>

#include "../Quadrature1D/NumericalQuad.hpp"
#include "../Quadrature1D/Quadrature1D.hpp"

double xquad(double x)
{
  return x*x;
}


int main (int argc, char *argv[])
{

  MidPoint mid;
  std::vector<double> dominio;
  dominio.push_back(0.0);
  dominio.push_back(0.25);
  dominio.push_back(0.5);
  dominio.push_back(0.75);
  dominio.push_back(1.0);

  NumericalQuad integrale(&mid,dominio);
  std::cout<<integrale.apply(&xquad)<<std::endl;
  
  
  return 0;
}
