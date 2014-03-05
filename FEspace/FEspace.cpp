
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

}


void P1local::SetConnection(){
  std::cout<<"This is the set connection P1 function"<<std::endl;
}



void P2local::SetConnection(){

  std::cout<<"This is the set connection P2 function"<<std::endl;

}
