Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'comments/index'
      get 'comments/show'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'events/index'
      get 'events/show'
    end
  end
  namespace :api, defaults: {format: 'json'} do
   namespace :v1 do
     resources :events
     resources :comments
   end
  end
  #get 'pages/home'
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, shallow: true do
    resources :memberships, only: [:show, :index]
    resources :events, only: [:show, :index]
    resources :messages, only: [:show, :index]
    resources :notifications, only: [:show, :index]
    resources :invitations, only: [:show, :index]
    resources :replies, only: [:show, :index]
    resources :comments, only: [:show, :index]
    resources :reports, only: [:show, :index]
    resources :votes, only: [:show, :index]
  end
  resources :events, shallow: true do
    resources :event_files,only: [:show, :index]
    resources :comments,only: [:show, :index]
    resources :event_dates,only: [:show, :index]
    resources :invitations,only: [:show, :index]
    resources :reports, only: [:show, :index]
  end
  resources :organizations, shallow: true do
    resources :organization_files, only: [:show, :index]
    resources :memberships, only: [:show, :index]
  end
  resources :comments, shallow: true do
    resources :replies, only: [:show, :index]
  end
  resources :event_dates, shallow: true do
    resources :votes, only: [:show, :index]
  end

end
