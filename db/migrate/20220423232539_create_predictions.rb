class CreatePredictions < ActiveRecord::Migration[7.0]
  def change
    create_table :predictions do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :fighter_guess
      t.string :method_guess
      t.string :fighter_actual
      t.string :method_actual

      t.timestamps
    end
  end
end
