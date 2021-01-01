module DataUpdateAnalyze
  class BritishDatum < ApplicationRecord
    # belongs_to :table_fields
    # serialize :extra_columns, Hash
    require 'csv'

    def self.parse_data(file)
     new_hash = {}
     hash = {}
     csv = CSV.foreach(file.path, headers: true, :converters => CSV::Converters[:nil_to_string] = lambda do |field| field.to_s end)
      csv.to_a.map do |row|
        new_hash = row.to_hash
        new_hash.keys.each do |column|
          table_field = TableField.find_or_create_by(columns: column)
          table_field.save!
          hash[column] = table_field.id
        end
        new_hash.values.each do |value|
        table_data = BritishDatum.find_or_create_by(value: value, field_id: hash[new_hash.key(value)])
        table_data.save!
        end
      end
    end
  end
end
