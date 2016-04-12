class MilkShake
    def initialize
        @ingredients = []
        @base_price = 3
    end

    def add_ingredient(ingredient)
        @ingredients.push(ingredient)
    end

    def price_of_milkshake()
        total_price_of_milkshake = @base_price
        @ingredients.each do |ingredient|
            total_price_of_milkshake += ingredient.price
        end
        total_price_of_milkshake
    end
end

class Ingredient
    attr_reader(:name, :price)
    def initialize(name, price)
        @name = name
        @price = price
    end
end

class ShakeShack
    def initialize
        @milkshakes = []
    end

    def add_milkshake(milkshake)
        @milkshakes.push(milkshake)
    end

    def checkout
        total = 0
        @milkshakes.each do |milkshake|
            total += milkshake.price_of_milkshake
        end
        total
    end
end