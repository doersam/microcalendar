Rails.application.routes.draw do
  get 'calendar/index'
  get 'home/index'
  root 'home#index'
  # Add route for OmniAuth callback
  match '/auth/:provider/callback', to: 'auth#callback', via: [:get, :post]

  # Add future routes here
  get 'calendar', to: 'calendar#index'
  get 'auth/signout'

end
