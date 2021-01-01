module DataUpdateAnalyze
class BritishDatatable < ApplicationDatatable
  
    private
    binding.pry
    def data
      british_datum.map do |d|
        [].tap do |column|
          column << d.value
        end
      end
    end
  
    def count
      BritishDatum.count
    end
  
    def total_entries
      british_datum.total_count
      # will_paginate
      # users.total_entries
    end
    binding.pry
    def british_datum
      @british_data ||= fetch_british_data
    end
  
    def fetch_british_data
      search_string = []
      columns.each do |term|
        search_string << "#{term} like :search"
      end
      binding.pry
      # will_paginate
      # users = User.page(page).per_page(per_page)
      british_data = BritishDatum.joins("INNER JOIN data_update_analyze_table_fields ON data_update_analyze_british_data.field_id = data_update_analyze_table_fields.id").order("#{sort_column} #{sort_direction}")
      british_data = british_data.page(page).per(per_page)
      british_data = british_data.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
      binding.pry
    end
  
    def columns
      %w(value)
    end
  end
end
