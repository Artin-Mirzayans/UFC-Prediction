class MoveColumnsFromPredictions < ActiveRecord::Migration[7.0]
  def change
    remove_column :predictions, :fighter_actual
    remove_column :predictions , :method_actual
  end
end
