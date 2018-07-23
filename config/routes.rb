Rails.application.routes.draw do
  root 'visit_companies#index'
  resources :visit_companies
  resources :lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
