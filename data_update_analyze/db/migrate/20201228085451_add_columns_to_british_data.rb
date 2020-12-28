class AddColumnsToBritishData < ActiveRecord::Migration[5.2]
  def change
    add_column :data_update_analyze_british_data, :dimension_, :string
  end
end
