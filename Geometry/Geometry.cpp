
#include "Geometry.hpp"

// Tetra methods


Tetra::Tetra(Punto<3> const & p1,Punto<3> const & p2,Punto<3> const & p3,Punto<3> const & p4){
  M_coord.resize(4);
  M_coord[0]=p1;
  M_coord[1]=p2;
  M_coord[2]=p3;
  M_coord[3]=p4;
}

Tetra::Tetra(std::vector<Punto<3> > & coord){
  M_coord=coord;
}

Tetra & Tetra::operator=(const Tetra & A){

  this->M_coord.resize(4);
  this->M_coord[0]=A.get_pt(0);
  this->M_coord[1]=A.get_pt(1);
  this->M_coord[2]=A.get_pt(2);
  this->M_coord[3]=A.get_pt(3);
  return *this;

}


void Tetra::ShowMe(){

  for(size_t i(0);i<M_coord.size();i++)
    M_coord[i].ShowMe();

}
