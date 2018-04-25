#include "../inc/generator.h"
#include "../inc/realrandom.h"
#include <iostream>
#include <sstream>
int
main()
{
    // example us
    std::stringstream ss{"Ala ma kota, kot ma Ale. Tomek ma kota, koniec."};
    generator::words_vec vec = generator::read_from_input(ss);
    auto map = generator::fill_map_with_words(vec);
    RealRandom random;
    std::cout << generator::generate(map, "ma", 10, random).value_or("none")
              << std::endl;
    return 0;
}
