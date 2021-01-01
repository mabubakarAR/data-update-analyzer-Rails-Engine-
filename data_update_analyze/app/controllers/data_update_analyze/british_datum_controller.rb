require_dependency "data_update_analyze/application_controller"

module DataUpdateAnalyze
  class BritishDatumController < ApplicationController

    def index
      @fields = TableField.all
      @british_data = BritishDatum.joins("INNER JOIN data_update_analyze_table_fields ON data_update_analyze_british_data.field_id = data_update_analyze_table_fields.id").group(:field_id)
      respond_to do |format|
        format.html
        format.json { render json: BritishDatatable.new(view_context) }
      end
      # render json: @british_data
    end

    def import
      BritishDatum.parse_data(params[:file])
      redirect_to british_datum_index_path, notice: "Data Imported!"
    end

  end
end
