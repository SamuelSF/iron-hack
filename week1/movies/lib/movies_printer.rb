class MoviesPrinter
    def initialize(movies)
        @movies = movies
    end
    def print_movies
        n = @movies.length

        (0..9).each do |i|
            @movies.each do |movie|
                movie_rating = movie.rating
                if movie_rating == nil
                    movie_rating = 0
                end
                if movie_rating.round >= 10 - i
                    print "|#"
                else
                    print "| "
                end
            end
            puts "|"
        end
        (n * 2 + 1 ).times {print "-"}
        puts
        (1..n).each do |i|
            print "|#{i}"
        end

        puts "|"
        puts

        (0..n - 1).each do |i|
            puts "#{i + 1}. #{@movies[i].title} : #{@movies[i].rating}"
        end
    end
end