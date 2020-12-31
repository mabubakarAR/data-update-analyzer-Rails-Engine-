require_dependency "data_update_analyze/application_controller"

module DataUpdateAnalyze
  class BritishDatumController < ApplicationController

    def index
      @british_data = BritishDatum.all
    end

    def import
      BritishDatum.parse_data(params[:file])
      redirect_to british_datum_index_path, notice: "Data Imported!"
    end

  end
end
