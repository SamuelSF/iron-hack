class SandwichViewsController < ApplicationController
    def index
        @sandwiches = Sandwich.all
    end

    def show
        @sandwich = Sandwich.find(params[:id])
        puts params[:id]
        @ingredients = @sandwich.ingredients
    end
end
