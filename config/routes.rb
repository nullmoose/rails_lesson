Rails.application.routes.draw do
  devise_for :users
  root "micro_blogs#index"

  resources :micro_blogs
end
