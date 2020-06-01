class Routine < ApplicationRecord
  belongs_to :users
  has_many :routine_exercises
  has_many :exercises, through: :routine_exercises
  #accepts_nested_attributes_for :routine_exercises, :exercises

  validates :name, presence: true

  def exercises_attributes=(exercise_attributes)
    exercise_attributes.values.each do |exercise_attribute|
      exercise = Exercise.find_or_create_by(exercise_attribute)
      self.exercises << exercise
    end
  end
end
