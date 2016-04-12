require_relative '../lib/movie_maker.rb'

RSpec.describe 'Test the movie maker' do
    before :each do
        @maker = MovieMaker.new
    end
    it 'Test that the movies are movies.' do
        movie_array = @maker.get_movies("Brave")
        movie_array.each do |movie|
            expect(movie.class).to eq(Imdb::Movie)
        end
    end
    it 'Test that the movies are the appropriate amount.' do
        movie_array = @maker.get_movies("Alien")
        expect(movie_array.length).to eq(9)
    end
    it 'Test that the movies have posters' do
        movie_array = @maker.get_movies("Star")
        movie_array.each do |movie|
            expect(movie.poster.class).to eq(String)
            expect(movie.poster).to_not eq("")
        end
    end
end