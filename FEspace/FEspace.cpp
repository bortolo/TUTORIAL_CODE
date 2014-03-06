
#include "FEspace.hpp"

FEspace::FEspace(int &mesh,Quadrature &quadrature):M_quadrature(quadrature){

  std::cout<<"Manca la costruzione del jacobiano!!"<<std::endl;
  //for on elements 
  //-> compute matrix transformation
  //        -> build the matrix with x1 x2 x3
  //        -> solve with force term (0,0,0,1,0,0,0,1,0)
  //             x1 -> (0,0,0)
  //             x2 -> (1,0,0)
  //             x3 -> (0,1,0)
  //             x4 -> (0,0,1)
  //-> compute determinant

  Eigen::MatrixXd A(9,9);
  Eigen::VectorXd noto(9);
  Eigen::MatrixXd T(3,3);


  
  double x1=0.0,y1=0.0,z1=0.0;
  double x2=1.0,y2=0.0,z2=0.0;
  double x3=0.0,y3=1.0,z3=0.0;
  double x4=0.0,y4=0.0,z4=1.0;

  //Questa è una convenzione
  noto << 1,0,0,0,1,0,0,0,1;

  noto(0) = 1+x1;
  noto(1) = 0+y1;
  noto(2) = 0+z1;
  noto(3) = 0+x1;
  noto(4) = 1+y1;
  noto(5) = 0+z1;
  noto(6) = 0+x1;
  noto(7) = 0+y1;
  noto(8) = 1+z1;
   
  A << x2,y2,z2,0,0,0,0,0,0,
       0,0,0,x2,y2,z2,0,0,0,
       0,0,0,0,0,0,x2,y2,z2,
       x3,y3,z3,0,0,0,0,0,0,
       0,0,0,x3,y3,z3,0,0,0,
       0,0,0,0,0,0,x3,y3,z3,
       x4,y4,z4,0,0,0,0,0,0,
       0,0,0,x4,y4,z4,0,0,0,
       0,0,0,0,0,0,x4,y4,z4;

  Eigen::VectorXd x(9);

  x = A.colPivHouseholderQr().solve(noto);

  T.row(0) << x(0),x(1),x(2); 
  T.row(1) << x(3),x(4),x(5);
  T.row(2) << x(6),x(7),x(8);

  std::cout<<T<<std::endl;

  Eigen::VectorXd v(3);
  v << 2,2.3,0.2;
  std::cout<<T.determinant()<<std::endl;

}


void P1local::SetConnection(){
  std::cout<<"This is the set connection P1 function"<<std::endl;
}



void P2local::SetConnection(){

  std::cout<<"This is the set connection P2 function"<<std::endl;

}
