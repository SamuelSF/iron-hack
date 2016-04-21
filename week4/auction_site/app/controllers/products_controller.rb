class ProductsController < ApplicationController
    def index
        @products = Product.all
        render 'index'
    end

    def new
        @current_user_id = params[:user_id]
        render 'new'
    end

    def create

    end
end