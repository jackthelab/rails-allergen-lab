class Ingredient < ApplicationRecord
    has_many :additions
    has_many :recipes, through: :additions
    has_many :allergies
    has_many :users, through: :allergies

    validates :name, presence: true

    def allergy_count
        Allergy.where(ingredient_id: self.id).count
    end

    def self.ordered_by_users_allergic
        Ingredient.all.sort_by { |ingredient| ingredient.allergy_count }.reverse
    end

    def recipes_used
        self.additions.map { |addition| Recipe.find_by(id: addition.recipe_id) }
    end

end
