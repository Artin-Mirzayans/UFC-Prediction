class AddNotNullFields < ActiveRecord::Migration[7.0]
  def change
    change_column :events, :date, :string, null: false
    change_column :events, :status, :string, null: false
    change_column :predictions, :user_id, :integer, null: false
    change_column :predictions, :event_id, :integer, null: false
    change_column :predictions, :fighter_guess, :string, null: false
    change_column :predictions, :method_guess, :string, null: false
    change_column :results, :event_id, :integer, null: false
    change_column :results, :fighter_actual, :string, null: false
    change_column :results, :method_actual, :string, null: false
    change_column :users, :password_digest, :string, null: false
  end
end
