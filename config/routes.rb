Rails.application.routes.draw do
  resources :attendances
  devise_for :employees
  devise_for :companies, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  root to: "welcome#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
