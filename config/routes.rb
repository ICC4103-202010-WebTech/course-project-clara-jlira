Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index] do
    resources :events , only: [:show, :index],shallow: true do
      resources :event_file,only: [:show, :index]
    end
    resources :memberships, only: [:show, :index], shallow: true
    resources :notifications, only: [:show, :index], shallow: true
    resources :messages, only: [:show, :index], shallow: true
    resources :replies, only: [:show, :index], shallow: true
    resources :comments, only: [:show, :index], shallow: true
    resources :reports, only: [:show, :index], shallow: true
    resources :invitations , only: [:show, :index],shallow: true do
      resources :votes,only: [:show, :index]
    end
  end
  resources :organizations, only: [:show, :index], shallow: true do
    resources :memberships, only: [:show, :index], shallow: true
    resources :organization_files, only: [:show, :index], shallow: true
  end
  resources :comments, only: [:show, :index], shallow: true do
    resources :replies, only: [:show, :index], shallow: true
  end
  resources :events, only: [:show, :index], shallow: true do
    resources :comments , only: [:show, :index],shallow: true do
      resources :replies,only: [:show, :index]
    end
    resources :reports, only: [:show, :index], shallow: true
    resources :invitations , only: [:show, :index],shallow: true do
      resources :votes,only: [:show, :index]
    end
    resources :event_dates , only: [:show, :index],shallow: true
  end
end
