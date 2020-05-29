class CreateRoutines < ActiveRecord::Migration[6.0]
  def change
    create_table :routines do |t|
      t.string :name
      t.integer :times_per_week
      t.timestamps
    end
  end
end
