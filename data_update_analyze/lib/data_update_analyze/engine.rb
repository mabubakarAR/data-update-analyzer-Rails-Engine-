require 'data_update_analyze/engine'

module DataUpdateAnalyze 
  puts "In rails engine !!" 
  class Engine < ::Rails::Engine
    isolate_namespace DataUpdateAnalyze
  end
end
