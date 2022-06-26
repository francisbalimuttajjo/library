Rails.application.routes.draw do
    namespace :api do
    namespace :v1 do
      resources :books, only:[:index,:show,:create,:destroy,:update]
      resources :users, only:[] 
      post '/users/register' ,to:'users#register'
      post '/users/login' ,to:'users#login'
      

    end
  end
end