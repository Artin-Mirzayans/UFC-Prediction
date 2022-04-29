class AddSecondFightColumnsToResults < ActiveRecord::Migration[7.0]
  def change
    add_column :results, :f1_fighter_actual, :string, null: false
    add_column :results, :f1_method_actual, :string, null: false
    add_column :results, :f2_fighter_actual, :string, null: false
    add_column :results, :f2_method_actual, :string, null: false
  end
end
