class Lexiconomitron
    def eat_t(n)
        y = n.delete("T").delete("t")

    end

    def shazam(an_array)
        n = an_array.length
        first_word = eat_t(an_array[0]).reverse
        last_word = eat_t(an_array[n - 1]).reverse
        [first_word, last_word]
    end

    def oompa_loompa(an_array)
        return_array = []
        an_array.each do |word|
            if word.length < 4
                return_array << word
            end
        end
        return_array
    end
end