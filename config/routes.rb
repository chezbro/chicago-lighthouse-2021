Rails.application.routes.draw do
  resources :landings

  devise_for :users

  get 'video', to: 'landings#video'
  get 'new_user', to: 'landings#new_user'
  

  devise_scope :user do
    unauthenticated do
      # root to: 'devise/sessions#new', as: :unauthenticated_root
      root to: 'landings#index', as: :unauthenticated_root
    end

    authenticated :user do
      root to: 'landings#index', as: :authenticated_root
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
