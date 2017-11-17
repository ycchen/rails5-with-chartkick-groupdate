Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  namespace :charts do
    # namespace :users do
      get "new-users"
      get "by-month-users"
    # end
  end
  root to: 'users#index'
end
