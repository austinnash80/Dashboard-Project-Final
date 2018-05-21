Rails.application.routes.draw do
  resources :photos do
    get "serve", :on => :member
  end
  resources :mail_items

  #for s3 download of pdf,excel - https://stackoverflow.com/questions/12939903/allowing-user-to-download-file-from-s3-storage
  # resources :mail_items do
  # member { get :download }
  # end

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
