DataUpdateAnalyze::Engine.routes.draw do
  resources :british_datum do
    collection {
      post :import
    }
  end
  root to: "british_datum#index"
end
