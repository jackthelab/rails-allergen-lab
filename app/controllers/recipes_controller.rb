class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
    end

    def new
    end

    def recipe_params
    end

    def create
    end
    
end
