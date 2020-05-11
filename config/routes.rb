Rails.application.routes.draw do
  #namespace :api do
  # namespace :v1 do

  # end
  #end
  #get 'pages/home'
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index] do
    resources :events , only: [:show, :index],shallow: true do
      resources :event_file,only: [:show, :index]
    end
  end
  resources :events, only: [:show, :index]
  resources :organizations, only: [:show, :index], shallow: true do
    resources :organization_files, only: [:show, :index]
    resources :memberships, only: [:show, :index]
  end

end
