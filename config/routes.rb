Rails.application.routes.draw do
  resources :posts do
    resource :comments
  end

  root "posts#index"
end
