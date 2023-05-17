Rails.application.routes.draw do
  devise_for :customers
  devise_for :admins, controllers:{
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }
  
  
  root to: 'public/homes#top'
  #get '/about' => "public/homes#about"
  
  namespace :admin do
    get 'items/index'
    get 'items/new'
    get 'items/show'
    get 'items/edit'
  end
  
  scope module: :public do
    get '/about' => "homes#about"
  #namespace :public do
    get 'items/index'
    get 'items/show'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
