Rails.application.routes.draw do
  root 'projects#new'
  resources :projects do
    resources :copies
  end
end
