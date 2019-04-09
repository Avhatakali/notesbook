Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# shumisanu hei uswika nichi fhedza nga devise, nido kona ushumisa ire hafho fhasi

  get "/pages/*id" => 'pages#home', as: :page, format: false
    root to: 'pages#home', id: 'home'
end
