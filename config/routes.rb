Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index], shallow: true do
    resources :events , only: [:show, :index],shallow: true do
      resources :event_file,only: [:show, :index]
    end
  end
  resource :organization, only: [:show, :index], shallow: true do
    resources :memberships, only: [:show, :index], shallow: true
  end
end
