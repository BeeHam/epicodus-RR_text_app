Rails.application.routes.draw do

  root "contacts#index"


  resources :contacts do
    resources :messages, only: [:new, :create]
  end

end
