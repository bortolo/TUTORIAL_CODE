
#ifndef __QUADRATURE1D_HPP__
#define __QUADRATURE1D_HPP__

#include <vector>

typedef double (*PtrFunction)(double);

class Quadrature1D{
public:
  Quadrature1D(){};
  virtual ~Quadrature1D();
  virtual Quadrature1D * clone() const = 0;
  virtual double apply(PtrFunction const & f,double const & a,double const & b) = 0;
};



class StandardQuad1D: public Quadrature1D{

public:
  StandardQuad1D(){};
  virtual ~StandardQuad1D();
  virtual double apply(PtrFunction const & f,double const & a,double const & b);
  virtual Quadrature1D * clone() const; 

protected:
  std::vector<double> M_weight;
  std::vector<double> M_nodes;

};


class MidPoint: public StandardQuad1D{

public:
  MidPoint();
  ~MidPoint();
  //virtual double apply(PtrFunction const & f,double const & a,double const & b);
  //virtual Quadrature1D * clone()const;  

};
/*
class Simpson: public StandardQuad1D{

public:
  virtual double apply(PtrFunction const & f,double const & a,double const & b);
  virtual Quadrature1D * clone()const;  

};

*/


#endif
