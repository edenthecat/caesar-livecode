Rails.application.routes.draw do
  get 'encrypt', to: 'crypto#encrypt'
  get 'decrypt', to: 'crypto#decrypt'

  root to: 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
