class Routine < ApplicationRecord
  has_many :routine_exercises
  has_many :exercises, through: :routine_exercises

  validates :name, presence: true
end
