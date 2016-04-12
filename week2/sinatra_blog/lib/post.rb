class Post
    attr_reader :title, :content, :date
    def initialize(title, content, date)
        @title = title
        @content = content
        @date = date
    end
end