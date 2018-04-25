#pragma once

#include "../inc/random.h"

class FakeRandom : public Random
{
public:
    int generate(int n) override;
};
