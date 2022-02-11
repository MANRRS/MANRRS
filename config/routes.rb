Rails.application.routes.draw do
  resources :students do
    collection { post :import }
  end
  root to: 'students#index'
  get  "posttext",to:"posttext#posttext"
  get  "/",to:"posttext#posttext"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
