Rails.application.routes.draw do
  mount DataUpdateAnalyze::Engine => "/data_update_analyze"
end
