CvUploader::Application.routes.draw do
  devise_for :admins, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  root "users#home"
  match '', to: 'user#home', via: 'get'
  resources :users
  resources :admins


  
end
