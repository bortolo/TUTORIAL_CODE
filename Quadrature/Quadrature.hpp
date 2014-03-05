
#ifndef __QUADRATURE_HPP__
#define __QUADRATURE_HPP__

#include <string>
#include <iostream>

typedef double (*PtrFunction)(double,double,double);


class Quadrature{

protected:
  
  std::string M_rule;
  double M_dominio;

public:

  Quadrature(){};
  Quadrature(std::string & rule):M_rule(rule){}
  Quadrature(const Quadrature & ){};
  ~Quadrature(){};
  
  double integra(PtrFunction f);
  

};


#endif
