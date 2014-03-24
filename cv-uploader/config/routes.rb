CvUploader::Application.routes.draw do
  root "users#home"
  match '', to: 'user#home', via: 'get'
  resources :users
  
end
