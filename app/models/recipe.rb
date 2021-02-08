class Recipe < ApplicationRecord
    belongs_to :user
    has_many :additions
    has_many :ingredients, through: :additions
end
