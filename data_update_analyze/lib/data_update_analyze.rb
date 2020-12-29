require "data_update_analyze/engine"

module DataUpdateAnalyze
  class DataParser
    require 'csv'

      def self.parse_data
       new_hash = Hash.new
       file_path = "/mnt/d/2016_census_profiles_by_health_region.csv"
       csv = CSV.foreach(file_path, headers: true, :header_converters => lambda { |h| h.try(:downcase).try(:gsub,' ', '_') },
        :converters => CSV::Converters[:nil_to_string] = lambda do |field| field.to_s end)
        csv.to_a.map do |row|
          new_hash = row.to_hash
          new_hash.values.each do |row|
          table_data = BritishDatum.find_or_create_by(value: row)
          table_data.save
          end
        end 
        new_hash.keys.each do |column|
          table_field = TableField.find_or_create_by(columns: column)
          table_field.save
        end
        # header = csv.map{|row| row[0]}
        # puts "Header >>>>>>>>>>>>", header
        # (1..csv[csv.length - 1]).map do |v|
        #   row = new_hash[[header, csv.row(v)].transpose]
        #   puts "Row >>>>>>>>>>>>>", row
        # end      
  
      end
    end
end