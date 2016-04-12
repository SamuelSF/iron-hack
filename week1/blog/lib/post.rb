class Post
    attr_accessor :title, :date, :text
    def initialize(title, date, text)
        @title = title
        @date = date
        @text = text
    end

    def post_printer
        puts @title
        puts "**************"
        puts @text
        puts "----------------"
    end
end