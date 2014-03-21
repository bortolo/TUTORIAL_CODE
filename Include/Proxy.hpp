#ifndef __PROXY_HPP__
#define __PROXY_HPP__

  template <typename Factory, typename ConcreteProduct>
  class Proxy {
  public :

    typedef typename Factory::AbsProd AbstractProduct_type ;
    typedef typename Factory::Id Identifier_type ;
    typedef typename Factory::Bd Builder_type ;
    typedef Factory Factory_type;

    Proxy(Identifier_type const &);

    static AbstractProduct_type * Build(){
      AbstractProduct_type * t(new ConcreteProduct);
      return t; 
    }

  private :
    Proxy(Proxy const &)=delete; // only C++11
    Proxy & operator=(Proxy const &)=delete ; // only C++11 
  };

  template<typename F, typename C> 
  Proxy<F,C>::Proxy(Identifier_type const & name) {
    Factory_type & factory(Factory_type::Instance());
    factory.add(name,&Proxy<F,C>::Build); 
  }


#endif
