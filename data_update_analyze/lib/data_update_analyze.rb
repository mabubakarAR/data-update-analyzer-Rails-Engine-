require "data_update_analyze/engine"

module DataUpdateAnalyze
  class DataParser
    require 'csv'

      def self.parse_data
        file_path = "/mnt/d/2016_census_profiles_by_health_region.csv"
        # option = { :headers => new_hash.keys, :write_headers => true, :force_quotes => true, 
        #   :converters => CSV::Converters[:nil_to_string] = lambda do |field| 
        #     field.to_s
        #   end
        # }

        CSV.foreach(file_path, :headers => true) do |row|
          new_hash = {}
          row.to_hash.each_pair do |k,v|
           new_hash.merge!({k.downcase => v})
          end

        row.first << new_hash.keys
        puts "<<<<<<<<<< kEYS COUNT >>>>>>", row.first
        puts "<<<<<<<<<< HASH kEYS & VALUES >>>>>>", new_hash
        # TableField.create!(new_hash.keys)
        # BritishDatum.first_or_initialize(new_hash)
        end

      #  data = CSV.parse(File.read("/mnt/d/2016_census_profiles_by_health_region.csv"), headers: true)
      end

  end
end
