class RoutineExercise < ApplicationRecord
  belongs_to: :routine
  belongs_to: :exercise

  validates :reps, presence: true
  validates :sets, presence: true 
end
