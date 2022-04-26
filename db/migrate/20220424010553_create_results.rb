class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :fighter_actual
      t.string :method_actual

      t.timestamps
    end
  end
end
