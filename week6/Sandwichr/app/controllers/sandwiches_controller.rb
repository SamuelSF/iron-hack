class SandwichesController < ApplicationController

    def add_ingredient
        sandwich = load_sandwich(params[:id])
        if sandwich.nil?
            return
        end
        ingredient = Ingredient.find_by(id: params[:ingredient_id])
        if ingredient.nil?
            render json: {error: "ingredient not found"}, status: 404
            return
        end
        new_calories = sandwich.total_calories + ingredient.calories
        sandwich.update(total_calories: new_calories)
        sandwich.ingredients.push ingredient

        redirect_to "/sandwiches/#{params[:id]}"

    end

    def index
        sandwiches = Sandwich.all
        render json: sandwiches
    end

    def create
        sandwich = Sandwich.create(sandwich_params)
        render json: sandwich
    end

    def show
        sandwich = load_sandwich(params[:id])
        if sandwich.nil?
            return
        end

        render json: sandwich.to_json(include: :ingredients)
    end

    def update
        sandwich = load_sandwich(params[:id])
        if sandwich.nil?
            return
        end

        sandwich.update(sandwich_param)

        render json: sandwich
    end

    def destroy
        sandwich = load_sandwich(params[:id])
        if sandwich.nil?
            return
        end

        sandwich.destroy

        render json: sandwich

    end

    private

    def sandwich_params
        params.require(:sandwich).permit(:name, :bread_type)
    end

    def load_sandwich(id)
        sandwich = Sandwich.find_by(id: id)
        if sandwich.nil?
            render json: {error: "sandwich not found"}, status: 404
            return
        end
        return sandwich
    end

end