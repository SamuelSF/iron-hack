require 'ruby-dictionary'
require_relative "lib/wordchain.rb"


dictionary = Dictionary.from_file("/usr/share/dict/words")

my_chain = WordChain.new(dictionary)

puts "Please enter two words seperated by space."
print "> "
words = gets.chomp.split

a = my_chain.find_chain(words[0], words[1])

puts "\n#{words[0]}"
puts a
puts "#{words[1]}"