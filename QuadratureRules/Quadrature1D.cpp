#include "Quadrature1D.hpp"


Quadrature1D::~Quadrature1D()
{

}


StandardQuad1D::~StandardQuad1D()
{

}

Quadrature1D * StandardQuad1D::clone()const{return new StandardQuad1D(*this);}

template<>
double StandardQuad1D::apply(PtrFunction const & f,myedge const & el){

  Eigen::Matrix3d A;
  Eigen::Vector3d noto;
  Eigen::Vector3d xcap;
  Eigen::Vector3d x;
  Punto<dim> pt1 = el.get_pt(0);
  Punto<dim> pt2 = el.get_pt(1);

  A << (pt2.coord(0)-pt1.coord(0)), (pt2.coord(1)-pt1.coord(1)) , (pt2.coord(2)-pt1.coord(2)) ,
    (pt2.coord(1)-pt1.coord(1)), (pt2.coord(2)-pt1.coord(2)), (pt2.coord(0)-pt1.coord(0)),
    (pt2.coord(2)-pt1.coord(2)), (pt2.coord(0)-pt1.coord(0)), (pt2.coord(1)-pt1.coord(1));
  
  noto(0) = pt1.coord(0);
  noto(1) = pt1.coord(1);
  noto(2) = pt1.coord(2);
 
    for(size_t i(0);i<M_nodes.size();i++)
      {
	xcap(0) = M_nodes[i].coord(0);
	xcap(1) = M_nodes[i].coord(1);
	xcap(2) = M_nodes[i].coord(2);
	x = A*xcap + noto;
	tmp+=f(x(0),x(1),x(2))*M_weight[i]*A.determinant();
	

    double half = (b-a)*0.5;
    double xhalf = (b+a)*0.5;
    double tmp(0);

    for(size_t i(0);i<M_nodes.size();i++)
      tmp+=f(M_nodes[i]*half+xhalf)*M_weight[i];

    return tmp*half;
}

template<>
double StandardQuad1D::apply(PtrFunction const & f,myface const & el){
    double tmp(0);

    std::cout<<"This is apply my face"<<std::endl;

    return tmp;
}

template<>
double StandardQuad1D::apply(PtrFunction const & f,myvolume const & el){

    double tmp(0);

    std::cout<<"This is apply my volume"<<std::endl;

    return tmp;
}



MidPoint::MidPoint(){

  M_weight.push_back(2.0);
  M_nodes.push_back(0.0);

}

MidPoint::~MidPoint()
{

}


Trapezi::Trapezi(){

  M_weight.push_back(1.0);
  M_weight.push_back(1.0);
  M_nodes.push_back(-1.0);
  M_nodes.push_back(1.0);

}

Trapezi::~Trapezi()
{

}



Simpson::Simpson(){

  M_weight.push_back(2.0/6.0);
  M_weight.push_back(4.0/3.0);
  M_weight.push_back(2.0/6.0);

  M_nodes.push_back(-1.0);
  M_nodes.push_back(0.0);
  M_nodes.push_back(1.0);

}

Simpson::~Simpson()
{

}


