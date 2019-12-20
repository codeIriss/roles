Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
}
  root to: "home#index"

  namespace :users do
    get 'dashboard' => 'application#application', as: :dashboard
  end
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
