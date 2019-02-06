Rails.application.routes.draw do
  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
  }
  root to: "static_pages#index"

  resources :mypages
  get 'static_pages/index'
end
