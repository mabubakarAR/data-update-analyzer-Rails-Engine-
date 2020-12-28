class AddColumnToDataFields < ActiveRecord::Migration[5.2]
  def change
    add_column :data_update_analyze_table_fields, :columns, :text
  end
end
