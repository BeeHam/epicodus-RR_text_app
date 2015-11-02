Rails.application.routes.draw do

  root "messages#index"

  resources :messages

  resources :contacts

end
