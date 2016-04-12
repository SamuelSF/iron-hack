
class Quizzer
    attr_reader :question, :correct_answers
    def initialize(movies)
        @movies = movies
    end

    def what_year!
        elem = (rand * @movies.length).floor
        quiz_year = @movies[elem].year
        @question = "What movie(s) was made in #{quiz_year}?"
        @correct_answers = []
        @movies.each do |movie|
            if movie.year == quiz_year
                @correct_answers.push movie
            end
        end
    end

    def what_director!
        elem = (rand * @movies.length).floor
        quiz_director = @movies[elem].director
        @question = "What movie(s) was directed by #{quiz_director[0]}?"
        @correct_answers = []
        @movies.each do |movie|
            if movie.director == quiz_director
                @correct_answers.push movie
            end
        end
    end
end