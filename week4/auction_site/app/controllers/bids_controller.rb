class BidsController < ApplicationController
    def new
        @the_product = Product.find params[:product_id]
        @new_bid = Bid.new
        render 'new'
    end
end
