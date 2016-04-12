require 'pry'

def solve_cipher(message, shift)

    result = ""
    char_list = message.chars
    for char in char_list
        if char.ord >= "A".ord && char.ord <= "Z".ord
            result << (((char.ord - "A".ord + shift) % 26) + "A".ord).chr
        elsif char.ord >= "a".ord && char.ord <= "z".ord
            result << (((char.ord - "a".ord + shift) % 26) + "a".ord).chr
        else
            result << char
        end
    end
    result
end

def encipher(message, shift)
    solve_cipher(message, - shift)
end

binding.pry