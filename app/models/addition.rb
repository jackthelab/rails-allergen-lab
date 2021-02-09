class Addition < ApplicationRecord
    belongs_to :recipe
    belongs_to :ingredient

    validates :recipe_id, numericality: { only_integer: true }
    validates :ingredient_id, numericality: { only_integer: true }
end
