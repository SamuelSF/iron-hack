require "sinatra"
require_relative "lib/password_checker.rb"
#require "sinatra/reloader"

get "/" do
    erb :home
end

post "/login_test" do
    checker = PasswordChecker.new(params[:user_name], params[:password])
    if checker.check_password
        redirect to('/congratulations')
    else
        redirect to('/')
    end
end

get "/congratulations" do
    erb :congratulations
end