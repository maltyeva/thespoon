Rails.application.routes.draw do
  get '/about', to: "pages#about"
  #VERB '/path', to: "controller#action"
  get '/contact', to: "pages#contact", as: :contact_us

  # get '/', to: "pages#home"
  root to: "pages#home"

  get '/restaurants/:id', to: "restaurants#show", as: :restaurant

  get '/restaurants', to: "restaurants#index"
  post '/restaurants', to: "restaurants#create"
end
