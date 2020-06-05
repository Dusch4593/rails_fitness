class Routine < ApplicationRecord
  belongs_to :user
  has_many :routine_exercises
  has_many :exercises, through: :routine_exercises
  #accepts_nested_attributes_for :routine_exercises

  validates :name, presence: true

  def exercises_attributes=(exercise)
    new_exercise = Exercise.find_or_create_by(name: exercise[:name])
    self.exercises << new_exercise
  end

  # def routine_exercises=(routine_exercise_attributes)
  #   routine_exercise_attributes.values.each do |routine_exercise_attribute|
  #     routine_exercise = RoutineExercise.find_or_create_by(routine_exercise_attribute)
  #     self.routine_exercises << routine_exercise
  #   end
  # end
end
