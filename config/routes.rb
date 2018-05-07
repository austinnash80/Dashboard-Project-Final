Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
  sessions: 'users/sessions'
  }
  resources :updatesheets
  resources :datasheets do
    collection {post :import}
  end
  root :to => "datasheets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
