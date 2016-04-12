#server.rb
require "sinatra"
require_relative "lib/calculator.rb"
require_relative "lib/memory.rb"

calculator = Calculator.new
memory = Memory.new("public/last_number.txt")
post '/calculate' do
    @first = params[:first_number].to_f
    @second = params[:second_number].to_f
    @operation = params[:operation]
    @result = calculator.calculate(@first, @second, @operation)
    erb(:calculate)
end

post '/saved' do
    memory.save(params[:result])
    redirect to("/")
end

get "/" do
    @stored = memory.load
    erb(:main)
end