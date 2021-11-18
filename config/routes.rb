Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "departments#index"
  # # (C)
  # get "/departments/new", to: "departments#new"
  # post "/departments", to: "departments#create"

  # # (R)
  # get "/departments/", to: "departments#index"
  # get "/departments/:id", to: "departments#show"

  # # (U)
  # get "departments/:id/edit", to: "departments#edit"
  # put "departments/:id", to: "departments#update"
  # patch "departments/:id", to: "departments#update"
  # # (D)
  # delete "departments/:id", to: "departments#destroy"

  resources :departments do
    resources :items
  end

  resources :items do
    resources :comments
  end
  
end
