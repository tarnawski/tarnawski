Rails.application.routes.draw do
  get 'users/index'

  devise_for :models
  devise_for :user
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'

end
