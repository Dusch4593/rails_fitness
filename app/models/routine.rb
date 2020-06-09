class Routine < ApplicationRecord
  belongs_to :user
  has_many :routine_exercises
  has_many :exercises, through: :routine_exercises

  validates :name, presence: true

  def exercises_attributes=(exercise)
    new_exercise = self.exercises.build
    new_exercise.name = exercise[:name]
    new_exercise.exercise_type = exercise[:exercise_type]
    new_exercise.description = exercise[:description]
  end
end
