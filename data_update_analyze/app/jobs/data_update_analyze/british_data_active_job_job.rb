module DataUpdateAnalyze
  class BritishDataActiveJobJob < ApplicationJob
    queue_as :csv_data_queue

    def perform(*args)
      # Do something later
    end
  end
end
