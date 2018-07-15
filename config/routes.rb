Rails.application.routes.draw do
  get 'summoners/index'
  get 'summoners/show'
  devise_for :players
  root to: "home#index"
end
