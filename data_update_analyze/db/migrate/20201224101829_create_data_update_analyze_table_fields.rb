class CreateDataUpdateAnalyzeTableFields < ActiveRecord::Migration[5.2]
  def change
    create_table :data_update_analyze_table_fields do |t|

      t.timestamps
    end
  end
end
