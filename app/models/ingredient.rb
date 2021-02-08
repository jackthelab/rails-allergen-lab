class Ingredient < ApplicationRecord
    has_many :additions
    has_many :recipes, through: :additions
    has_many :allergies
    has_many :users, through: :allergies
end
