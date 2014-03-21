#ifndef __QUADRATURE_HPP__
#define __QUADRATURE_HPP__

#include <vector>
//#include "../EIGEN/Eigen/Dense"
#include "../Geometry/Geometry.hpp"


typedef double (*PtrFunction3D)(double,double,double);

class Quadrature3D{
public:
  Quadrature3D(){};
  virtual ~Quadrature3D();
  virtual Quadrature3D * clone() const = 0;
  virtual double apply(PtrFunction3D const & f,Punto<3> const & a,Punto<3> const & b,Punto<3> const & c,Punto<3> const & d) = 0;
};



class StandardQuad3D: public Quadrature3D{

public:
  StandardQuad3D(){};
  virtual ~StandardQuad3D();
  virtual double apply(PtrFunction3D const & f,Punto<3> const & a,Punto<3> const & b,Punto<3> const & c,Punto<3> const & d);
  virtual Quadrature3D * clone() const; 

protected:
  std::vector<double> M_weight;
  std::vector<Punto<3> > M_nodes;

};


class MidPoint3D: public StandardQuad3D{

public:
  MidPoint3D();
  ~MidPoint3D(); 

};

class Trapezi3D: public StandardQuad3D{

public:
  Trapezi3D();
  ~Trapezi3D(); 

};

class Simpson3D: public StandardQuad3D{

public:
  Simpson3D();
  ~Simpson3D();
};



class OverSimpson3D: public StandardQuad3D{

public:
  OverSimpson3D();
  ~OverSimpson3D();
};




#endif
