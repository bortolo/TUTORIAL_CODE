
#ifndef __QUADRATURE1D_HPP__
#define __QUADRATURE1D_HPP__

#include <vector>
#include <iostream>

typedef double (*PtrFunction)(double,double,double);


class Quadrature1D{
public:
  Quadrature1D(){};
  virtual ~Quadrature1D();
  virtual Quadrature1D * clone() const = 0;

  template<typename element>
  virtual double apply(PtrFunction const & f,element const & el) = 0;
  
  virtual void ShowMe()const{}
};


class StandardQuad1D: public Quadrature1D{

public:
  StandardQuad1D(){};
  virtual ~StandardQuad1D();

  template<typename element>
  virtual double apply(PtrFunction const & f,element const & el);

  virtual Quadrature1D * clone() const; 
  virtual void ShowMe()const{};
protected:
  std::vector<Punto<3> > M_weight;
  std::vector<Punto<3> > M_nodes;

};


class MidPoint: public StandardQuad1D{

public:
  MidPoint();
  ~MidPoint(); 
  void ShowMe()const{std::cout<<"Sono la classe midpoint!!"<<std::endl;}
};

class Trapezi: public StandardQuad1D{

public:
  Trapezi();
  ~Trapezi(); 
  void ShowMe()const{std::cout<<"Sono la classe trapezi!!"<<std::endl;}
};

class Simpson: public StandardQuad1D{

public:
  Simpson();
  ~Simpson();
  void ShowMe()const{std::cout<<"Sono la classe simpson!!"<<std::endl;}

};




#endif
