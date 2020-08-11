class Exercise < ApplicationRecord
  has_many :routine_exercises, dependent: :destroy
  has_many :routines, through: :routine_exercises
  has_one_attached :image

  validates :name, presence: true

  def exercises_attributes=(exercise)
    if exercise[:name] != "" && exercise[:exercise_type] != "" && exercise[:description] != ""
      new_exercise = self.exercises.build
      new_exercise.name = exercise[:name]
      new_exercise.exercise_type = exercise[:exercise_type]
      new_exercise.description = exercise[:description]
      new_exercise.image.attach(exercise[:image])
    end
  end


  def routine_exercises_attributes=(routine_exercise)
    if !routine_exercise[:sets].blank? && !routine_exercise[:reps].blank?
      new_routine_exercise = self.routine_exercises.find_by(exercise_id: self.id)
      new_routine_exercise.update(sets: routine_exercise[:sets], reps: routine_exercise[:reps])
    end
  end
end
