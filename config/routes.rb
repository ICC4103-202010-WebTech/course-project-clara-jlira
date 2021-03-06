Rails.application.routes.draw do

  devise_for :users
  get 'search/search'
  get 'use_policy/use_policy'

  get 'admin/users_admin'
  post 'admin/users_admin'
  patch 'admin/users_admin'
  delete 'admin/users_admin'

  get 'admin/events_admin'
  post 'admin/events_admin'
  patch 'admin/events_admin'
  delete 'admin/events_admin'

  get 'admin/organizations_admin'
  post 'admin/organizations_admin'
  patch 'admin/organizations_admin'
  delete 'admin/organizations_admin'

  get 'admin/events_comments_admin'
  post 'admin/events_comments_admin'
  patch 'admin/events_comments_admin'
  delete 'admin/events_comments_admin'

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
  resources :events, shallow: true do
    resources :event_files
    resources :comments
    resources :event_dates
    resources :invitations
    resources :reports
  end
  resources :users, shallow: true do
    resources :memberships
    resources :events
    resources :message_boxes
    resources :notifications
    resources :invitations
    resources :replies
    resources :comments
    resources :reports
    resources :votes
  end
  resources :organizations, shallow: true do
    resources :organization_files
    resources :memberships
  end
  resources :comments, shallow: true do
    resources :replies
  end
  resources :event_dates, shallow: true do
    resources :votes
  end
  resources :invitations
  resources :replies


end
