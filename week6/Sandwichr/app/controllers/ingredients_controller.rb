class IngredientsController < ApplicationController
    def create
        ingredient = Ingredient.create(ingredient_params)
        render json: ingredient
    end

    def destroy
        ingredient = load_ingredient(params[:id])

        ingredient.destroy

        render json: ingredient

    end

    def show
        ingredient = load_ingredient(params[:id])
        if ingredient.nil?
            return
        end
        render json: ingredient
    end

    private

    def ingredient_params
        params.require(:ingredient).permit(:name, :calories)
    end

    def load_ingredient(id)
        ingredient = Ingredient.find_by(id: id)
        if ingredient.nil?
            render json: {error: "ingredient not found"}, status: 404
            return
        end
        return ingredient
    end
end