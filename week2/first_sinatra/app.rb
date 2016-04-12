#server.rb
require "sinatra"

get "/" do
    erb :home
end

get "/hi" do
    "Hello, world! And a cat!
    <br>
    <img src=\"https://i.ytimg.com/vi/tntOCGkgt98/maxresdefault.jpg\">"
end

get "/author" do
    erb :author
end

get "/date" do
    erb :date
end

get "/hours/ago/:ago_hours" do
    back = (Time.now - (params[:ago_hours].to_i * 3600))
    puts back.class
    @back_time = back.strftime("The time #{params[:ago_hours]} hours ago was
         %l.")
    erb(:hours)
end