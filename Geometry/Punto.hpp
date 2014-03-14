#ifndef __PUNTO_HPP__
#define __PUNTO_HPP__

#include <iostream>
#include <vector>

template<int dim>
class Punto{
private:

  std::vector<double> pt;

public:
  
  Punto(){pt.resize(dim,0.0);};
  Punto(std::vector<double> &);
  Punto(const Punto<dim> &);
  Punto<dim> & operator=(Punto<dim> const &);
  ~Punto();
  void ShowMe();

};

#include "PuntoDef.hpp"

template<int dim>
class Triangle{

private:
  std::vector<Punto<dim> > M_coord;

public:
  Triangle(){M_coord.resize(3,Punto<dim>());};
  Triangle(Punto<dim> &,Punto<dim> &,Punto<dim> &);
  Triangle(std::vector<Punto<dim> > &);
  Triangle(const Triangle &);
  ~Triangle(); 
  void ShowMe();

};

#include "TriangleDef.hpp"


class Tetra{

private:
  std::vector<Punto<3> > M_coord;
public:
  Tetra(){M_coord.resize(4,Punto<3>());}
  Tetra(Punto<3> &,Punto<3> &,Punto<3> &,Punto<3> &);
  Tetra(std::vector<Punto<3> > &);
  Tetra(const Tetra & A){M_coord=A.M_coord;}
  ~Tetra(){};
  void ShowMe();

};




/*
class Shape2D{

private:
  std::vector<Punto> 


};
*/

#endif
