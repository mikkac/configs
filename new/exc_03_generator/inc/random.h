#pragma once

class Random
{
public:
    virtual int generate(int n) = 0;
    virtual ~Random() = default;
};
