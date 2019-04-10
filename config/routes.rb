Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
  get  'pages/home'
  get  'pages/about'
  get  'pages/contact'
  resources:notes

  devise_for :users, controllers: {
      sessions: 'users/sessions'
    }
end
