class WordCounter
    def count_words(a_string)
        a_string.split.length
    end

    def count_characters(a_string)
        a_string.split("").length
    end

    def most_common_word(a_string)
        words_list = {}
        words = a_string.split

        words.each do |word|
            if words_list.key?(word)
            words_list[word] += 1
            else
                words_list[word] = 1
            end
        end

        common_word = ""
        occurences = 0
        words_list.each do |word, times|
            if times > occurences
                occurences = times
                common_word = word
            end
        end
        [common_word, occurences]
    end
end