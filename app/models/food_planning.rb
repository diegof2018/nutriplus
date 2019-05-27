class FoodPlanning < ApplicationRecord
  belongs_to :patient
  has_many :meals

  enum status: [:inativo, :ativo]
end
