require_relative '../lib/blog.rb'
require_relative '../lib/post.rb'

RSpec.describe 'Test Blog Class' do
    before :each  do
        @blog = Blog.new

        @post_content = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
        proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

        @blog.add_post Post.new("This is post 1", @post_content, Date.today - 1)
        @blog.add_post Post.new("This is post 2", @post_content, Date.today)
        @blog.add_post Post.new("This is post 3", @post_content, Date.today + 1)
    end
    it 'Test that the blog returns an array of posts of correct size.' do
        expect(@blog.posts.class).to eq(Array)
        expect(@blog.posts.length).to eq(3)
        @blog.posts.each do |post|
            expect(post.class).to eq(Post)
        end
    end

    it 'Test the blog sort by date.' do
        sorted_posts = @blog.latest_posts
        (0...(@blog.posts.length - 1)).each do |i|
            expect(sorted_posts[i].date).to be >= sorted_posts[i+1].date
        end
    end
end