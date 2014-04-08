CvUploader::Application.routes.draw do
  devise_for :admins, :path => '', :skip => [:registrations] , :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  root "users#home"
  match '', to: 'user#home', via: 'get'
  resources :users
  resources :admins
  match 'mark_user', to: 'users#mark', via: 'post'
  get "correct/:id", to: "admins#show_cv", as: "correct"

  match 'send_mail', to: "admins#send_mail", via: "get"


  
end
