Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "pages#home"
  get 'about', to: 'pages#about'
  # we have the show action and index action. Rails expects these to be in the articles controller
  resources :articles, only: [:show, :index, :new, :create]

end
