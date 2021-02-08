class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    @ingredients_by_allergies = Ingredient.ordered_by_users_allergic
  end

  def show
    @ingredient = Ingredient.find_by(id: params[:id])
  end
  
end
