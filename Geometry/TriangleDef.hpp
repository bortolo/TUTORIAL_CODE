//Definition of triangle methods

template<int dim>
Triangle<dim>::Triangle(std::vector<Punto<dim> > & PT){
  M_coord.resize(3);
  for(size_t i(0);i<3;i++)
    M_coord[i]=PT[i];
}

template<int dim>
Triangle<dim>::Triangle(Punto<dim> & PT1,Punto<dim> & PT2,Punto<dim> & PT3){
  M_coord.resize(3);
  M_coord[0]=PT1;
  M_coord[1]=PT2;
  M_coord[2]=PT3;
}

template<int dim>
Triangle<dim>::Triangle(const Triangle<dim> & PT){M_coord=PT.M_coord;}

template<int dim>
Triangle<dim>::~Triangle(){}

template<int dim>
void Triangle<dim>::ShowMe(){

  for(size_t i(0);i<3;i++)
    M_coord[i].ShowMe();

}
