#ifndef __PUNTO_HPP__
#define __PUNTO_HPP__

#include <iostream>
#include <vector>

template<int dim>
class Punto{
private:

  std::vector<double> pt;
  Punto();

public:
  
  Punto(std::vector<double> &);
  Punto(const Punto<dim> &);
  //  Punto<dim> & operator=(const Punto<dim>&);
  ~Punto();
  void ShowMe();

};

template<int dim>
Punto<dim>::Punto(std::vector<double> & PT){
  pt.resize(dim,0.0);
  for(size_t i(0);i<dim;i++)
    pt[i]=PT[i];
}

template<int dim>
Punto<dim>::Punto(const Punto<dim> & PT){pt=PT.pt;}

template<int dim>
Punto<dim>::~Punto(){}

template<int dim>
void Punto<dim>::ShowMe(){

  for(size_t i(0);i<dim;i++)
    std::cout<<pt[i]<<std::endl;

}


/*
class Shape2D{

private:
  std::vector<Punto> 


};
*/

#endif
