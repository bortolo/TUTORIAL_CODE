
#include <iostream>
#include <string>

#include "../Geometry/Punto.hpp"

int main (int argc, char *argv[])
{

  std::vector<double> punto(3,1.03);
  Punto<2> pt2D(punto);
  pt2D.ShowMe();

  const int n=3;
  std::vector<double> punto3(3,2.34);
  Punto<n> pt3D(punto3);
  pt3D.ShowMe();

  return 0;
}
