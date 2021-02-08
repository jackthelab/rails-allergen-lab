class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
        @recipes_no_of_ingredients_order = Recipe.sorted_by_number_of_ingredients
    end

    def new
    end

    def recipe_params
    end

    def create
    end
    
end
