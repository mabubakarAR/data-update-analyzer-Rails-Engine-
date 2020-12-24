DataUpdateAnalyze::Engine.routes.draw do

  get 'british_datum/index'
  get 'british_datum/show'
    resources :british_datum
end
