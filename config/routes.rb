Rails.application.routes.draw do

  get "/", to: "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
  end
  resources :doses, only: [:destroy]
end
