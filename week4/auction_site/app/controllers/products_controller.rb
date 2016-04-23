class ProductsController < ApplicationController
    def index
        if params[:user_id]
            @current_user = User.find(params[:user_id])
            @products = @current_user.products
        else
            @products = Product.all
        end
        render 'index'
    end

    def new
        @current_user = User.find params[:user_id]
        @the_product = @current_user.products.new
        render 'new'
    end

    def create
        @current_user = User.find params[:user_id]
        @the_product = @current_user.products.new product_params
        if @the_product.save
            redirect_to "/users/#{@current_user.id}/products"
        else
            render 'new'
        end
    end

    def show
        @posting_user = User.find params[:user_id]
        @the_product = @posting_user.products.find params[:id]
        @bids = @the_product.bids.order("amount DESC")
        render 'show'
    end

    def destroy
        @posting_user = User.find params[:user_id]
        @the_product = @posting_user.products.find params[:id]
        @the_product.destroy
        redirect_to "/users/#{@posting_user.id}/products"
    end

    private

    def product_params
        params.require(:product).permit(:title, :description, :deadline)
    end
end