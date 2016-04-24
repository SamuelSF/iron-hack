class CommentsController < ApplicationController
    def create
        @concert = Concert.find params[:concert_id]
        @comment = @concert.comments.new(
            description: params[:comment][:description])
        if @comment.save
            redirect_to "/concerts/#{@concert.id}"
        else
            render plain: "You must enter a description."
        end
    end
end
