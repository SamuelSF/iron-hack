require 'sinatra'
require_relative './lib/movie_maker.rb'
require_relative './lib/quizzer.rb'

maker = MovieMaker.new
get '/' do
    erb :search_page
end

post '/quiz_page' do
    @movies = maker.get_movies(params[:search_term])
    quiz = Quizzer.new(@movies)
    if @movies.length < 1
        erb :error_page
    elsif params[:quiz] == 'year'
        quiz.what_year!
        @question = quiz.question
        @correct_answers = quiz.correct_answers
        erb :quiz_page
    elsif params[:quiz] == 'director'
        quiz.what_director!
        @question = quiz.question
        @correct_answers = quiz.correct_answers
        erb :quiz_page
    end
end