class Ingredient < ApplicationRecord
    has_many :additions
    has_many :recipes, through: :additions
    has_many :allergies
    has_many :users, through: :allergies

    def allergy_count
        Allergy.where(ingredient_id: self.id).count
    end

    def self.ordered_by_users_allergic
        Ingredient.all.sort_by { |ingredient| ingredient.allergy_count }.reverse
    end
end
