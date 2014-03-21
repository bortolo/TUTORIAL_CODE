#include "QuadFactory.hpp"

namespace {
  using QuadFactory::QuadRuleProxy;
  QuadRuleProxy<MidPoint> MP("MidPoint");
  QuadRuleProxy<Trapezi> TR("Trapezi");
  QuadRuleProxy<Simpson> SP("Simpson");
}
