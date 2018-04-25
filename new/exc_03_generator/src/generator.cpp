#include "../inc/generator.h"
#include <sstream>

generator::words_vec
generator::read_from_input(std::istream& input)
{
    words_vec words_vector{};
    std::string word;
    while (!input.eof())
    {
        input >> word;
        words_vector.push_back(std::move(word));
    }
    return words_vector;
}

generator::words_map
generator::fill_map_with_words(const generator::words_vec& input)
{
    generator::words_map words_map;
    for (std::size_t i = 0; i < input.size() - 1; ++i)
    {
        words_map[input[i]];
        words_map[input[i]].push_back(input[i + 1]);
    }
    words_map[*(std::prev(std::end(input)))];
    return words_map;
}

generator::optional_string
generator::generate(generator::words_map words, std::string root,
                    unsigned count, Random& random)
{
    if (count == 1)
    {
        return root;
    }
    auto search = words.find(root);
    if (search == std::end(words) || count == 0)
    {
        return {};
    }
    if (search->second.empty()) // if vector of consequent words is empty,
                                // it means that we hit end of sentence so
                                // it's end of output
    {
        return root;
    }
    std::string result{root};
    std::string random_word{};
    for (unsigned i = 0; i < count - 1; ++i)
    {
        random_word =
          search->second[random.generate(search->second.size() - 1)];
        result += " " + random_word;
        if (words[random_word].empty())
        {
            return result;
        }
        search = words.find(random_word);
    }
    return result;
}
