#include "Quadrature.hpp"

Quadrature3D::~Quadrature3D()
{

}


StandardQuad3D::~StandardQuad3D()
{

}

Quadrature3D * StandardQuad3D::clone()const{return new StandardQuad3D(*this);}

double StandardQuad3D::apply(PtrFunction3D const & f,Punto<3> const & a,Punto<3> const & b,Punto<3> const & c,Punto<3> const & d){
  
  double tmp(0);
  /* Eigen::Matrix3d A;
  Eigen::Vector3d noto;
  Eigen::Vector3d xcap;
  Eigen::Vector3d x;
  
  A << (b.coord(0)-a.coord(0)), (c.coord(0)-a.coord(0)), (d.coord(0)-a.coord(0)),
    (b.coord(1)-a.coord(1)), (c.coord(1)-a.coord(1)), (d.coord(1)-a.coord(1)),
    (b.coord(2)-a.coord(2)), (c.coord(2)-a.coord(2)), (d.coord(2)-a.coord(2));
  
  noto(0) = a.coord(0);
  noto(1) = a.coord(1);
  noto(2) = a.coord(2);
 
    for(size_t i(0);i<M_nodes.size();i++)
      {
	xcap(0) = M_nodes[i].coord(0);
	xcap(1) = M_nodes[i].coord(1);
	xcap(2) = M_nodes[i].coord(2);
	x = A*xcap + noto;
	tmp+=f(x(0),x(1),x(2))*M_weight[i]*A.determinant();
	}*/
  return tmp;
}



MidPoint3D::MidPoint3D(){

  M_weight.push_back(1.0/3.0);
  std::vector<double> pt;
  pt.push_back(1.0/4.0);
  pt.push_back(1.0/4.0);
  pt.push_back(1.0/4.0);
  M_nodes.push_back(pt);

}

MidPoint3D::~MidPoint3D()
{

}


Trapezi3D::Trapezi3D(){

  M_weight.push_back(1.0/12.0);
  M_weight.push_back(1.0/12.0);
  M_weight.push_back(1.0/12.0);
  M_weight.push_back(1.0/12.0);
  std::vector<double> pt1;
  pt1.push_back(0.0);
  pt1.push_back(0.0);
  pt1.push_back(0.0);
  std::vector<double> pt2;
  pt2.push_back(1.0);
  pt2.push_back(0.0);
  pt2.push_back(0.0);
  std::vector<double> pt3;
  pt3.push_back(0.0);
  pt3.push_back(1.0);
  pt3.push_back(0.0);
  std::vector<double> pt4;
  pt4.push_back(0.0);
  pt4.push_back(0.0);
  pt4.push_back(1.0);
  M_nodes.push_back(pt1);
  M_nodes.push_back(pt2);
  M_nodes.push_back(pt3);
  M_nodes.push_back(pt4);

}

Trapezi3D::~Trapezi3D()
{

}



Simpson3D::Simpson3D(){
  M_weight.push_back(1.0/24.0);
  M_weight.push_back(1.0/24.0);
  M_weight.push_back(1.0/24.0);
  M_weight.push_back(1.0/24.0);
  M_weight.push_back(1.0/24.0);
  M_weight.push_back(1.0/24.0);
  M_weight.push_back(1.0/24.0);
  M_weight.push_back(1.0/24.0);
  std::vector<double> pt1;
  pt1.push_back(0.0);
  pt1.push_back(0.0);
  pt1.push_back(0.0);
  std::vector<double> pt2;
  pt2.push_back(1.0);
  pt2.push_back(0.0);
  pt2.push_back(0.0);
  std::vector<double> pt3;
  pt3.push_back(0.0);
  pt3.push_back(1.0);
  pt3.push_back(0.0);
  std::vector<double> pt4;
  pt4.push_back(0.0);
  pt4.push_back(0.0);
  pt4.push_back(1.0);
  std::vector<double> pt5;
  pt5.push_back(1.0/3.0);
  pt5.push_back(0.0);
  pt5.push_back(1.0/3.0);
  std::vector<double> pt6;
  pt6.push_back(1.0/3.0);
  pt6.push_back(1.0/3.0);
  pt6.push_back(0.0);
  std::vector<double> pt7;
  pt7.push_back(0.0);
  pt7.push_back(1.0/3.0);
  pt7.push_back(1.0/3.0);
  std::vector<double> pt8;
  pt8.push_back(1.0/3.0);
  pt8.push_back(1.0/3.0);
  pt8.push_back(1.0/3.0);



  M_nodes.push_back(pt1);
  M_nodes.push_back(pt2);
  M_nodes.push_back(pt3);
  M_nodes.push_back(pt4);
  M_nodes.push_back(pt5);
  M_nodes.push_back(pt6);
  M_nodes.push_back(pt7);
  M_nodes.push_back(pt8);

}

Simpson3D::~Simpson3D()
{

}


OverSimpson3D::OverSimpson3D(){
  M_weight.push_back(1.0/27.0);
  M_weight.push_back(1.0/27.0);
  M_weight.push_back(1.0/27.0);
  M_weight.push_back(1.0/27.0);
  M_weight.push_back(1.0/27.0);
  M_weight.push_back(1.0/27.0);
  M_weight.push_back(1.0/27.0);
  M_weight.push_back(1.0/27.0);
  M_weight.push_back(1.0/27.0);
  std::vector<double> pt1;
  pt1.push_back(0.0);
  pt1.push_back(0.0);
  pt1.push_back(0.0);
  std::vector<double> pt2;
  pt2.push_back(1.0);
  pt2.push_back(0.0);
  pt2.push_back(0.0);
  std::vector<double> pt3;
  pt3.push_back(0.0);
  pt3.push_back(1.0);
  pt3.push_back(0.0);
  std::vector<double> pt4;
  pt4.push_back(0.0);
  pt4.push_back(0.0);
  pt4.push_back(1.0);
  std::vector<double> pt5;
  pt5.push_back(1.0/3.0);
  pt5.push_back(0.0);
  pt5.push_back(1.0/3.0);
  std::vector<double> pt6;
  pt6.push_back(1.0/3.0);
  pt6.push_back(1.0/3.0);
  pt6.push_back(0.0);
  std::vector<double> pt7;
  pt7.push_back(0.0);
  pt7.push_back(1.0/3.0);
  pt7.push_back(1.0/3.0);
  std::vector<double> pt8;
  pt8.push_back(1.0/3.0);
  pt8.push_back(1.0/3.0);
  pt8.push_back(1.0/3.0);
  std::vector<double> pt9;
  pt9.push_back(1.0/4.0);
  pt9.push_back(1.0/4.0);
  pt9.push_back(1.0/4.0);


  M_nodes.push_back(pt1);
  M_nodes.push_back(pt2);
  M_nodes.push_back(pt3);
  M_nodes.push_back(pt4);
  M_nodes.push_back(pt5);
  M_nodes.push_back(pt6);
  M_nodes.push_back(pt7);
  M_nodes.push_back(pt8);
  M_nodes.push_back(pt9);

}

OverSimpson3D::~OverSimpson3D()
{

}

