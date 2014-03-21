#include <map>
#include <functional>
#include <iostream>

namespace GenericFactory{

  template<typename AbstractProduct,typename Identifier,typename Builder=AbstractProduct * (*)() >
  class Factory{
  private:
    typedef std::map<Identifier,Builder> Container_type;
    Factory(){};
    Factory(Factory &&);
    Factory & operator=(Factory &&);
    Container_type M_storage;
  public:

    typedef AbstractProduct AbsProd;
    typedef Identifier Id;
    typedef Builder Bd;

    static Factory<AbstractProduct,Identifier,Builder> & Instance();

    void add(Identifier const & ,const Builder & );

    AbstractProduct * create(Identifier const & name)const;

  };

  template<typename AbstractProduct,typename Identifier,typename Builder>
  Factory<AbstractProduct,Identifier,Builder> & Factory<AbstractProduct,Identifier,Builder>::Instance(){
    static Factory theFactory;
    return theFactory;
  }


  template<typename AbstractProduct,typename Identifier,typename Builder>
  void Factory<AbstractProduct,Identifier ,Builder>::add(Identifier const & name, const Builder & func){
    auto f = M_storage.insert(std::make_pair(name, func)); 
    if(f.second==false){std::cerr<<"WARNING: existing rule in factory ("<<name<<")!"<<std::endl;}
    //Aggiungere il controllo aggiunta di stringa nella mappa
  }

  template<typename AbstractProduct,typename Identifier,typename Builder>
  AbstractProduct * Factory<AbstractProduct,Identifier ,Builder>::create(Identifier const & name)const {
    typename std::map<Identifier,Builder>::const_iterator it = M_storage.find(name);
    if(it == M_storage.end()) {std::cerr<<"WARNING: the rule doesn't exist in factory ("<<name<<")!"<<std::endl;return NULL;}
    else{
      AbstractProduct * rule;
      rule = it->second();
      return rule;
    }
  }



}//End generic factory namespace
