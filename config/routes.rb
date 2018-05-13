Rails.application.routes.draw do
  resources :mail_items
  resources :mail_schedules
  resources :exams do
    collection {post :import}
  end
  resources :notes
  get 'dashboard/home'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
  sessions: 'users/sessions'
  }
  resources :updatesheets
  resources :datasheets do
    collection {post :import}
  end
  root :to => "dashboard#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
