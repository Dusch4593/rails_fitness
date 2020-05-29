class Routine < ApplicationRecord
  has_many :routine_exercises
  has_many :exercises, through: :routine_exercises
  accepts_nested_attributes_for :routine_exercises, :exercises

  validates :name, presence: true
end
