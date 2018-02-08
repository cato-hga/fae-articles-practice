Rails.application.routes.draw do
  root "static_pages#welcome"

  get 'contact-me', to: 'contact_forms#new', as: 'new_contact_form'
  post 'contact-me', to: 'contact_forms#create', as: 'create_contact_form'

  resources :articles
  resources :static_pages

  namespace :admin do
    resources :articles
    resources :article_categories
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
