
#include "Punto.hpp"

// Tetra methods


Tetra::Tetra(Punto<3> & p1,Punto<3> & p2,Punto<3> & p3,Punto<3> & p4){
  M_coord[0]=p1;
  M_coord[1]=p1;
  M_coord[2]=p1;
  M_coord[3]=p1;
}

Tetra::Tetra(std::vector<Punto<3> > & coord){
  M_coord=coord;
}

void Tetra::ShowMe(){

  for(size_t i(0);i<M_coord.size();i++)
    M_coord[i].ShowMe();

}
