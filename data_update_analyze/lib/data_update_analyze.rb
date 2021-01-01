require "data_update_analyze/engine"

module DataUpdateAnalyze
  class Engine < ::Rails::Engine
    isolate_namespace DataUpdateAnalyze
  end
end