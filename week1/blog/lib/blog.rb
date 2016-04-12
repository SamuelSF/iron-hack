require_relative "post.rb"

class Blog
    def initialize
        @posts = []
    end

    def add_post(post)
        @posts << post
    end

    def publish_page(page_number)
        start_post = (page_number - 1) * 3
        end_post = 0
        if start_post + 2 < @posts.length - 1
            end_post = start_post + 2
        else
            end_post = @posts.length - 1
        end
        @posts.sort! {|post1, post2| post2.date <=> post1.date}
        (start_post..end_post).each do |i|
            @posts[i].post_printer
        end
        if page_number == 1
            puts "*1* 2"
        elsif page_number == self.number_of_pages
            puts "#{page_number - 1} *#{page_number}*"
        else
            puts "#{page_number - 1} *#{page_number}* #{page_number + 1}"
        end
    end

    def number_of_pages
        (@posts.length / 3.0).ceil
    end
end