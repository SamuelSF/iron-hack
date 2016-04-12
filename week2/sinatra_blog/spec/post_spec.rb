require_relative '../lib/post.rb'

RSpec.describe 'Test Post Class' do
    before :each do
        @post_content = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
        proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

        @post_title = "This is the title."
        @post = Post.new(@post_title, @post_content, Date.today)
    end
    it 'Test basic constructor and setting of instance variables.' do
        expect(@post.content).to eq(@post_content)
        expect(@post.title).to eq(@post_title)
        expect(@post.date.class).to eq(Date)
    end
end