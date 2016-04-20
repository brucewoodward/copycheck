Rails.application.routes.draw do
  root 'projects#new'
  resources :projects do
    resources :copies
  end
  get '/:id', controller: 'projects', action: 'show', constraints: { id: /[[:print:]]{31}/ }
  post '/:id', controller: 'projects', action: 'create', constraints: { id: /[[:print:]]{31}/ }
  get '*unmatched_route', controller: 'application', action: 'no_such_url'
end
