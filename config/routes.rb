CvUploader::Application.routes.draw do
  devise_for :admins, :skip => [:registrations]
  root "users#home"
  match '', to: 'user#home', via: 'get'
  resources :users
  

  
end
