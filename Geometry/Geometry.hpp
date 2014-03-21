#ifndef __GEOMETRY_HPP__
#define __GEOMETRY_HPP__

#include <iostream>
#include <vector>

// Definizione di punto ====================================
template<int dim>
class Punto{
private:

  std::vector<double> pt;

public:
  
  Punto(){pt.resize(dim,0.0);};
  Punto(std::vector<double> &);
  Punto(const Punto<dim> & A);
  Punto<dim> & operator=(Punto<dim> const &);
  ~Punto();
  void ShowMe()const;
  double coord(size_t i)const{return pt[i];}
};

#include "PuntoDef.hpp"

//===========================================================

template<typename element>
class mymesh{

private:
  std::vector<element> M_mesh;
  unsigned int nelement;
  unsigned int nvertex;
public:
  mymesh(){}
  mymesh(const mymesh & A){M_mesh=A.M_mesh;nelement=A.nelement;}
  ~mymesh(){}
  mymesh(const std::vector<element> & elem){M_mesh=elem;nelement = elem.size();}
  
  element get_el(size_t i)const{return M_mesh[i];}
  unsigned int size_element()const{return nelement;} 
  unsigned int size_vertex()const{return nvertex;}   
};

template<int dim>
class myelement{
private:
  std::vector<Punto<dim> > M_el;
public:
  myelement(){}
  myelement(const myelement & A){M_el=A.M_el;}
  ~myelement(){}
  myelement(const std::vector<Punto<dim> > & A){M_el = A;}
  Punto<dim> vertex(size_t i)const{return M_el[i];}
};


//===========================================================

class Shape{
public:
  Shape(){};
  virtual ~Shape(){};
  virtual double measure()const = 0;
};



template<int dim>
class Triangle: public Shape{

private:
  std::vector<Punto<dim> > M_coord;

public:
  Triangle(){M_coord.resize(3,Punto<dim>());};
  Triangle(Punto<dim> &,Punto<dim> &,Punto<dim> &);
  Triangle(std::vector<Punto<dim> > &);
  Triangle(const Triangle &);
  ~Triangle(); 
  void ShowMe();
  double measure()const {return 100.0;}
};

#include "TriangleDef.hpp"


class Tetra: public Shape{

private:
  std::vector<Punto<3> > M_coord;
public:
  Tetra(){M_coord.resize(4,Punto<3>());}
  Tetra(Punto<3> const &,Punto<3> const &,Punto<3> const &,Punto<3> const &);
  Tetra(std::vector<Punto<3> > &);
  Tetra(const Tetra & A){M_coord=A.M_coord;}
  Tetra & operator =(const Tetra &);
  ~Tetra(){};
  void ShowMe();
  Punto<3> get_pt(size_t i)const{return M_coord[i];}
  double measure()const {return 129.0;}
};



#endif
