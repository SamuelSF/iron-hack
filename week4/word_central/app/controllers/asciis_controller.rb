require 'artii'

class AsciisController < ApplicationController
    def new
        render 'new'
    end

    def create
        @text = params[:ascii][:user_text]
        artist = Artii::Base.new :font => 'slant'
        @art = artist.asciify @text
        render 'results'
    end
end
