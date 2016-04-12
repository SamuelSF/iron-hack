require_relative "lib/word_counter.rb"
require_relative "lib/users.rb"

users = Users.new

users.add_user("Samuel", "BloatedChihuahua42")
word_counter = WordCounter.new

puts "Enter your username."
print "> "
username = gets.chomp
puts "Enter your password."
print "> "
password = gets.chomp

if users.check_login?(username, password)
    puts "Enter some text."
    print "> "
    text = gets.chomp
    puts "What would you like to do with the text?"
    puts "Would you like to 1: count the words, 2: count the characters or 3: find the most common word and it's number of occurences?"
    print "> "
    option = gets.chomp.to_i
    if option == 1
        word_number = word_counter.count_words(text)
        puts "You entered #{word_number} words."
    elsif option == 2
        char_number = word_counter.count_characters(text)
        puts "You entered #{char_number} characters."
    elsif option == 3
        common_word = word_counter.most_common_word(text)
        puts "The most common word is \"#{common_word[0]}\" and it occured #{common_word[1]} times."
    end


else
    puts "You done wrong!  No second chances!  Goodbye!"
end