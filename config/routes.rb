Rails.application.routes.draw do
  root 'projects#new'
  resources :projects do
    resources :copies
  end
  get '/:id', to: 'projects', action: 'show', constraints: { id: /[[:print:]]{31}/ }
  post '/:id', to: 'projects', action: 'create', constraints: { id: /[[:print:]]{31}/ }
end
