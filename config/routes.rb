Rails.application.routes.draw do
  root "micro_blogs#all_blurbs"

  get "/users/:id/micro_blogs", to: "micro_blogs#index"
end
