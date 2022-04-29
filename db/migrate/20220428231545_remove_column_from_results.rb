class RemoveColumnFromResults < ActiveRecord::Migration[7.0]
  def change
    remove_column :results, :method_actual
  end
end
