CvUploader::Application.routes.draw do
  get "users/home"
  root "users#home"
  resources :users
  
end
