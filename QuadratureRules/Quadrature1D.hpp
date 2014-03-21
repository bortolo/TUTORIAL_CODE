
#ifndef __QUADRATURE1D_HPP__
#define __QUADRATURE1D_HPP__

#include <vector>
#include <iostream>

typedef double (*PtrFunction)(double);

class Quadrature1D{
public:
  Quadrature1D(){};
  virtual ~Quadrature1D();
  virtual Quadrature1D * clone() const = 0;
  virtual double apply(PtrFunction const & f,double const & a,double const & b) = 0;
  virtual void ShowMe()const{}
};



class StandardQuad1D: public Quadrature1D{

public:
  StandardQuad1D(){};
  virtual ~StandardQuad1D();
  virtual double apply(PtrFunction const & f,double const & a,double const & b);
  virtual Quadrature1D * clone() const; 
  virtual void ShowMe()const{};
protected:
  std::vector<double> M_weight;
  std::vector<double> M_nodes;

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
