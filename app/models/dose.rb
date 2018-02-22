class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  # UNIQUE (:cocktail_id, :ingredient_id)
  validates_uniqueness_of :cocktail, scope: [:ingredient]
end
