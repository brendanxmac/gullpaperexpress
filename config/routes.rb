Rails.application.routes.draw do
  resources :orders do
    member do
      get :out_for_delivery, to: 'orders#out_for_delivery'
      get :delivered, to: 'orders#delivered'
    end
  end
  devise_for :users, :controllers => {:registrations => "user/registrations"}
  root 'welcome#index'

  get 'terms', to: 'welcome#terms'
  get 'about', to: 'welcome#about'
  get 'contact', to: 'welcome#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
