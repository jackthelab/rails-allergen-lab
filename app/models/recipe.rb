class Recipe < ApplicationRecord
    belongs_to :user
    has_many :additions
    has_many :ingredients, through: :additions

    def num_of_ingredients
        self.ingredients.count
    end

    def self.sorted_by_number_of_ingredients
        Recipe.all.sort_by { |recipe| recipe.num_of_ingredients }.reverse
    end
end
