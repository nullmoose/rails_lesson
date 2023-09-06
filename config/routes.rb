Rails.application.routes.draw do
  root "micro_blogs#index"

  resources :micro_blogs
end
