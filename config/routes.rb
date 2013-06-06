CookbookApp::Application.routes.draw do
  
  resources :recipes
  resources :cookbooks

  root :to => 'home#index'


end
