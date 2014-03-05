#ifndef __PUNTO_HPP__
#define __PUNTO_HPP__

#include <iostream>
#include <vector>

class Punto{
private:
  std::vector<double> pt;

public:
  
  Punto();
  Punto(std::vector<double> & PT){pt=PT;}

  void ShowMe();

};

#endif
