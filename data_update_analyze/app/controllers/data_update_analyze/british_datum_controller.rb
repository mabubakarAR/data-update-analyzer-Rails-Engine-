require_dependency "data_update_analyze/application_controller"

module DataUpdateAnalyze
  class BritishDatumController < ApplicationController
    def index
      @british_data = BritishDatum.all
    end

    def show
    end
  end
end
