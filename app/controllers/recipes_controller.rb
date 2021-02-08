class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
        @recipes_no_of_ingredients_order = Recipe.sorted_by_number_of_ingredients
    end

    def new
        @recipe = Recipe.new
    end

    def recipe_params
        params.require(:recipe).permit(:name, :user_id)
    end

    def create
        @recipe = Recipe.new(recipe_params)

        if @recipe.save
            params[:recipe][:ingredients].each { |ingredient| Addition.create(recipe_id: @recipe.id, ingredient_id: ingredient) }
            redirect_to recipes_path
        else
            redirect_to new_recipe_path
        end

    end
    
end
