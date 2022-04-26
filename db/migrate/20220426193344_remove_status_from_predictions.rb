class RemoveStatusFromPredictions < ActiveRecord::Migration[7.0]
  def change
    remove_column :predictions, :f1haspredict
    remove_column :predictions, :f2haspredict
  end
end
