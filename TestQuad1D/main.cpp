
#include <iostream>
#include <string>
#include <fstream>
#include <math.h>

#include <dlfcn.h>

#include "../Geometry/Geometry.hpp"
#include "../Quadrature/NumericalQuad.hpp"
#include "../QuadratureRules/Quadrature1D.hpp"
#include "../FactoryQuad/QuadFactory.hpp"

double xquad(double x)
{
  return x;
}


int main (int argc, char *argv[])
{


  
  std::vector<double> punto1(1,0.0);
  std::vector<double> punto2(1,1.0);
  std::vector<double> punto3(1,2.0);
  std::vector<double> punto4(1,3.0);

  Punto<1> pt1(punto1);
  Punto<1> pt2(punto2);
  Punto<1> pt3(punto3);
  Punto<1> pt4(punto4);

  std::vector<Punto<1> >element1;
  element1.push_back(pt1);
  element1.push_back(pt2);
  std::vector<Punto<1> >element2;
  element2.push_back(pt2);
  element2.push_back(pt3);
  std::vector<Punto<1> >element3;
  element3.push_back(pt3);
  element3.push_back(pt4);
 
    myelement<1> el1(element1);
    myelement<1> el2(element2);
    myelement<1> el3(element3);

    std::vector<myelement<1> > raccoltael;
  raccoltael.push_back(el1);
  raccoltael.push_back(el2);
  raccoltael.push_back(el3);
  std::cout<<raccoltael.size()<<std::endl;
  mymesh<myelement<1> > dominiop(raccoltael);
  std::cout<<dominiop.size_element()<<std::endl;

  QuadFactory::RulesFactory & rulesFactory(QuadFactory::RulesFactory::Instance());
  const Quadrature1D * therule = rulesFactory.create("Trapezi");
  therule->ShowMe();
  NumericalQuad<1> integrale(therule,dominiop);
  std::cout<<integrale.apply(&xquad)<<std::endl;
  /*therule = rulesFactory.create("Simpson");
  therule->ShowMe();
  integrale.SetRule(therule);
  std::cout<<integrale.apply(&xquad)<<std::endl;
  therule = rulesFactory.create("MidPoint");
  therule->ShowMe();
  integrale.SetRule(therule);
  std::cout<<integrale.apply(&xquad)<<std::endl;
  */
/*
  MidPoint mid;
  Trapezi trap;
  Simpson simp;
 

  std::vector<double> dominio;
  double a = 0;
  double b = 6;
  double step = 0;
  double value = 0;

  NumericalQuad integrale;

  std::ofstream file("Errori.txt");

  unsigned int maxit = 15;
  for(size_t i(2);i<maxit;i++)
    {
      dominio.resize(i+1);
      step = (b-a)/i;
      for(size_t k(0);k<=i;k++) dominio[k]=a+k*step;

      integrale.SetDom(dominio);

      integrale.SetRule(&mid);
      value = integrale.apply(&xquad);
      std::cout<<"Midpoint = "<<value<<std::endl;
      file<<fabs(value - 6*6*6*6*6)<<'\t';

      integrale.SetRule(&trap);
      value = integrale.apply(&xquad);
      std::cout<<"Trapezi = "<<value<<std::endl;
      file<<fabs(value - 6*6*6*6*6)<<'\t';

      integrale.SetRule(&simp);
      value =  integrale.apply(&xquad);
      std::cout<<"Simpson = "<<value<<std::endl;
      file<<fabs(value - 6*6*6*6*6);

      file<<std::endl;
    }

    file.close();*/
  return 0;
}
