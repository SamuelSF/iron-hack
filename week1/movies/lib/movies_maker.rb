require "imdb"

class MoviesMaker
    attr_reader :movies
    def initialize(movie_titles)
        @movie_titles = movie_titles
        @movies = []
        @movie_titles.each do |movie_title|
            @movies << Imdb::Search.new(movie_title).movies[0]
        end
    end
end
