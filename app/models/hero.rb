class Hero < ApplicationRecord
    has_many :hero_powers
    has_many :powers, through: :hero_powers

     # Validations
  validates :name, presence: true
  validates :super_name, presence: true
  end
  