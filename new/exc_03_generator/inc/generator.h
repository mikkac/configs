#pragma once
#include "random.h"
#include <experimental/optional>
#include <istream>
#include <unordered_map>
#include <vector>
namespace generator
{
using words_vec = std::vector<std::string>;
using words_map = std::unordered_map<std::string, words_vec>;
using kdsa
using optional_string = std::experimental::optional<std::string>;

words_vec read_from_input(std::istream& input);
words_map fill_map_with_words(const words_vec& input);
optional_string generate(words_map words, std::string root, unsigned count,
                         Random& random);
} // namespace generator
