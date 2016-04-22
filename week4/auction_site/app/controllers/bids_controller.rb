class BidsController < ApplicationController
    def new
        @the_product = Product.find params[:product_id]
        @new_bid = Bid.new
        render 'new'
    end

    def create
        @the_product = Product.find params[:product_id]
        @new_bid = @the_product.bids.new bids_params
        @bidding_user = User.find_by(email: params[:user][:email])
        @new_bid.user_id = @bidding_user.id
        @posting_user = User.find @the_product.user_id
        if @new_bid.save
            redirect_to "/users/#{@posting_user.id}/products/#{@the_product.id}"
        else
            render 'new'
        end
    end

    private

    def bids_params
        params.require(:bid).permit(:amount)
    end
end
