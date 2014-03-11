#ifndef __PUNTO_HPP__
#define __PUNTO_HPP__

#include <iostream>
#include <vector>

template<int dim>
class Punto{
private:

  std::vector<double> pt;
  Punto();

public:
  
  Punto(std::vector<double> &);
  Punto(const Punto<dim> &);
  //  Punto<dim> & operator=(const Punto<dim>&);
  ~Punto();
  void ShowMe();

};

#include "PuntoDef.hpp"

template<int dim>
class Triangle{

private:
  std::vector<Punto<dim> > M_coord;
  Triangle(){};

public:
  Triangle(Punto<dim> &,Punto<dim> &,Punto<dim> &);
  Triangle(std::vector<Punto<dim> > &);
  Triangle(const Triangle &);
  ~Triangle();

  

};


/*
class Shape2D{

private:
  std::vector<Punto> 


};
*/

#endif
