#include "../inc/realrandom.h"
int
RealRandom::generate(int n)
{
    if (n <= 0)
    {
        return 0;
    }
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis(0, n);
    return dis(gen);
}
