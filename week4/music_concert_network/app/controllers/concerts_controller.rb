class ConcertsController < ApplicationController
    def index
        @concerts = Concert.order("date ASC")
        render 'index'
    end

    def new
        @new_concert = Concert.new
        render 'new'
    end

    def create
        @new_concert = Concert.new concert_params
        if @new_concert.save
            redirect_to '/concerts'
        else
            render 'new'
        end
    end

    def show
        @concert = Concert.find params[:id]
        @comments = @concert.comments
        render 'show'
    end

    private

    def concert_params
        params.require(:concert).permit(:artist, :venue,
            :city, :description, :date, :price)
    end
end