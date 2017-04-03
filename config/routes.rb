Rails.application.routes.draw do
  get 'crypto/encrypt'

  get 'crypto/decrypt'

  root to: 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
