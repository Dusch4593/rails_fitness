class Exercise < ApplicationRecord
  has_many :routine_exercises
  has_many :routines, through: :routine_exercises
end
