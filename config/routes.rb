Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  get "cpf/verificar", to: "cpf_verifiers#new"
  post "cpf/verificar", to: "cpf_verifiers#verify"
end
