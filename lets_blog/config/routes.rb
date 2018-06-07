Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :blogs
  root 'blogs#index'
end
