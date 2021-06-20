Rails.application.routes.draw do
  devise_for :users
  get "counts/home" => "counts#home"
  get "counts/document" => "counts#document"
  get "counts/present" => "counts#present"
  resources :counts, except: [:show]
  root 'counts#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
