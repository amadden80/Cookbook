CookbookApp::Application.routes.draw do
  

  resources :cookbooks

  root :to => 'home#index'


end
