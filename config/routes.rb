Rails.application.routes.draw do

  root :to => 'items#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  post "/order" => "items#order", :as => :create_order


end
