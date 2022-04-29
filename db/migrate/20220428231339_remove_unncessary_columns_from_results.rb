class RemoveUnncessaryColumnsFromResults < ActiveRecord::Migration[7.0]
  def change
    remove_column :results, :fighter_actual
    remove_column :results, :fighter_guess
  end
end
