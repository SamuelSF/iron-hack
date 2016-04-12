require 'pry'

# This method takes two arrays, sorts the first from smallest to largest and the second array is permuted
#in a manner identical to the first one.  It piggy backs on the sorting.

#This method takes a string and returns a string that has had all the non-alphabet characters removed.
def depunctuate(a_string)
    alphabet = [*"A".."Z"] + [*"a".."z"]
    result = ""
    a_string.length.times do |i|
        if alphabet.include?(a_string[i])
            result << a_string[i]
        end
    end
    result
end

def word_sort(sentence)
    words = sentence.split(" ")
    words.map! {|word| depunctuate(word)}
    words.sort! {|x, y| x.downcase <=> y.downcase}
    words
end

binding.pry