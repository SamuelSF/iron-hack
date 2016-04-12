require 'ruby-dictionary'

class WordChain
    def initialize(dictionary)
        @dictionary = dictionary
    end

 

    def find_chain (start_word, end_word)
    	current_word = start_word
    	word_chain = []
        while current_word != end_word
        	i = 0
	        while i < end_word.length
	    		if current_word[i] != end_word[i]
					test_word = current_word.clone
					test_word[i] = end_word[i]
					if @dictionary.exists?(test_word)
						current_word = test_word
						if test_word != end_word
							word_chain << test_word
						end
					end
				end
				i = i+1
			end
		end
		word_chain

    end
    
end
