Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  get "/cpf/verificar", to: "cpf_verifications#new"
  post "/cpf/verificar", to: "cpf_verifications#create"
end
