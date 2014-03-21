
#include <iostream>
#include <string>

#include "../Geometry/Geometry.hpp"
#include "../Geometry/ShapeManage.hpp"

int main (int argc, char *argv[])
{
  /*
  
  std::vector<double> punto1(3,0.0);
  punto1[0]=1.0;
  punto1[1]=2.3;
  std::vector<double> punto2(3,0.0);
  punto2[0]=1.0;
  punto2[1]=0.3;
  std::vector<double> punto3(3,0.0);
  punto3[0]=0.9;
  punto3[1]=1.0;
  punto2[2]=5.4;

  Punto<3> pt2D1(punto1);
  Punto<3> pt2D2(punto2);
  Punto<3> pt2D3(punto3);
  Punto<3> pt2D4;

  std::vector<Punto<3> > coord;
  coord.push_back(pt2D1);
  coord.push_back(pt2D2);
  coord.push_back(pt2D3);
  coord.push_back(pt2D4);
  
  std::cout<<"Punti ==============="<<std::endl;
  pt2D1.ShowMe();
  pt2D2.ShowMe();
  pt2D3.ShowMe();
  pt2D4.ShowMe();

  std::cout<<"Triangoli ==============="<<std::endl;
  Triangle<3> tr2D1(pt2D1,pt2D2,pt2D3);
  tr2D1.ShowMe();

  Triangle<3> tr2D2(coord);
  tr2D2.ShowMe();
  
  Triangle<3> tr2D3;
  tr2D3.ShowMe();
  
  std::cout<<"Parte relative ai tetraedri ==============="<<std::endl;
  Tetra tetra1;
  tetra1.ShowMe();
  Tetra tetra2(coord);
  tetra2.ShowMe();
  */

  
  ShapeManage<OpNewCreator<Triangle<3> > > ManageTriangle;
  std::cout<<ManageTriangle.measure()<<std::endl;

  ShapeManage<MallocCreator<Tetra> > ManageTetra;
  std::cout<<ManageTetra.measure()<<std::endl;

  return 0;
}
