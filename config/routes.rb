Rails.application.routes.draw do

  get 'admin/events_admin'
  get 'admin/organizations_admin'
  get 'admin/events_comments_admin'

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
    resources :memberships
    resources :events
    resources :messages
    resources :notifications
    resources :invitations
    resources :replies
    resources :comments
    resources :reports
    resources :votes
  end
  resources :events, shallow: true do
    resources :event_files
    resources :comments
    resources :event_dates
    resources :invitations
    resources :reports
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

end
