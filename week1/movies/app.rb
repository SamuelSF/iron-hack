require_relative "lib/movies_maker.rb"
require_relative "lib/movies_printer.rb"

try_movies = ["E.T.", "Real Genius", "Texas Chainsaw Massacre", "Home Alone", "Gremlins 2", "Troll 2",
    "2001: A Space Odyssey", "Back To The Future", "Hell Boy", "The Matrix", "Seven Samurai"]

movie_array = MoviesMaker.new(try_movies).movies

printer = MoviesPrinter.new(movie_array)

printer.print_movies