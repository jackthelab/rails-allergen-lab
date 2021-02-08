class User < ApplicationRecord
    has_many :recipes
    has_many :allergies
    has_many :ingredients, through: :allergies

    def allergy_ingredients
        self.allergies.map { |allergy| allergy.ingredient.name }
    end

end
