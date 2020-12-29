class AddTableFieldToBritishData < ActiveRecord::Migration[5.2]
  def change
    add_reference :data_update_analyze_british_data, :field, foreign_key: true
  end
end
