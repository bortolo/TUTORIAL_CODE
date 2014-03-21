#include <string>


#include "../Include/Factory.hpp"
#include "../Include/Proxy.hpp"
#include "../QuadratureRules/Quadrature1D.hpp"


namespace QuadFactory{
  /*
  template<class T>
  struct QuadBuilder{
    static Quadrature1D * Build()
    {
      Quadrature1D * t(new T);
      return t;
    }
  };
  */
  typedef GenericFactory::Factory<Quadrature1D,std::string> RulesFactory;
  
  template<typename ConcreteRule>
  using QuadRuleProxy=Proxy<RulesFactory,ConcreteRule>;

}
