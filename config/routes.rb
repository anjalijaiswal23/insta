Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :posts do
    resources :comments, only: [:create, :destroy ]

    member do
      post 'like', to: 'posts#like', as: :like
      delete 'unlike', to: 'posts#unlike', as: :unlike
    end
  end


end
