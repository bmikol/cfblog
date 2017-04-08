Rails.application.routes.draw do
  devise_for :users, path: '',
                     path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :articles do
    resources :comments
  end
  resources :users

  get 'about'     => 'static_pages#about'
  get 'contact'   => 'static_pages#contact'
  get 'portfolio' => 'static_pages#portfolio'

  post 'static_pages/thank_you'

  root 'articles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
