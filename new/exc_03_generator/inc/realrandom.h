#include "random.h"
#include <random>

class RealRandom : public Random
{
public:
    int generate(int n) override;
};
