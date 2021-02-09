class Allergy < ApplicationRecord
    belongs_to :user
    belongs_to :ingredient

    validates :user_id, { presence: true, numericality: { only_integer: true } }
    validates :ingredient_id, { presence: true, numericality: { only_integer: true } }
end
