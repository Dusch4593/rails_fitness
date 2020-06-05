class Exercise < ApplicationRecord
  has_many :routine_exercises
  has_many :routines, through: :routine_exercises
  accepts_nested_attributes_for :routine_exercises

  validates :name, presence: true
end
