require_relative "post.rb"

class SponsoredPost < Post
    def post_printer
        puts "******#{@title}******"
        puts "**************"
        puts @text
        puts "----------------"
    end
end
