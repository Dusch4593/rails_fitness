class CreateRoutineExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :routine_exercises do |t|
      t.integer :routine_id
      t.integer :exercise_id
      t.integer :reps
      t.integer :sets
      t.timestamps
    end
  end
end
