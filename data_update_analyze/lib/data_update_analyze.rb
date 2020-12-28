require "data_update_analyze/engine"

module DataUpdateAnalyze
  class DataParser
    require 'csv'

      def self.parse_data
        puts "In Parser Action !!!"
        CSV.foreach("/mnt/d/2016_census_profiles_by_health_region.csv", headers: true, :header_converters => lambda { |h| h.try(:downcase).try(:gsub,' ', '_') },
        :converters => CSV::Converters[:nil_to_string] = lambda do |field| 
          field.to_s
        end) do |row|
          # data = BritishDatum.new(extra_columns: row.to_hash)
          # data.extra_columns = row.to_hash
          # data.save
          new_hash = {}
          row.to_hash.each_pair do |k,v|
           new_hash.merge!({k.downcase => v})
          end
          
          puts "<<<<<<<<<< Hash keys >>>>>>>>>>>>", new_hash.keys
          puts "<<<<<<<<<< Hash values >>>>>>>>>>>>", new_hash.values

          data = TableField.first_or_create(columns: row[0].to_s)
          data.save

          # max_value_size = new_hash.values.map(&:size).max
          # keys_array = new_hash.keys
          # parsed_data = max_value_size.times do |c|
          #   data = BritishDatum.first_or_create(keys_array.map { |k| new_hash[k][c] })
          #   data.save
          # end
          # puts "<<<<<<<<<<<<<<<<<<<<<<<< DATA >>>>>>>>>>>>>>>>>>>>>>>>>>>", parsed_data
        end
      end
    end
end
