class AddUserIdToRoutines < ActiveRecord::Migration[6.0]
  def change
    change_table(:routines) do |t|
      t.references :user, foreign_key: { to_table: "users" }
    end
  end
end
