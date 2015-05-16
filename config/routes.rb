Rails.application.routes.draw do
  root "application#index"

  devise_for :users, path: "", path_names: { sign_in: "admin/signin", sign_out: "admin/signout" }

  namespace :admin do
    resource :dashboard, only: [:show]
  end
end
