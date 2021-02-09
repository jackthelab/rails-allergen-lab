class User < ApplicationRecord
    has_many :recipes
    has_many :allergies
    has_many :ingredients, through: :allergies

    validates :username, { presence: true, uniqueness: { case_sensitive: false } }

    def allergy_ingredients
        self.allergies.map { |allergy| allergy.ingredient.name }
    end

end
