Rails.application.routes.draw do
  resources :articles

  get 'about'     => 'static_pages#about'
  get 'contact'   => 'static_pages#contact'
  get 'portfolio' => 'static_pages#portfolio'

  post 'static_pages/thank_you'

  root 'articles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
