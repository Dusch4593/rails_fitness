class Exercise < ApplicationRecord
  has_many :routine_exercises, dependent: :destroy
  has_many :routines, through: :routine_exercises
  # accepts_nested_attributes_for :routine_exercises, :reject_if => proc { |r_e| r_e[:sets].blank? }

  validates :name, presence: true
  def routine_exercises_attributes=(routine_exercise)
    new_routine_exercise = self.routine_exercises.find_by(exercise_id: self.id)
    new_routine_exercise.update(sets: routine_exercise[:sets], reps: routine_exercise[:reps])
  end
end
