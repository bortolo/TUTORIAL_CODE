
#ifndef __FESPACE_HPP__
#define __FESPACE_HPP__

#include <vector>
#include <iostream>

#include "../Quadrature/Quadrature.hpp"
#include "../EIGEN/Eigen/Dense"

class FEspace{

protected:
  int M_mesh;
  Quadrature M_quadrature;
  
  //Lungo come il numero di elementi si costruisce subito perchè è sufficiente conoscere la mesh
  //(#elementi)X(sistemi lineari 9x9) + (#elementi)X(calcolo determinate 9x9)
  std::vector<double> M_Jacobian;  
  
  std::vector<std::vector<int> > M_connection;

public:

  FEspace(int &mesh,Quadrature &quadrature);
  virtual ~FEspace(){}

  virtual void SetConnection()=0;

};




class P1local : public FEspace{

protected:

public:

  P1local(int &mesh,Quadrature &quadrature):FEspace(mesh,quadrature){}
  
  virtual ~P1local(){}

  virtual void SetConnection();

};


class P2local : public FEspace{

protected:

  double * a;
  double * b;
  double * c;
  double * d;

public:

  P2local(int &mesh,Quadrature &quadrature):FEspace(mesh,quadrature){
    a = new double(M_mesh);
    b = new double(M_mesh);
    c = new double(M_mesh);
    d = new double(M_mesh);
  };

  virtual ~P2local(){
    delete [] a;
    delete [] b;
    delete [] c;
    delete [] d;
}

  void SetConnection();

  };



#endif
