#include "../inc/generator.h"
#include "fakerandom.h"
#include "gtest/gtest.h"
#include <experimental/optional>
TEST(GeneratorTestCase,
     DoesReadFromInputFuncReturnNonEmptyVectorWhenInputHasOneWord)
{
    std::stringstream ss{"ala"};
    std::vector<std::string> vec = generator::read_from_input(ss);
    EXPECT_EQ(1, vec.size());
}

TEST(GeneratorTestCase,
     DoesReadFromInputFuncReturnNonEmptyVectorWhenInputHasMultipleWords)
{
    std::stringstream ss{"ala ma kota"};
    std::vector<std::string> vec = generator::read_from_input(ss);
    EXPECT_EQ(3, vec.size());
}

TEST(GeneratorTestCase,
     DoesFillMapWithWordsFuncReturnProperMapKeysWhenVectorIsNonEmpty)
{
    std::stringstream ss{"1 2 3 4 5 2 6"};
    std::vector<std::string> vec = generator::read_from_input(ss);
    auto map = generator::fill_map_with_words(vec);

    EXPECT_EQ(6, map.size());
}

TEST(GeneratorTestCase,
     DoesFillMapWithWordsFuncReturnProperMapValuesWhenVectorIsNonEmpty1)
{
    std::stringstream ss{"1 2 3 4 5 2 6"};
    std::vector<std::string> vec = generator::read_from_input(ss);
    auto map = generator::fill_map_with_words(vec);

    EXPECT_EQ(6, map.size());
    EXPECT_EQ("3", map["2"][0]);
    EXPECT_EQ("6", map["2"][1]);
}

TEST(GeneratorTestCase,
     DoesFillMapWithWordsFuncReturnProperMapValuesWhenVectorIsNonEmpty2)
{
    std::stringstream ss{"Ala ma kota, kot ma Ale. Tomek ma kota, koniec."};
    std::vector<std::string> vec = generator::read_from_input(ss);
    auto map = generator::fill_map_with_words(vec);

    EXPECT_EQ(7, map.size());
    EXPECT_EQ("ma", map["Ala"][0]);
    EXPECT_EQ("kota,", map["ma"][0]);
    EXPECT_EQ("Ale.", map["ma"][1]);
    EXPECT_EQ("kota,", map["ma"][2]);
    EXPECT_EQ("kot", map["kota,"][0]);
    EXPECT_EQ("koniec.", map["kota,"][1]);
    EXPECT_EQ("ma", map["kot"][0]);
    EXPECT_EQ("Tomek", map["Ale."][0]);
    EXPECT_EQ("ma", map["Tomek"][0]);
    EXPECT_EQ(0, map["koniec."].size());
}

TEST(GeneratorTestCase, DoesGenereateReturnEmptyStringWhenRootWordIsNotInMap)
{
    std::stringstream ss{"Ala ma kota, kot ma Ale. Tomek ma kota, koniec."};
    std::vector<std::string> vec = generator::read_from_input(ss);
    auto map = generator::fill_map_with_words(vec);
    FakeRandom random;
    EXPECT_EQ(
      "none",
      generator::generate(map, "blablabla", 3, random).value_or("none"));
}

TEST(GeneratorTestCase, DoesGenerateReturnNothingWhenCountIsEqualZero)
{
    std::stringstream ss{"Ala ma Ala kota Ala"};
    generator::words_vec vec = generator::read_from_input(ss);
    auto map = generator::fill_map_with_words(vec);
    FakeRandom random;
    EXPECT_EQ("none",
              generator::generate(map, "Ala", 0, random).value_or("none"));
}

TEST(GeneratorTestCase, DoesGenerateReturnValidResult)
{
    std::stringstream ss{"Ala ma kota, kot ma Ale. Tomek ma kota, koniec."};
    std::vector<std::string> vec = generator::read_from_input(ss);
    auto map = generator::fill_map_with_words(vec);
    FakeRandom random;
    EXPECT_EQ("Ala ma kota,",
              generator::generate(map, "Ala", 3, random).value());
}
