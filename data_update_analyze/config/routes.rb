DataUpdateAnalyze::Engine.routes.draw do
  resources :british_datum
  root action: :index, controller: :british_datum
end
