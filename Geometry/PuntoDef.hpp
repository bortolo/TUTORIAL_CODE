
// Definition of Punto methods

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
Punto<dim> & Punto<dim>::operator=(const Punto<dim> & PT){
  this->pt=PT.pt;
  return *this;
}


template<int dim>
void Punto<dim>::ShowMe()const{

  for(size_t i(0);i<dim;i++)
    std::cout<<pt[i]<<'\t';
  std::cout<<std::endl;
}
