Groupster::Application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users, :controllers => { :registrations => "registrations" }
  resources :user_steps

  root :to => 'home#index'

end
