
#include <iostream>
#include <string>

#include "../FEspace/FEspace.hpp"
#include "../Quadrature/Quadrature.hpp"
#include "../FEspace/Polynomial.hpp"

int main (int argc, char *argv[])
{

  std::cout<<"This is the main!"<<std::endl;

  int a=2;
  std::string regola= "Trapezi";
  Quadrature quad(regola);

  std::cout<<quad.integra(&Phi)<<std::endl;

  P1local P1el(a,quad);
  P2local P2el(a,quad);

  P1el.SetConnection();

  P2el.SetConnection();

  return 0;
}
