Rails.application.routes.draw do
  resources :blogs
  root 'blogs#index'
  # get 'blogs/new'
  # get 'blogs/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
