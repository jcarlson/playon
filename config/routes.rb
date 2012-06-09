Playon::Application.routes.draw do
  
  root :to => 'events#index'
  
  resources :events, :publishers
  
end
