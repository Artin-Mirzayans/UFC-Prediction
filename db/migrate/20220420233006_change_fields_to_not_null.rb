class ChangeFieldsToNotNull < ActiveRecord::Migration[7.0]
  def change
    change_column :events, :event_name, :string, null: false
    change_column :events, :f1, :string, null: false
    change_column :events, :f2, :string, null: false
  end
end
