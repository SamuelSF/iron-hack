require 'sinatra'
require_relative './lib/blog.rb'
require_relative './lib/post.rb'

blog = Blog.new

post_content = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

(1..17).each do |i|
    date = Date.today + (i % 3)
    post_title = "This is blog entry #{i}."
    blog.add_post Post.new(post_title, post_content, date)
end

get '/' do
    @posts = blog.latest_posts
    erb :home
end

get '/post/:id' do
    @post = blog.latest_posts[params[:id].to_i]
    erb :a_post
end

get '/new_post' do
    erb :post_form
end

post '/make_post' do
    #add new post
    blog.add_post Post.new(params[:title], params[:content], Date.parse(params[:date]))
    redirect to('/')
end