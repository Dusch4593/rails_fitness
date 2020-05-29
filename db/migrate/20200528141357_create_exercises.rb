class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :exercise_type
      t.text :description
      t.timestamps
    end
  end
end
