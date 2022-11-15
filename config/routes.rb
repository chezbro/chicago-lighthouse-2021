Rails.application.routes.draw do
  resources :landings

  devise_for :users do
    get '/users/sign_in' => 'devise/sessions#create'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'video', :to => 'landings#video'
  get 'new_user', :to => 'landings#new_user'


  devise_scope :user do
    unauthenticated do
      root :to => 'devise/sessions#new'
      # root :to => 'landings#splash'
    end
  end

authenticated do
  root :to => 'landings#video'
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
